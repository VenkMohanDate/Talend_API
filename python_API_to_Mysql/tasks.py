import requests
import mysql.connector

def fetch_and_store_all_tasks(api_url, task_details_url):
    # Define headers
    headers = {
        "Authorization": "Bearer uwrfDd1ZSqmY1l_t_iVXfGyZOxna3uyVyPjY3ix4yqpxis7zPkSAbRDDMm_tF72W",
        "Content-Type": "application/json"
    }

    # Step 1: Fetch all tasks
    response = requests.get(api_url, headers=headers)

    # Check if the response is successful
    if response.status_code == 200:
        tasks = response.json().get("items", [])

        # Connect to MySQL database
        db_connection = mysql.connector.connect(
            host="127.0.0.1",  # Update with your database host
            user="root",  # Update with your database user
            password="Venku@007",  # Update with your database password
            database="connection_job_details"  # Update with your database name
        )
        cursor = db_connection.cursor()

        # Create the table if not exists
        cursor.execute("""
        CREATE TABLE IF NOT EXISTS tasks (
            task_id VARCHAR(255) PRIMARY KEY,
            name VARCHAR(255),
            workspace_id VARCHAR(255),
            version VARCHAR(50),
            artifact_id VARCHAR(255),
            connection_id VARCHAR(255)
        )
        """)

        # Step 2: Loop through each task and fetch details using `executable`
        for task in tasks:
            task_id = task.get("executable")  # Use the executable field as the task ID
            if not task_id:
                continue

            # Fetch detailed task information
            task_detail_response = requests.get(f"{task_details_url}/{task_id}", headers=headers)

            if task_detail_response.status_code != 200:
                print(f"Failed to fetch task details for Task ID: {task_id}")
                continue

            task_details = task_detail_response.json()

            # Extract task details
            task_name = task_details.get("name")
            workspace = task_details.get("workspace", {})
            workspace_id = workspace.get("id")
            version = task_details.get("version")
            artifact = task_details.get("artifact", {})
            artifact_id = artifact.get("id")
            connections = task_details.get("connections", {})
            connection_id = next(iter(connections.values()), None)  # Get the first connection ID

            # Insert or update the task
            cursor.execute("""
            INSERT INTO tasks (
                task_id, name, workspace_id, version, artifact_id, connection_id
            ) VALUES (%s, %s, %s, %s, %s, %s)
            ON DUPLICATE KEY UPDATE
                name = VALUES(name),
                workspace_id = VALUES(workspace_id),
                version = VALUES(version),
                artifact_id = VALUES(artifact_id),
                connection_id = VALUES(connection_id)
            """, (
                task_id, task_name, workspace_id, version, artifact_id, connection_id
            ))

        # Commit the transaction and close the connection
        db_connection.commit()
        print(f"All tasks processed successfully.")
        cursor.close()
        db_connection.close()

    else:
        print(f"Failed to fetch task list: {response.status_code}, {response.text}")


# Replace with your API URLs
task_list_url = "https://api.eu.cloud.talend.com/tmc/v2.6/executables/tasks"
task_details_base_url = "https://api.eu.cloud.talend.com/tmc/v2.6/executables/tasks"
fetch_and_store_all_tasks(task_list_url, task_details_base_url)
