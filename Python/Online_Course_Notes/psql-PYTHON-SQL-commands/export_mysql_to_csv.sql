import os
import pandas as pd
import mysql.connector

def export_mysql_to_csv(hostname, username, password, database):
    try:
        # Connect to MySQL database
        connection = mysql.connector.connect(
            host=hostname,
            user=username,
            password=password,
            database=database
        )

        # Create a cursor object to execute SQL queries
        cursor = connection.cursor()

        # Get the list of all table names in the database
        cursor.execute("SHOW TABLES")
        tables = [table[0] for table in cursor.fetchall()]

        # Create a directory with the database name
        os.makedirs(database, exist_ok=True)

        for table_name in tables:
            # Fetch data from the table
            query = f"SELECT * FROM {table_name}"
            cursor.execute(query)
            data = cursor.fetchall()

            # Get the column names from the description of the table
            columns = [col[0] for col in cursor.description]

            # Create a DataFrame from the fetched data
            df = pd.DataFrame(data, columns=columns)

            # Save DataFrame to CSV file with the corresponding table name inside the database-named folder
            output_file = os.path.join(database, f"{table_name}.csv")
            df.to_csv(output_file, index=False)

            print(f"Data from '{table_name}' table exported to '{output_file}' successfully.")

    except mysql.connector.Error as err:
        print(f"Error: {err}")
    finally:
        # Close the cursor and connection
        if cursor:
            cursor.close()
        if connection and connection.is_connected():
            connection.close()

# Replace these variables with your database connection details
hostname = "localhost"
username = "root"
password = "password"
database = "data base name in mysql"

# Call the function to export all tables from the MySQL database to CSV files inside the database-named folder
export_mysql_to_csv(hostname, username, password, database)
