--Pergunta 5.2: gênero que gerou mais receita
SELECT genres.GenreId, genres.Name,
SUM(invoice_items.Quantity * invoice_items.UnitPrice) AS receita_total
FROM genres
JOIN tracks ON genres.GenreId = tracks.GenreId
JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId
GROUP BY genres.GenreId, genres.Name
ORDER BY receita_total DESC
LIMIT 10;
