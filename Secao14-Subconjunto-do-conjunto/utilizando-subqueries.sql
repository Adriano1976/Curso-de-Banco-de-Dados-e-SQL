/* ANTES DE PARTIR PARA O ASSUNTO, VAMOS PROCURAR DATABASE QUE IREMOS USAR */

SHOW DATABASES;

/*
+--------------------+
| Database           |
+--------------------+
| academia           |
| biblioteca         |
| comercio           |
| exercicio          |
| faculdade_unitech  |
| information_schema |
| livraria           |
| livraria_2         |
| mercearia          |
| mysql              |
| performance_schema |
| projeto            |
| sys                |
| top_uniformes      |
| unitech            |
*/

USE PROJETO;

/* Database changed - Mensagem informando que o database está em uso */

SELECT * FROM VENDEDORES;

/*
+------------+----------+------+-----------+-----------+-----------+
| IDVENDEDOR | NOME     | SEXO | JANEIRO   | FEVEREIRO | MARCO     |
+------------+----------+------+-----------+-----------+-----------+
|          1 | CARLOS   | M    |  76234.78 |  88346.87 |   5756.90 |
|          2 | MARIA    | F    |   5865.78 |   6768.87 |   4467.90 |
|          3 | ANTONIO  | M    |  78769.78 |   6685.87 |   6664.90 |
|          4 | CLARA    | F    |   5779.78 | 446886.88 |   8965.90 |
|          5 | ANDERSON | M    | 676545.75 |  77544.87 | 578665.88 |
|          6 | IVONE    | F    |  57789.78 |  44774.87 |  68665.90 |
|          7 | JOAO     | M    |   4785.78 |  66478.87 |   6887.90 |
|          8 | CELIA    | F    |  89667.78 |  57654.87 |   5755.90 |
+------------+----------+------+-----------+-----------+-----------+
*/

SELECT TRUNCATE(AVG(JANEIRO),2) AS MEDIA_JANEIRO FROM VENDEDORES;

/*
+---------------+
| MEDIA_JANEIRO |
+---------------+
|      124429.9 |
+---------------+
*/

SELECT TRUNCATE(AVG(FEVEREIRO),2) AS MEDIA_FEVEREIRO FROM VENDEDORES;

/*
+-----------------+
| MEDIA_FEVEREIRO |
+-----------------+
|        99392.74 |
+-----------------+
*/

SELECT TRUNCATE(AVG(MARCO),2) AS MEDIA_MARCO FROM VENDEDORES;

/*
+-------------+
| MEDIA_MARCO |
+-------------+
|    85728.89 |
+-------------+
*/

/* A 31 - SUBQUERIES

VENDEDOR QUE VENDEU MENOS EM MARCO E O SEU NOME.
NOME E O VALOR QUE VENDEU MAIS EM MARCO.
QUEM VENDEU MAIS QUE O VALOR MEDIO DE FEVEREIRO.
*/

-- EXEMPLO DE UMA QUERY FEITA ERRADA QUE RESULTOU EM UMA INFORMACAO FALCA.

SELECT NOME, MIN(MARCO) AS MIN_MARCO
FROM VENDEDORES;

/*
+--------+-----------+
| NOME   | MIN_MARCO |
+--------+-----------+
| CARLOS |   4467.90 |
+--------+-----------+
*/

-- EXEMPLO DE UMA QUERY FEITA CORRETA QUE RESULTOU EM UMA INFORMACAO VERDADEIRA.

SELECT NOME, MARCO FROM VENDEDORES
WHERE MARCO = (SELECT MIN(MARCO) FROM VENDEDORES);

/*
+-------+---------+
| NOME  | MARCO   |
+-------+---------+
| MARIA | 4467.90 |
+-------+---------+
*/

-- EXEMPLO DE UMA QUERY FEITA CORRETA QUE RESULTOU EM UMA INFORMACAO VERDADEIRA.

SELECT NOME, MARCO FROM VENDEDORES
WHERE MARCO = (SELECT MAX(MARCO) FROM VENDEDORES);

/*
+----------+-----------+
| NOME     | MARCO     |
+----------+-----------+
| ANDERSON | 578665.88 |
+----------+-----------+
*/

-- EXEMPLO DE UMA QUERY FEITA CORRETA QUE RESULTOU EM UMA INFORMACAO VERDADEIRA.

SELECT NOME, MARCO FROM VENDEDORES
WHERE MARCO > (SELECT AVG(MARCO) FROM VENDEDORES);

/*
+----------+-----------+
| NOME     | MARCO     |
+----------+-----------+
| ANDERSON | 578665.88 |
+----------+-----------+
*/

-- EXEMPLO DE UMA QUERY FEITA CORRETA QUE RESULTOU EM UMA INFORMACAO VERDADEIRA.

SELECT NOME, FEVEREIRO FROM VENDEDORES
WHERE FEVEREIRO > (SELECT AVG(FEVEREIRO) FROM VENDEDORES);

/*
+-------+-----------+
| NOME  | FEVEREIRO |
+-------+-----------+
| CLARA | 446886.88 |
+-------+-----------+
*/

-- EXEMPLO DE UMA QUERY FEITA CORRETA QUE RESULTOU EM UMA INFORMACAO VERDADEIRA.

SELECT NOME, FEVEREIRO FROM VENDEDORES
WHERE FEVEREIRO < (SELECT AVG(FEVEREIRO) FROM VENDEDORES);

/*
+----------+-----------+
| NOME     | FEVEREIRO |
+----------+-----------+
| CARLOS   |  88346.87 |
| MARIA    |   6768.87 |
| ANTONIO  |   6685.87 |
| ANDERSON |  77544.87 |
| IVONE    |  44774.87 |
| JOAO     |  66478.87 |
| CELIA    |  57654.87 |
+----------+-----------+
*/

/*
Se eu quisesse retornar os vendedores + quais meses eles venderam acima da média, 
como fazer?
*/

SELECT NOME, CASE 
WHEN JANEIRO > (SELECT AVG(JANEIRO) FROM VENDEDORES)
THEN 'ACIMA DA MÉDIA' 
ELSE 
	'ABAIXO'
END 
AS JANEIRO,
CASE 
WHEN FEVEREIRO > (SELECT AVG(FEVEREIRO) FROM VENDEDORES)
THEN
	'ACIMA DA MÉDIA' 
ELSE 
	'ABAIXO'
END 
AS FEVEREIRO,
CASE 
WHEN MARCO > (SELECT AVG(MARCO) FROM VENDEDORES)
THEN
	'ACIMA DA MÉDIA' 
ELSE 
	'ABAIXO'
END 
AS MARCO
 
FROM VENDEDORES;

/*
+----------+-----------------+-----------------+-----------------+
| NOME     | JANEIRO         | FEVEREIRO       | MARCO           |
+----------+-----------------+-----------------+-----------------+
| CARLOS   | ABAIXO          | ABAIXO          | ABAIXO          |
| MARIA    | ABAIXO          | ABAIXO          | ABAIXO          |
| ANTONIO  | ABAIXO          | ABAIXO          | ABAIXO          |
| CLARA    | ABAIXO          | ACIMA DA MÉDIA  | ABAIXO          |
| ANDERSON | ACIMA DA MÉDIA  | ABAIXO          | ACIMA DA MÉDIA  |
| IVONE    | ABAIXO          | ABAIXO          | ABAIXO          |
| JOAO     | ABAIXO          | ABAIXO          | ABAIXO          |
| CELIA    | ABAIXO          | ABAIXO          | ABAIXO          |
+----------+-----------------+-----------------+-----------------+
*/
