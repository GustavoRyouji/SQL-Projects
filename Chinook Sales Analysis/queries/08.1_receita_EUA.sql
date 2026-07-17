--Pergunta 8.1: receita gerada pelos Estados Unidos
SELECT customers.Country AS country,
SUM(invoice_items.UnitPrice * invoice_items.Quantity) AS total
FROM customers
JOIN invoices ON customers.CustomerId = invoices.CustomerId
JOIN invoice_items ON invoices.InvoiceId = invoice_items.InvoiceId
WHERE customers.Country = 'USA'
GROUP BY country
ORDER BY total DESC;
