SELECT M.musica AS 'cancao',
COUNT(DISTINCT H.usuario_id) AS 'reproducoes'
FROM SpotifyClone.musicas AS M
INNER JOIN SpotifyClone.historicoReproducoes AS H
ON M.musica_id = H.musica_id
GROUP BY M.musica_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;