# Basic ETL with Python

### Step 1 Databases creation
Create OLTP database with inside folder `1_databases_creation`. Execute oltp schema first and then dim data, followed by location data that is separate due to file size. That last file was created using python script `csv_to_sql_insert_statement.py`.

After that, create the OLAP database with 2 tables only.

Test your tables by making some simple select counts.

### Step 2 
