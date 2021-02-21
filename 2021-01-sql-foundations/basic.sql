SELECT
      name
      , salary
      , home_address
FROM employees
WHERE
      id = 123
      AND NOT is_deleted