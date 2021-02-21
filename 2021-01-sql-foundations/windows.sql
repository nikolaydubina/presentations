SELECT
      name
      , AVG(salary) OVER (PARTITIONED BY office) AS avg_salary_in_office
      , LAG(name, 1) OVER (ORDERED BY salary DESC) as next_name_higher_salary
      , RANK() OVER (
        PARTITIONED BY office 
        ORDERED BY salary DESC
      ) as order_of_highest_salaries_in_office
FROM employees