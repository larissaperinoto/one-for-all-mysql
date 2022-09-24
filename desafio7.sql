SELECT DISTINCT
	ar.nome AS artista,
  ab.titulo AS album,
  COUNT(se.artista_id) AS seguidores
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS ab ON ab.artista_id = ar.artista_id
INNER JOIN SpotifyClone.seguidores AS se ON se.artista_id = ab.artista_id
GROUP BY artista, album ORDER BY seguidores DESC, artista, album;