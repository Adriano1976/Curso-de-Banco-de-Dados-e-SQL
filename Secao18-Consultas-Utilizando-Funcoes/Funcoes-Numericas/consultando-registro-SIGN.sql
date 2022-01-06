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

-- Retorna -1 se o valor da coluna de uma tabela for
-- negativo, 1 se o valor for positivo e 0 se o valor for zero.

SELECT NOME, JANEIRO, SIGN(JANEIRO) 
AS POLARIDADE 
FROM VENDEDORES;

/*
+----------+-----------+------------+
| NOME     | JANEIRO   | POLARIDADE |
+----------+-----------+------------+
| CARLOS   |  76234.78 |          1 |
| MARIA    |   5865.78 |          1 |
| ANTONIO  |  78769.78 |          1 |
| CLARA    |   5779.78 |          1 |
| ANDERSON | 676545.75 |          1 |
| IVONE    |  57789.78 |          1 |
| JOAO     |   4785.78 |          1 |
| CELIA    |  89667.78 |          1 |
+----------+-----------+------------+
*/