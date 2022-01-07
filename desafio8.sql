SELECT
	art.nome as artista,
    alb.nome as album
FROM SpotifyClone.artistas as art
INNER JOIN SpotifyClone.albums as alb
ON art.artista_id = alb.artista_id
WHERE art.nome = 'Walter Phoenix';
