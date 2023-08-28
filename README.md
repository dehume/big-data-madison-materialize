# Madison Big Data Meetup Aug 2023

## Overview
Repo to accompany my Big Data Meetup talk ([slides](https://docs.google.com/presentation/d/1JgFO9Z3KgIcYZ5FKq1WlZMRnAi8PhWSl-yKEnToV_K4)) on [Materialize](https://materialize.com/).

## Steps

1. Within Materialize, create the database, schema and clusters needed for the dbt project.
```sql
CREATE DATABASE dbt;
CREATE SCHEMA dbt.example;

CREATE CLUSTER dbt SIZE = '3xsmall';
CREATE CLUSTER dbt_source SIZE = '3xsmall';
```

2. In the terminal set the environment variables using the credentials provided in the [Materialize console](https://console.materialize.com/). 
```shell
MZ_HOST_BD
MZ_USER_BD
MZ_PASS_BD
```

This repo uses [poetry](https://python-poetry.org/) to manage the python dependencies. Poetry will install [dbt](https://www.getdbt.com/).
```shell
poetry install
```

3. In the terminal run the dbt project.
```shell
dbt run
```

4. After the dbt project has run, you can query the models we have created.
```sql
SELECT * FROM dbt.example.num_bids;
```