SELECT AR.artista AS 'artista',
AL.album AS 'album'
FROM SpotifyClone.artistas AS AR
INNER JOIN SpotifyClone.albuns AS AL
ON AR.artista_id = AL.artista_id
WHERE artista = 'Walter Phoenix'
ORDER BY AL.album;