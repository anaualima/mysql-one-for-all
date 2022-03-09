SELECT M.musica AS 'cancoes',
COUNT(DISTINCT H.usuario_id) AS 'reproducoes'
FROM SpotifyClone.musicas AS M
INNER JOIN SpotifyClone.historicoReproducoes AS H
ON M.musica_id = H.musica_id
GROUP BY M.musica_id
ORDER BY reproducoes DESC, cancoes ASC
LIMIT 2;