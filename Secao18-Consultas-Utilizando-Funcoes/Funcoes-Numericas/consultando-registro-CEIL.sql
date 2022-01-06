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

-- retorna o valor inteiro imediatamente superior ou igual ao valor da coluna de uma tabela.

SELECT NOME, JANEIRO, CEIL(JANEIRO) AS JANEIRO FROM VENDEDORES;

/*
+----------+-----------+---------+
| NOME     | JANEIRO   | JANEIRO |
+----------+-----------+---------+
| CARLOS   |  76234.78 |   76235 |
| MARIA    |   5865.78 |    5866 |
| ANTONIO  |  78769.78 |   78770 |
| CLARA    |   5779.78 |    5780 |
| ANDERSON | 676545.75 |  676546 |
| IVONE    |  57789.78 |   57790 |
| JOAO     |   4785.78 |    4786 |
| CELIA    |  89667.78 |   89668 |
+----------+-----------+---------+
*/