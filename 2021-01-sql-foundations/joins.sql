SELECT
      e.name
      , e.salary as employee_salary
      , COALESCE(d.name, "not_found") as department_name
FROM employee as e
LEFT JOIN department as d
ON
      e.department_id = d.id