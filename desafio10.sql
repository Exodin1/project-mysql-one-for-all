SELECT b.nome AS nome, count(*) AS reproducoes 
FROM SpotifyClone.historico_de_reproducoes AS a
INNER JOIN SpotifyClone.cancoes AS b
ON a.cancao_id = b.cancao_id
INNER JOIN SpotifyClone.usuario AS c
ON c.usuario_id = a.usuario_id
INNER JOIN SpotifyClone.plano AS d
ON d.plano_id = c.plano_id
WHERE (d.nome ='pessoal' OR d.nome ='gratuito')
GROUP BY nome
ORDER BY nome;
