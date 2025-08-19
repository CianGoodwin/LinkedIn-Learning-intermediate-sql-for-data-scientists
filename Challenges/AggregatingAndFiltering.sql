SELECT cd.department_name,
  COUNT(e.*) AS "Count",
  SUM(e.salary) AS "Total Salary"
FROM data_sci.employees e
  JOIN data_sci.company_departments cd ON e.department_id = cd.id
GROUP BY 1
HAVING SUM(e.salary) > 5000000
ORDER BY SUM(e.salary) DESC