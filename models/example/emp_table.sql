{{ 
    config(
        materialized='table',
    ) 
}}

WITH emp_table AS (
    SELECT * FROM (
        VALUES 
            (11, 'snhethi', 'puli', 'Engineering', 75000.00, '2021-01-15'),
            (25, 'dilip', 'bairi', 'data', 90000.00, '2020-03-10'),
            (24, 'dheeraj', 'kusri', 'Sales', 82000.00, '2019-07-22'),
            (47, 'srikar', 'ambti', 'HR', 73000.00, '2022-04-12'),
            (10, 'heamnth', 'vangala', 'Engineering', 78000.00, '2021-09-01'),
            (6, 'Emily', 'Jones', 'Marketing', 71000.00, '2020-11-05'),
            (7, 'David', 'Miller', 'Sales', 74000.00, '2019-02-25'),
            (8, 'Sarah', 'Davis', 'Finance', 76000.00, '2021-12-18'),
            (9, 'James', 'Wilson', 'HR', 65000.00, '2022-06-07'),
            (10, 'Patricia', 'Taylor', 'Engineering', 82000.00, '2020-10-30')
    ) AS t(emp_id, first_name, last_name, department, salary, hire_date)
)

SELECT 
    emp_id,
    first_name,
    last_name,
    department,
    salary,
    hire_date
FROM emp_table
