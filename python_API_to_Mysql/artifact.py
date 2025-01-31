import requests
import mysql.connector
import json  # For JSON handling


def fetch_and_store_artifacts(api_url):
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

        # Ensure the response contains an 'items' list
        items = data.get("items", [])

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
        CREATE TABLE IF NOT EXISTS artifacts (
            artifact_id VARCHAR(255) PRIMARY KEY,
            name VARCHAR(255) NOT NULL,
            type VARCHAR(255),
            versions JSON
        )
        """)

        # Loop through each artifact item
        for artifact in items:
            artifact_id = artifact.get("id")
            artifact_name = artifact.get("name")
            artifact_type = artifact.get("type")
            versions = json.dumps(artifact.get("versions", []))  # Convert versions to JSON format

            # Check if the artifact already exists
            cursor.execute("SELECT COUNT(*) FROM artifacts WHERE artifact_id = %s", (artifact_id,))
            exists = cursor.fetchone()[0]

            if exists:
                # Update the existing record
                update_query = """
                UPDATE artifacts
                SET 
                    name = %s,
                    type = %s,
                    versions = %s
                WHERE artifact_id = %s
                """
                update_data = (artifact_name, artifact_type, versions, artifact_id)
                cursor.execute(update_query, update_data)
                print(f"Updated artifact: {artifact_id}")
            else:
                # Insert a new record
                insert_query = """
                INSERT INTO artifacts (
                    artifact_id, name, type, versions
                ) VALUES (%s, %s, %s, %s)
                """
                insert_data = (artifact_id, artifact_name, artifact_type, versions)
                cursor.execute(insert_query, insert_data)
                print(f"Inserted artifact: {artifact_id}")

        # Commit the transaction
        db_connection.commit()

        print(f"Processed {len(items)} artifacts successfully.")

        # Close the cursor and connection
        cursor.close()
        db_connection.close()

    else:
        print(f"Failed to retrieve data: {response.status_code}, {response.text}")


if __name__ == "__main__":
    # Replace with your API URL
    api_url = "https://api.eu.cloud.talend.com/tmc/v2.6/artifacts"
    fetch_and_store_artifacts(api_url)
