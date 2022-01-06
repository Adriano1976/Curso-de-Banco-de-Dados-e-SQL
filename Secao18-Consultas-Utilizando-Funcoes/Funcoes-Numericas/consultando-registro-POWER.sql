SELECT * FROM VENDEDORES

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

-- retorna o valor da coluna de uma tabela elevado ao número “expoente”.
-- Se desejarmos saber a projeção do novo salário dos funcionarios com um aumento
-- de 5%, usaremos a seguinte sintaxe:

SELECT NOME, JANEIRO AS SALARIO_ATUAL, 
TRUNCATE(POWER(JANEIRO, 1.005), 2) AS SALARIO_NOVO 
FROM VENDEDORES;

/*
+----------+---------------+--------------+
| NOME     | SALARIO_ATUAL | SALARIO_NOVO |
+----------+---------------+--------------+
| CARLOS   |      76234.78 |     80642.48 |
| MARIA    |       5865.78 |      6125.86 |
| ANTONIO  |      78769.78 |     83337.68 |
| CLARA    |       5779.78 |       6035.6 |
| ANDERSON |     676545.75 |    723516.86 |
| IVONE    |      57789.78 |     61046.43 |
| JOAO     |       4785.78 |      4992.89 |
| CELIA    |      89667.78 |     94929.15 |
+----------+---------------+--------------+
*/

-- Se desejarmos saber a projeção do novo salário dos funcionarios com um aumento
-- de 12%, usaremos a seguinte sintaxe:

SELECT NOME, JANEIRO AS SALARIO_ATUAL, 
TRUNCATE(POWER(JANEIRO, 1.012), 2) AS SALARIO_NOVO 
FROM VENDEDORES;

/*
+----------+---------------+--------------+
| NOME     | SALARIO_ATUAL | SALARIO_NOVO |
+----------+---------------+--------------+
| CARLOS   |      76234.78 |     87244.68 |
| MARIA    |       5865.78 |      6509.47 |
| ANTONIO  |      78769.78 |     90181.18 |
| CLARA    |       5779.78 |      6412.89 |
| ANDERSON |     676545.75 |    794805.26 |
| IVONE    |      57789.78 |     65916.36 |
| JOAO     |       4785.78 |         5298 |
| CELIA    |      89667.78 |    102817.74 |
+----------+---------------+--------------+
*/
