SELECT ProductName AS 'Produto',
MIN(od.quantity) AS 'Mínima',
MAX(od.quantity) AS 'Máxima',
ROUND(AVG(od.quantity), 2) as 'Média'
FROM w3schools.products as p
INNER JOIN w3schools.order_details AS od
ON od.ProductID = p.ProductID
GROUP BY ProductName
HAVING Média > 20
ORDER BY Média, Produto;
