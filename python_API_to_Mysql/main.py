import requests
import mysql.connector


def fetch_and_store_data(api_url):
    # Define headers
    headers = {
        "Authorization": "Bearer uwrfDd1ZSqmY1l_t_iVXfGyZOxna3uyVyPjY3ix4yqpxis7zPkSAbRDDMm_tF72W",
        "Content-Type": "application/json"
    }

    # Make the GET request
    response = requests.get(api_url, headers=headers)

    # Check if the response is successful
    if response.status_code == 200:
        data = response.json()

        # Parse JSON data with default values for missing keys
        task_id = data.get("id")
        task_name = data.get("name")
        task_version = data.get("version")
        artifact_id = data.get("artifact", {}).get("id")
        artifact_name = data.get("artifact", {}).get("name")
        artifact_version = data.get("artifact", {}).get("version")
        workspace_id = data.get("workspace", {}).get("id")
        workspace_name = data.get("workspace", {}).get("name")
        workspace_owner = data.get("workspace", {}).get("owner")
        environment_id = data.get("workspace", {}).get("environment", {}).get("id")
        environment_name = data.get("workspace", {}).get("environment", {}).get("name")
        task_pause = data.get("taskPauseDetails", {}).get("pause", False)
        task_pause_user = data.get("taskPauseDetails", {}).get("user", None)

        # Connect to MySQL database
        db_connection = mysql.connector.connect(
            host="127.0.0.1",  # Update with your database host
            user="root",  # Update with your database user
            password="Venku@007",  # Update with your database password
            database="connection_job_details"  # Update with your database name
        )
        cursor = db_connection.cursor()

        # Define the SQL INSERT query
        insert_query = """
        INSERT INTO tasks (
            task_id, task_name, task_version, 
            artifact_id, artifact_name, artifact_version, 
            workspace_id, workspace_name, workspace_owner, 
            environment_id, environment_name, 
            task_pause, task_pause_user
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        """

        # Prepare the data to insert
        insert_data = (
            task_id, task_name, task_version,
            artifact_id, artifact_name, artifact_version,
            workspace_id, workspace_name, workspace_owner,
            environment_id, environment_name,
            task_pause, task_pause_user
        )

        # Execute the query and commit
        cursor.execute(insert_query, insert_data)
        db_connection.commit()

        print("Data inserted successfully.")

        # Close the cursor and connection
        cursor.close()
        db_connection.close()

    else:
        print(f"Failed to retrieve data: {response.status_code}, {response.text}")


# Dynamic input for URL
if __name__ == "__main__":
    api_url = input("Enter the API URL: ")
    fetch_and_store_data(api_url)
