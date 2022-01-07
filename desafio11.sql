SELECT 
    c1.nome AS nome_musica,
    REPLACE(
      REPLACE(
        REPLACE(
          REPLACE(
            REPLACE
            (c2.nome,
              'Streets',
               'Code Review'),
                 'Her Own',
                  'Trybe'),
                    'Inner Fire',
                   'Project'),
                 'Silly',
              'Nice'),
            'Circus',
          'Pull Request') AS novo_nome
FROM
      SpotifyClone.cancoes AS c1
        INNER JOIN
       SpotifyClone.cancoes AS c2 ON c1.cancao_id = c2.cancao_id
WHERE
        c1.nome LIKE '%Streets%'
           OR c1.nome LIKE '%Her Own%'
              OR c1.nome LIKE '%Inner Fire%'
            OR c1.nome LIKE '%Silly%'
          OR c1.nome LIKE '%Circus'
ORDER BY c1.nome;
