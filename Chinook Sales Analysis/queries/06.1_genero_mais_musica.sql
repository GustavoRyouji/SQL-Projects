--Pergunta 6.1: Gênero com mais músicas
SELECT genres.GenreId, genres.Name,
COUNT(tracks.TrackId) AS total
FROM genres
JOIN tracks ON genres.GenreId = tracks.GenreId
GROUP BY genres.GenreId, genres.Name
ORDER BY total DESC
LIMIT 10;
