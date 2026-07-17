--Pergunta 6.2: Gênero com mais artistas
SELECT genres.GenreId, genres.Name,
COUNT(DISTINCT artists.ArtistId) AS total_artistas
FROM genres
JOIN tracks ON genres.GenreId = tracks.GenreId
JOIN albums ON tracks.AlbumId = albums.AlbumId
JOIN artists ON albums.ArtistId = artists.ArtistId
GROUP BY genres.GenreId, genres.Name
ORDER BY total_artistas DESC
LIMIT 10;
