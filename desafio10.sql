SELECT
	c.faixa AS nome,
  COUNT(r.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.reproducoes AS r ON r.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuarios AS u ON u.usuario_id = r.usuario_id
WHERE u.plano_id = 1 OR u.plano_id = 4
GROUP BY c.cancao_id ORDER BY nome;