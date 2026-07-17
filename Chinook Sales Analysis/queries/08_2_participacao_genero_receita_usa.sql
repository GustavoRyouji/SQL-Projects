--Pergunta 8.2: porcentagem de cada gênero musical na distribuição de receita gerada pelos Estados Unidos
SELECT genres.Name,
ROUND((SUM(invoice_items.UnitPrice * invoice_items.Quantity)/523.06)*100, 2) AS porcentagem --Levando em conta a receita gerada pelos EUA: 523,06 (Pergunta 7)
FROM genres
JOIN tracks ON genres.GenreId = tracks.GenreId
JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId
JOIN invoices ON invoice_items.InvoiceId = invoices.InvoiceId
WHERE invoices.BillingCountry = 'USA'
GROUP BY genres.Name
ORDER BY porcentagem DESC
LIMIT 10;
