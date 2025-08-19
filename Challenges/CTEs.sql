WITH east_regions_id AS (
    SELECT id
    FROM data_sci.company_regions
    WHERE region_name LIKE '%east%'
)
SELECT 
    SUM(e.salary),
    ROUND(AVG(e.salary), 2)
FROM 
  east_regions_id
JOIN 
  data_sci.employees e 
ON 
  e.region_id = east_regions_id.id