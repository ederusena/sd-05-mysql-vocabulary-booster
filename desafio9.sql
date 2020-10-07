SELECT CONCAT(em.FirstName,' ',em.LastName) AS 'Nome completo',
COUNT(od.EmployeeID) AS 'Total de pedidos'
FROM w3schools.orders AS od
INNER JOIN w3schools.employees AS em
ON od.EmployeeID = em.EmployeeID
GROUP BY od.EmployeeID
ORDER BY 2;
