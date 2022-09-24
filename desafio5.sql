SELECT
	c.faixa AS cancao,
	COUNT(r.usuario_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.reproducoes AS r ON r.cancao_id = c.cancao_id
GROUP BY cancao HAVING reproducoes >= 3 ORDER BY cancao;