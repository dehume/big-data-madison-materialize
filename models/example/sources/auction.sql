{{ config(materialized='source') }}

CREATE SOURCE {{ this }}
IN CLUSTER dbt_source
FROM LOAD GENERATOR AUCTION
(TICK INTERVAL '500ms')
FOR ALL TABLES