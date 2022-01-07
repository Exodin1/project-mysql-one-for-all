SELECT
	usuario_id as quantidade_musicas_no_historico
FROM SpotifyClone.historico_de_reproducoes
WHERE usuario_id = 3
LIMIT 1;
