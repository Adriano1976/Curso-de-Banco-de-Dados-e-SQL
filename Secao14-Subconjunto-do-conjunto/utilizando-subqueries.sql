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

/* A 31 - SUBQUERIES

VENDEDOR QUE VENDEU MENOS EM MARCO E O SEU NOME.
NOME E O VALOR QUE VENDEU MAIS EM MARCO.
QUEM VENDEU MAIS QUE O VALOR MEDIO DE FEVEREIRO.
*/

SELECT NOME, MIN(MARCO) AS MIN_MARCO
FROM VENDEDORES;

/*
+--------+-----------+
| NOME   | MIN_MARCO |
+--------+-----------+
| CARLOS |   4467.90 |
+--------+-----------+
*/
