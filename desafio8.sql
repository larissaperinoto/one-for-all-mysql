SELECT
	ar.nome AS artista,
  ab.titulo AS album
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS ab ON ab.artista_id = ar.artista_id
GROUP BY artista, album HAVING artista = 'Elis Regina';