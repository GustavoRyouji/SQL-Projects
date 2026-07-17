--Pergunta 7: Participação de cada gênero na receita
SELECT genres.GenreId, genres.Name,
ROUND((SUM(invoice_items.UnitPrice * invoice_items.Quantity)/2328.60)*100, 2) AS porcentagem --Levando em conta receita total: 2328,60 (Pergunta 1)
FROM genres
JOIN tracks ON genres.GenreId = tracks.GenreId
JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId
GROUP BY genres.GenreId, genres.Name
ORDER BY porcentagem DESC
LIMIT 10;
