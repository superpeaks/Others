import os
import psycopg2
import pandas as pd
import csv

def import_csv_to_postgres(location, hostname, username, password, database):
    try:
        # Connect to PostgreSQL database
        connection = psycopg2.connect(
            host=hostname,
            user=username,
            password=password,
            database=database
        )

        # Create a cursor object to execute SQL queries
        cursor = connection.cursor()

        # Get the list of all CSV files inside the specified location
        csv_files = [file for file in os.listdir(location) if file.endswith('.csv')]

        for csv_file in csv_files:
            table_name = os.path.splitext(csv_file)[0]

            # Read the CSV file to get the column names and data types
            with open(os.path.join(location, csv_file), 'r', newline='') as file:
                reader = csv.reader(file)
                headers = next(reader)
                data = list(reader)

            df = pd.DataFrame(data, columns=headers)

            # Explicitly set PostgreSQL data types for each column
            # Modify the mapping based on your CSV data and PostgreSQL data types
            postgresql_data_types = {
                'int64': 'INTEGER',
                'float64': 'NUMERIC',
                'bool': 'BOOLEAN',
                'datetime64[ns]': 'TIMESTAMP',
                'object': 'TEXT'
            }

            columns_with_data_types = ', '.join([f'"{header}" {postgresql_data_types[str(df[header].dtype)]}' for header in headers])
            create_table_query = f"CREATE TABLE IF NOT EXISTS {table_name} ({columns_with_data_types})"
            cursor.execute(create_table_query)
            connection.commit()

            # Import the CSV data into the PostgreSQL table
            with open(os.path.join(location, csv_file), 'r', newline='') as file:
                next(file)  # Skip header row
                cursor.copy_from(file, table_name, sep=',')

            connection.commit()
            print(f"Data from '{csv_file}' imported into '{table_name}' table in database '{database}' successfully.")

    except psycopg2.Error as err:
        print(f"Error: {err}")
    finally:
        # Close the cursor and connection
        if cursor:
            cursor.close()
        if connection and connection.closed == 0:
            connection.close()
    print("Data Imported Sucessfully")

# Replace these variables with your PostgreSQL connection details and the specific location of the folder
hostname = "localhost"
username = "postgres"
password = "password"
database = "database name in your psql"
location = "path to\\db folder which contains multiple csv files with name as table name and containes columns"

# Call the function to import the CSV files into the PostgreSQL database and create tables
import_csv_to_postgres(location, hostname, username, password, database)



#Need to be improvement for selecting datatypes
