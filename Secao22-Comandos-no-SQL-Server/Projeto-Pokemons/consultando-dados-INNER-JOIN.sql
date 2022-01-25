

-- INNER JOIN: Retorna os registros que tenham correspondência em ambas as tabelas.

SELECT * FROM POKEMONS INNER JOIN POKEMON_TIPOS
ON IDPOKEMONS = ID_POKEMONS
GO  

/*
IDPOKEMONS  NOME                 ALTURA      PESO        XP_BASE     ID_POKEMONS TIPO
----------- -------------------- ----------- ----------- ----------- ----------- -----------
1           Bulbasaur            7           69          64          1           grass
1           Bulbasaur            7           69          64          1           poison
4           Charmander           6           85          62          4           fire
25          Pikachu              4           60          112         25          electric
146         Moltres              20          600         261         146         fire
146         Moltres              20          600         261         146         fliying

(6 linha(s) afetadas)
*/

