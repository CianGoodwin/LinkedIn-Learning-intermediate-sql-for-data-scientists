SELECT
  department_id,
  last_name,
  salary,
  SUM(salary) OVER (PARTITION BY department_id)
FROM
  data_sci.employees