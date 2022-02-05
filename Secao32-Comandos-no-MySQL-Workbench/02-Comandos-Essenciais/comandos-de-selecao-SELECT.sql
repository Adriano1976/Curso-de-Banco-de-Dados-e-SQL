/*
 Os comandos de seleção permitem selecionar os dados das nossas tabelas
*/



-- SELECT *: Seleciona todas as colunas e todas as linhas de uma tabela

SELECT * FROM alugueis;

SELECT * FROM atores;

SELECT * FROM atuacoes;

SELECT * FROM clientes;

SELECT * FROM filmes;


-- SELECT (colunas): Seleciona apenas colunas específicas de uma tabela.

SELECT id_cliente, id_filme, data_aluguel 
FROM alugueis;

SELECT id_ator, nome_ator, ano_nascimento, sexo 
FROM atores;

SELECT id_cliente, estado, regiao 
FROM clientes;

SELECT titulo, genero, duracao 
FROM filmes;


-- SELECT AS: Seleciona colunas específicas e dar um nome para essas colunas.

SELECT 
	id_cliente AS "Código", 
	id_filme AS "Código do Filme", 
	data_aluguel AS "Data do Aluguel"
FROM alugueis;


SELECT 
	id_ator AS "Código", 
	nome_ator AS "Nome do Ator", 
	ano_nascimento AS "Ano de Nascimento", 
	sexo AS "Sexo"
FROM atores;


SELECT 
	id_cliente AS "Código", 
	nome_cliente AS "Nome do Cliente",
	data_nascimento AS "Data de Nascimento",
	estado AS "Estado", 
	regiao AS "Região"  
FROM clientes;


SELECT 
	id_filme AS "Código", 
	titulo AS "Título", 
	genero AS "Gênero", 
	duracao AS "Duração"
FROM filmes;


-- SELECT LIMIT: Seleciona apenas as N primeiras linhas de uma determinada tabela.

SELECT * FROM alugueis LIMIT 5;

SELECT * FROM atores LIMIT 10;

SELECT * FROM atuacoes LIMIT 8;

SELECT * FROM clientes LIMIT 4;

SELECT * FROM filmes LIMIT 6;


-- SELECT DISTINCT: Seleciona apenas os valores distintos de uma coluna.

SELECT DISTINCT genero FROM filmes;

SELECT DISTINCT data_aluguel FROM alugueis;

SELECT DISTINCT nascinalidade FROM atores;

SELECT DISTINCT regiao FROM clientes;
 