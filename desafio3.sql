SELECT
 u.nome AS usuario,
 COUNT(m.cancao_id) AS qtde_musicas_ouvidas,
 FORMAT(SUM(m.duracao_segundos)/60, 2) AS total_minutos
FROM SpotifyClone.historico_de_reproducoes AS `h`
	INNER JOIN SpotifyClone.usuario AS `u` ON h.usuario_id = u.usuario_id
	INNER JOIN SpotifyClone.cancoes AS `m` ON h.cancao_id = m.cancao_id
GROUP BY u.nome
ORDER BY u.nome;
