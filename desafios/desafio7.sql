SELECT
	art.nome AS artista,
    alb.nome AS album,
    COUNT(seg.usuario_id) AS seguidores    
FROM SpotifyClone.seguindo_artistas as seg
INNER JOIN SpotifyClone.artistas AS art ON seg.seguindo_artista_id = art.artista_id
INNER JOIN SpotifyClone.albums AS alb ON alb.artista_id = art.artista_id
GROUP BY alb.album_id
ORDER BY seguidores DESC, artista ASC, album ASC;
