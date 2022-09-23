SELECT
	u.nome AS usuario,
  COUNT(r.data_reproducao) AS qt_de_musicas_ouvidas,
  ROUND(SUM(c.duracao_segundos/ 60), 2) AS total_minutos
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.reproducoes AS r ON r.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancoes AS c ON c.cancao_id = r.cancao_id
GROUP BY usuario ORDER BY usuario;