/*
 Os comandos de ordenação permitem a ordenação dos dados da nossa tabela, a partir de uma
 coluna. Com ele, podemos ordenar por ordem crescente, ordem alfabética, e assim vai.
*/


-- ORDER BY (DESC): Permite ordenar (classificar) uma tabela a partir de uma determinada
-- coluna em orderm decrescente.

SELECT * FROM alugueis 
ORDER BY data_aluguel DESC;

SELECT * FROM atores 
ORDER BY nome_ator DESC;

SELECT * FROM clientes 
ORDER BY regiao DESC;

SELECT * FROM filmes 
ORDER BY genero DESC;


-- ORDER BY (ASC): Permite ordenar (classificar) uma tabela a partir de uma determinada
-- coluna em orderm crescente.

SELECT * FROM alugueis 
ORDER BY data_aluguel ASC;

SELECT * FROM atores 
ORDER BY nome_ator ASC;

SELECT * FROM clientes 
ORDER BY regiao ASC;

SELECT * FROM filmes 
ORDER BY genero ASC;
