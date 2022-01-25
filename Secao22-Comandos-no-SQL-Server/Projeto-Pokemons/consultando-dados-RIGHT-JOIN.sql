

-- RIGHT JOIN (INCLUSIVO): Retorna todos os registros da tabela à direita junto dos
-- registros correspondentes da tabela à esquerda.

SELECT * FROM POKEMONS RIGHT JOIN POKEMON_TIPOS
ON IDPOKEMONS = ID_POKEMONS
GO  

/*
IDPOKEMONS  NOME            ALTURA      PESO        XP_BASE     ID_POKEMONS TIPO
----------- --------------- ----------- ----------- ----------- ----------- ----------
1           Bulbasaur       7           69          64          1           grass
1           Bulbasaur       7           69          64          1           poison
4           Charmander      6           85          62          4           fire
25          Pikachu         4           60          112         25          electric
NULL        NULL            NULL        NULL        NULL        144         ice
NULL        NULL            NULL        NULL        NULL        144         fliying
146         Moltres         20          600         261         146         fire
146         Moltres         20          600         261         146         fliying
NULL        NULL            NULL        NULL        NULL        151         psychic

(9 linha(s) afetadas)
*/



-- RIGHT JOIN (EXCLUSIVO): Retorna somente os registros da tabela à direita que NÃO
-- tiverem correspondência com registros da tabela à esquerda.

SELECT * FROM POKEMONS RIGHT JOIN POKEMON_TIPOS
ON IDPOKEMONS = ID_POKEMONS
WHERE IDPOKEMONS IS NULL
GO

/*
IDPOKEMONS  NOME           ALTURA      PESO        XP_BASE     ID_POKEMONS TIPO
----------- -------------- ----------- ----------- ----------- ----------- ------------
NULL        NULL           NULL        NULL        NULL        144         ice
NULL        NULL           NULL        NULL        NULL        144         fliying
NULL        NULL           NULL        NULL        NULL        151         psychic

(3 linha(s) afetadas)
*/
