### Assignment Details
dbt project to create model on the data loaded into snowflake database from source Postgres database using Hevodata pipeline.

### Directory Structure

- #### models/
SQL models and schema files.

- #### tests/
This folder contains tests to verify generated model table.
Tests are added for below categories <br>
    1. tests associated with the appropriate columns of model and their dataypes.  <br>
    2. Data completness by verifying rows. <br>
    3. Verification of expected values for the given datatypes. <br>

- #### data/
Dataset files loaded into source database tables.

### How to setup dbt
To setup dbt , use dbt init passing required values for the account, database, username, password etc.
These values will be stored in profiles.yml file.
You can use `python3 -m pip install  dbt-snowflake`

### How to run and genereate model table
Run command `dbt run`

### How to tests to verify the generated model table
Run command `dbt test`

### Resources:
- #### DBT
Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- #### Snowflake
https://docs.snowflake.com/en/developer-guide/snowflake-cli-v2/connecting/connect

