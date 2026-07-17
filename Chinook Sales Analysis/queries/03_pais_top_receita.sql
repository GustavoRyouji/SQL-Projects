--Pergunta 3: país que mais contribuiu para essa receita
SELECT customers.Country,
SUM(invoices.Total) AS total 
FROM customers
JOIN invoices ON customers.CustomerId = invoices.CustomerId
GROUP BY customers.Country
ORDER BY total DESC
LIMIT 10;
