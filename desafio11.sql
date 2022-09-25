SELECT
    faixa AS nome_musica,
    CASE
        WHEN faixa LIKE '%Bard%' THEN REPLACE(faixa, 'Bard', 'QA')
        WHEN faixa LIKE '%Amar%' THEN REPLACE(faixa, 'Amar', 'Code Review')
        WHEN faixa LIKE '%Pais%' THEN REPLACE(faixa, 'Pais', 'Pull Requests')
        WHEN faixa LIKE '%SOUL%' THEN REPLACE(faixa, 'SOUL', 'CODE')
        WHEN faixa LIKE '%SUPERSTAR%' THEN REPLACE(faixa, 'SUPERSTAR', 'SUPERDEV')
	ELSE faixa
    END AS novo_nome
FROM SpotifyClone.cancoes;