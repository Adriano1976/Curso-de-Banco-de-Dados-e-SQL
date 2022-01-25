

-- LEFT JOIN (INCLUSIVO): Retorna todos os registros da tabela à esquerda junto dos
-- registros correspondentes da tabela à direita.

SELECT * FROM POKEMONS LEFT JOIN POKEMON_TIPOS
ON IDPOKEMONS = ID_POKEMONS
GO 

/*
IDPOKEMONS  NOME              ALTURA      PESO        XP_BASE     ID_POKEMONS TIPO
----------- ----------------- ----------- ----------- ----------- ----------- ----------
1           Bulbasaur         7           69          64          1           grass
1           Bulbasaur         7           69          64          1           poison
4           Charmander        6           85          62          4           fire
7           Squirtle          5           90          63          NULL        NULL
25          Pikachu           4           60          112         25          electric
145         Zapdos            16          526         261         NULL        NULL
146         Moltres           20          600         261         146         fire
146         Moltres           20          600         261         146         fliying
150         Mewtwo            20          1220        306         NULL        NULL

(9 linha(s) afetadas)
*/


-- LEFT JOIN (EXCLUSIVO): Retorna somente os registros da tabela à esquerda que NÃO
-- tiverem correspondência com registros da tabela à direita.

SELECT * FROM POKEMONS LEFT JOIN POKEMON_TIPOS
ON IDPOKEMONS = ID_POKEMONS
WHERE ID_POKEMONS IS NULL
GO 

/*
IDPOKEMONS  NOME         ALTURA      PESO        XP_BASE     ID_POKEMONS TIPO
----------- ------------ ----------- ----------- ----------- ----------- ---------
7           Squirtle     5           90          63          NULL        NULL
145         Zapdos       16          526         261         NULL        NULL
150         Mewtwo       20          1220        306         NULL        NULL

(3 linha(s) afetadas)
*/
