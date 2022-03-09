SELECT 
	AR.artista AS `artista`,
    AL.album AS `album`,
    COUNT(S.usuario_id) AS `seguidores`
FROM SpotifyClone.artistas AS AR
JOIN SpotifyClone.albuns AS AL
ON AR.artista_id = AL.artista_id
JOIN SpotifyClone.seguidoresArtistas AS S
ON AR.artista_id = S.artista_id
GROUP BY S.artista_id, AL.album
ORDER BY `seguidores` DESC, AR.artista, AL.album;