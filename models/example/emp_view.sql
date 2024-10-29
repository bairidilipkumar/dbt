{{
    config(
        materialized='view'
    )
}}

select * from {{ref ('emp_table') }} where emp_id between 1 and 60