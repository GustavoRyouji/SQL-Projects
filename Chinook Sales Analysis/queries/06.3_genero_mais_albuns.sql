--Pergunta 6.3: Gênero com mais álbuns
SELECT genres.GenreId, genres.Name,
COUNT(DISTINCT albums.AlbumId) AS total_albums
FROM genres
JOIN tracks ON genres.GenreId = tracks.GenreId
JOIN albums ON tracks.AlbumId = albums.AlbumId
GROUP BY genres.GenreId, genres.Name
ORDER BY total_albums DESC
LIMIT 10;
