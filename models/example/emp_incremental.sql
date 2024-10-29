{{
    config(
        materialized='incremental'
        unique_keys='emp_id'
    )
}}
select * from {{ref('emp_table')}}