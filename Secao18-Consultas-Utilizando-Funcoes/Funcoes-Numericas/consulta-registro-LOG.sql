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

-- Retorna o logaritmo do valor de uma coluna considerando como base o número “n”.

-- Obs: Repare que quando o Valor1 da tabela Valores é 1 (primeiro registro), a consulta
-- retorna “NULL”. Isto acontece porque LOG(1, 2) não existe. Por outro lado, o LOG(2, 2)
-- retornou 1, pois 2 elevado a 1 resulta em 2

SELECT NOME, JANEIRO, LOG(JANEIRO, 2) FROM VENDEDORES;

/*
+----------+-----------+----------------------+
| NOME     | JANEIRO   | LOG(JANEIRO, 2)      |
+----------+-----------+----------------------+
| CARLOS   |  76234.78 | 0.061659269157157144 |
| MARIA    |   5865.78 |  0.07988428158086808 |
| ANTONIO  |  78769.78 |  0.06148036864809339 |
| CLARA    |   5779.78 |  0.08002049286125755 |
| ANDERSON | 676545.75 |  0.05163201580928373 |
| IVONE    |  57789.78 |  0.06321701213846194 |
| JOAO     |   4785.78 |  0.08180268044470383 |
| CELIA    |  89667.78 |  0.06078176750991852 |
+----------+-----------+----------------------+
*/
