SELECT COUNT(H.musica_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historicoReproducoes AS H
INNER JOIN SpotifyClone.musicas AS M
ON H.musica_id = M.musica_id
INNER JOIN SpotifyClone.usuarios AS U
ON U.usuario_id = H.usuario_id
WHERE U.usuario = 'Bill';