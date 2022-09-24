SELECT DISTINCT
	COUNT(r.cancao_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.reproducoes AS r ON r.usuario_id = u.usuario_id
GROUP BY u.nome HAVING  u.nome = 'Barbara Liskov';