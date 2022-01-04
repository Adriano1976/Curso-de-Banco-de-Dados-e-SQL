/* GERANDO RELATORIO DE CLIENTES COM A QUANTIDADE DE HOMENS E MULHERES */

SELECT COUNT(*) AS QUANTIDADE, SEXO
FROM CLIENTE
GROUP BY SEXO;

/*
+------------+------+
| QUANTIDADE | SEXO |
+------------+------+
|          9 | M    |
|         13 | F    |
+------------+------+
*/
