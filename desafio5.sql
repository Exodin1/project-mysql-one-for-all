SELECT nome as cancao,
COUNT(*) as reproducoes
from SpotifyClone.historico_de_reproducoes as histo
INNER JOIN SpotifyClone.cancoes as canc
ON histo.cancao_id = canc.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
