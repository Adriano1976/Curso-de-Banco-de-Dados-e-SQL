
-- INNER JOIN: Retorna os registros que tenham correspondência em ambas as tabelas.

SELECT * FROM alugueis 
INNER JOIN filmes
ON alugueis.id_filme = filmes.id_filme;


SELECT
	alugueis.*,
	filmes.titulo,
	filmes.genero  
FROM alugueis 
INNER JOIN filmes
ON alugueis.id_filme = filmes.id_filme;


SELECT
	alugueis.*,
	filmes.titulo,
	filmes.genero,
	clientes.nome_cliente
FROM alugueis 
INNER JOIN filmes 
ON alugueis.id_filme = filmes.id_filme
INNER JOIN clientes
ON alugueis.id_cliente = clientes.id_cliente;



-- LEFT JOIN (INCLUSIVO): Retorna todos os registros da tabela à esquerda junto dos
-- registros correspondentes da tabela à direita.

SELECT * FROM alugueis 
LEFT JOIN filmes
ON alugueis.id_filme = filmes.id_filme;


SELECT
	alugueis.*,
	filmes.titulo,
	filmes.genero  
FROM alugueis 
LEFT JOIN filmes
ON alugueis.id_filme = filmes.id_filme;


SELECT
	alugueis.*,
	filmes.titulo,
	filmes.genero,
	clientes.nome_cliente
FROM alugueis 
LEFT JOIN filmes 
ON alugueis.id_filme = filmes.id_filme
LEFT JOIN clientes
ON alugueis.id_cliente = clientes.id_cliente;


-- RIGHT JOIN (INCLUSIVO): Retorna todos os registros da tabela à direita junto dos
-- registros correspondentes da tabela à esquerda.

SELECT * FROM alugueis 
RIGHT JOIN filmes
ON alugueis.id_filme = filmes.id_filme;


SELECT
	alugueis.*,
	filmes.titulo,
	filmes.genero  
FROM alugueis 
RIGHT JOIN filmes
ON alugueis.id_filme = filmes.id_filme;


SELECT
	alugueis.*,
	filmes.titulo,
	filmes.genero,
	clientes.nome_cliente
FROM alugueis 
RIGHT JOIN filmes 
ON alugueis.id_filme = filmes.id_filme
RIGHT JOIN clientes
ON alugueis.id_cliente = clientes.id_cliente;


-- FULL JOIN (INCLUSIVO): Retorna todos os registros quando houver correspondência 
-- na tabela à esquerda ou à direita.

SELECT * FROM alugueis 
FULL JOIN filmes
ON alugueis.id_filme = filmes.id_filme;


SELECT
	alugueis.*,
	filmes.titulo,
	filmes.genero  
FROM alugueis 
FULL JOIN filmes
ON alugueis.id_filme = filmes.id_filme;


SELECT
	alugueis.*,
	filmes.titulo,
	filmes.genero,
	clientes.nome_cliente
FROM alugueis 
FULL JOIN filmes 
ON alugueis.id_filme = filmes.id_filme
FULL JOIN clientes
ON alugueis.id_cliente = clientes.id_cliente;
 