--Pergunta 5.1: Gênero mais vendido
SELECT genres.GenreId, genres.Name,
COUNT(invoice_items.TrackId) AS total
FROM genres
JOIN tracks ON genres.GenreId = tracks.GenreId
JOIN invoice_items On tracks.TrackId = invoice_items.TrackId
GROUP BY genres.GenreId, genres.Name
ORDER BY total DESC
LIMIT 10;
