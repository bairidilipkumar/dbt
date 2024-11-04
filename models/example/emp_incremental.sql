{{
    config(
        materialized='incremental',
        unique_key='emp_id'
    )
}}
select * from {{ref('emp_table')}}