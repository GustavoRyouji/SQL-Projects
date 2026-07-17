--Pergunta 4.1: quantos clientes dos EUA
SELECT customers.Country, 
COUNT(*) AS total
FROM customers
GROUP BY customers.Country
ORDER BY total DESC
LIMIT 3;
