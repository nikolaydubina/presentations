SELECT
      office
      , COUNT(DISTINCT id) as num_workers
      , AVG(salary)
      , MAX(salary)
      , ARRAY_AGG(department) as list_of_departments
FROM employees
WHERE
      NOT id is NULL
      AND NOT user_is_deleted
GROUP BY office
HAVING
      num_workers > 10
ORDERED BY 1 ASC, 2 DESC