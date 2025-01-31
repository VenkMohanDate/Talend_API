import requests
import mysql.connector
import json  # To ensure proper JSON handling

def fetch_and_store_or_update_connections(api_url):
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
        CREATE TABLE IF NOT EXISTS connections (
            connection_id VARCHAR(255) PRIMARY KEY,
            name VARCHAR(255),
            type VARCHAR(255),
            parameters JSON
        )
        """)

        # Loop through each connection item
        for connection in items:
            connection_id = connection.get("id")
            connection_name = connection.get("name")
            connection_type = connection.get("app")  # Assuming `app` maps to `type`
            parameters = connection.get("parameters", [])

            # Validate and convert parameters to JSON
            if parameters:
                try:
                    parameters_json = json.dumps({param["name"]: param["value"] for param in parameters if "name" in param and "value" in param})
                except Exception as e:
                    print(f"Error processing parameters for connection {connection_id}: {e}")
                    parameters_json = "{}"  # Default to empty JSON object
            else:
                parameters_json = "{}"  # Empty JSON object for no parameters

            # Check if the connection already exists
            cursor.execute("SELECT COUNT(*) FROM connections WHERE connection_id = %s", (connection_id,))
            exists = cursor.fetchone()[0]

            if exists:
                # Update the existing record
                update_query = """
                UPDATE connections
                SET 
                    name = %s,
                    type = %s,
                    parameters = %s
                WHERE connection_id = %s
                """
                update_data = (
                    connection_name, connection_type, parameters_json, connection_id
                )
                cursor.execute(update_query, update_data)
                print(f"Updated connection: {connection_id}")
            else:
                # Insert a new record
                insert_query = """
                INSERT INTO connections (
                    connection_id, name, type, parameters
                ) VALUES (%s, %s, %s, %s)
                """
                insert_data = (
                    connection_id, connection_name, connection_type, parameters_json
                )
                cursor.execute(insert_query, insert_data)
                print(f"Inserted connection: {connection_id}")

        # Commit the transaction
        db_connection.commit()

        print(f"Processed {len(items)} connections successfully.")

        # Close the cursor and connection
        cursor.close()
        db_connection.close()

    else:
        print(f"Failed to retrieve data: {response.status_code}, {response.text}")


# Dynamic input for URL
if __name__ == "__main__":
    api_url = input("Enter the Connections API URL: ")
    fetch_and_store_or_update_connections(api_url)
