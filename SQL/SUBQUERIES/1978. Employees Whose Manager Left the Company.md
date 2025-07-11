
SELECT e.employee_id FROM Employees AS e 
LEFT JOIN Employees AS Manager 
ON (e.manager_id = Manager.employee_id)
WHERE e.salary< 30000
 AND e.manager_id IS NOT NULL
 AND Manager.employee_id IS NULL
 ORDER BY 1;
