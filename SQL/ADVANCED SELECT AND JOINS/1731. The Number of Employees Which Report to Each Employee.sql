
SELECT
  M.employee_id,
  M.name,
  COUNT(E.employee_id) AS reports_count,
  ROUND(AVG(E.age)) AS average_age
FROM Employees AS M
INNER JOIN Employees AS E
  ON (E.reports_to = M.employee_id)
GROUP BY 1
ORDER BY 1;
