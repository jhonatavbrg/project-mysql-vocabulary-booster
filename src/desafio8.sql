SELECT c.contactName AS 'Nome de contato',
s.shipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o
ON c.CustomerID = o.CustomerID
INNER JOIN w3schools.shippers AS s
ON s.ShipperID = o.ShipperID AND ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;