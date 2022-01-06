-- Retorna a média do conteúdo das colunas de uma tabela.

SELECT AVG(ALTURA) AS MEDIA_ALTURA FROM ALUNO;

/*
+--------------+
| MEDIA_ALTURA |
+--------------+
|     1.727000 |
+--------------+
*/

SELECT AVG(SALARIO) AS MEDIA_SALARIO FROM FUNCIONARIOS;

/*
+---------------+
| MEDIA_SALARIO |
+---------------+
|  97255.751795 |
+---------------+
*/

SELECT TRUNCATE(AVG(SALARIO),2) AS MEDIA_SALARIO FROM FUNCIONARIOS;

/*
+---------------+
| MEDIA_SALARIO |
+---------------+
|      97255.75 |
+---------------+
*/


SELECT DEPARTAMENTO, AVG(SALARIO) AS MEDIA_SALARIAL
FROM FUNCIONARIOS
GROUP BY DEPARTAMENTO
ORDER BY 1;

/*
+---------------+----------------+
| DEPARTAMENTO  | MEDIA_SALARIAL |
+---------------+----------------+
| Alimentícios  |  101113.934783 |
| Automotivo    |   99658.000000 |
| Bebês         |   93749.422222 |
| Beleza        |  103416.283019 |
| Books         |   94890.148936 |
| Brinquedos    |   96187.170732 |
| Calçados      |   92281.813953 |
| Computadores  |   99095.442308 |
| Crianças      |   93237.552632 |
| Eletronicos   |   91615.122449 |
| Esporte       |   93901.025000 |
| Ferramentas   |  105020.717949 |
| Filmes        |   95268.666667 |
| Games         |  103883.755102 |
| Industrial    |   92900.851064 |
| Jardim        |  101959.255319 |
| Joalheria     |   87907.777778 |
| Lar           |   92734.711538 |
| Música        |   88507.216216 |
| Outdoors      |  112055.416667 |
| Roupas        |   95054.528302 |
| Saúde         |   98975.652174 |
+---------------+----------------+
*/

SELECT DEPARTAMENTO, TRUNCATE(AVG(SALARIO),2) AS MEDIA_SALARIAL
FROM FUNCIONARIOS
GROUP BY DEPARTAMENTO
ORDER BY 1;

/*
+---------------+----------------+
| DEPARTAMENTO  | MEDIA_SALARIAL |
+---------------+----------------+
| Alimentícios  |      101113.93 |
| Automotivo    |       99658.00 |
| Bebês         |       93749.42 |
| Beleza        |      103416.28 |
| Books         |       94890.14 |
| Brinquedos    |       96187.17 |
| Calçados      |       92281.81 |
| Computadores  |       99095.44 |
| Crianças      |       93237.55 |
| Eletronicos   |       91615.12 |
| Esporte       |       93901.02 |
| Ferramentas   |      105020.71 |
| Filmes        |       95268.66 |
| Games         |      103883.75 |
| Industrial    |       92900.85 |
| Jardim        |      101959.25 |
| Joalheria     |       87907.77 |
| Lar           |       92734.71 |
| Música        |       88507.21 |
| Outdoors      |      112055.41 |
| Roupas        |       95054.52 |
| Saúde         |       98975.65 |
+---------------+----------------+
*/

SELECT * FROM VENDEDOERES;

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


-- Se eu quisesse retornar os vendedores + quais meses eles venderam acima da média, 
-- como fazer?


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
