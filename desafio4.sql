SELECT u.nome AS usuario, IF(MAX(YEAR(h.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.historico_de_reproducoes AS h
INNER JOIN SpotifyClone.usuario AS u ON h.usuario_id = u.usuario_id
GROUP BY u.nome
ORDER BY u.nome;
