# Madison Big Data Meetup Aug 2023

# Overview
Repo to accompany my Big Data Meetup talk ([slides]()) on [Materialize](https://materialize.com/).

```shell
MZ_HOST_BD
MZ_USER_BD
MZ_PASS_BD
```

```sql
CREATE DATABASE dbt;
CREATE SCHEMA dbt.example;

CREATE CLUSTER dbt SIZE = '3xsmall';
CREATE CLUSTER dbt_source SIZE = '3xsmall';
```

```shell
poetry install
```

```shell
dbt run
```

```sql
SELECT * FROM dbt.example.num_bids;
```