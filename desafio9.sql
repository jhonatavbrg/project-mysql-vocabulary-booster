SELECT CONCAT(firstName, ' ', lastName) AS 'Nome completo',
COUNT(o.employeeID) AS 'Total de pedidos'
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS o
ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID
ORDER BY `Total de pedidos`;