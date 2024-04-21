# Basic ETL with Python

### Step 1 Databases creation
Using MySQL Workbench, create OLTP database with inside folder `1_databases_creation`. Execute oltp schema first and then dim data, followed by location data that is separate due to file size. That last file was created using python script `csv_to_sql_insert_statement.py`.

After that, create the OLAP database with 2 tables only.

Test your tables by making some simple select counts. Extract the ERD from mysql to validate both schemas. OLTP must be simple star schema and OLAP just one big table with a time dimension.

### Step 2 
