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

-- retorna o resto resultante da divisão do valor da
-- coluna de uma tabela por "n".

-- Obs: A consulta acima retornou o resto da divisão da coluna Valor1 pelo número 2. Essa
-- consulta é utilizada para encontrar os valores da coluna Valor1 que são paras, pois se o
-- resto da divisão por 2 for 0, o número é par.

SELECT NOME, JANEIRO, MOD(JANEIRO, 2) FROM VENDEDORES;

/*
+----------+-----------+-----------------+
| NOME     | JANEIRO   | MOD(JANEIRO, 2) |
+----------+-----------+-----------------+
| CARLOS   |  76234.78 |            0.78 |
| MARIA    |   5865.78 |            1.78 |
| ANTONIO  |  78769.78 |            1.78 |
| CLARA    |   5779.78 |            1.78 |
| ANDERSON | 676545.75 |            1.75 |
| IVONE    |  57789.78 |            1.78 |
| JOAO     |   4785.78 |            1.78 |
| CELIA    |  89667.78 |            1.78 |
+----------+-----------+-----------------+
*/

SELECT NOME, JANEIRO, 
TRUNCATE(MOD(JANEIRO, 2), 0) 
AS RESTO 
FROM VENDEDORES;

/*
+----------+-----------+-------+
| NOME     | JANEIRO   | RESTO |
+----------+-----------+-------+
| CARLOS   |  76234.78 |     0 |
| MARIA    |   5865.78 |     1 |
| ANTONIO  |  78769.78 |     1 |
| CLARA    |   5779.78 |     1 |
| ANDERSON | 676545.75 |     1 |
| IVONE    |  57789.78 |     1 |
| JOAO     |   4785.78 |     1 |
| CELIA    |  89667.78 |     1 |
+----------+-----------+-------+
*/

SELECT NOME, FEVEREIRO, 
TRUNCATE(MOD(FEVEREIRO, 2), 0) 
AS RESTO 
FROM VENDEDORES;

/*
+----------+-----------+-------+
| NOME     | FEVEREIRO | RESTO |
+----------+-----------+-------+
| CARLOS   |  88346.87 |     0 |
| MARIA    |   6768.87 |     0 |
| ANTONIO  |   6685.87 |     1 |
| CLARA    | 446886.88 |     0 |
| ANDERSON |  77544.87 |     0 |
| IVONE    |  44774.87 |     0 |
| JOAO     |  66478.87 |     0 |
| CELIA    |  57654.87 |     0 |
+----------+-----------+-------+
*/

SELECT NOME, MARCO, 
TRUNCATE(MOD(MARCO, 2), 0) 
AS RESTO 
FROM VENDEDORES;

/*
+----------+-----------+-------+
| NOME     | MARCO     | RESTO |
+----------+-----------+-------+
| CARLOS   |   5756.90 |     0 |
| MARIA    |   4467.90 |     1 |
| ANTONIO  |   6664.90 |     0 |
| CLARA    |   8965.90 |     1 |
| ANDERSON | 578665.88 |     1 |
| IVONE    |  68665.90 |     1 |
| JOAO     |   6887.90 |     1 |
| CELIA    |   5755.90 |     1 |
+----------+-----------+-------+
*/

