--Pergunta 4.2: gasto médio por cliente
SELECT customers.Country, 
AVG(invoices.Total) AS total
FROM customers
JOIN invoices ON customers.CustomerId = invoices.CustomerId
GROUP BY customers.Country
ORDER BY total DESC
LIMIT 10;
