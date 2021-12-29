-- A funcao de agregacao SUM informa o valor total de uma coluna.

SELECT SUM(JANEIRO) AS TOTAL_JAN,
	   SUM(FEVEREIRO) AS TOTAL_FEV,
	   SUM(MARCO) AS TOTAL_MAR
FROM VENDEDORES;

/*
+-----------+-----------+-----------+
| TOTAL_JAN | TOTAL_FEV | TOTAL_MAR |
+-----------+-----------+-----------+
| 995439.21 | 795141.96 | 685831.17 |
+-----------+-----------+-----------+
*/

-- Como usar a funcao SUM para separar as vendas por sexo.

SELECT SEXO, SUM(MARCO) AS TOTAL_MAR
FROM VENDEDORES
GROUP BY SEXO;

/*
+------+-----------+
| SEXO | TOTAL_MAR |
+------+-----------+
| M    | 597975.57 |
| F    |  87855.60 |
+------+-----------+
*/

SELECT SEXO, SUM(JANEIRO) AS TOTAL_JANEIRO,
	   		 SUM(FEVEREIRO) AS TOTAL_FEVEREIRO,
	   		 SUM(MARCO) AS TOTAL_MARCO
FROM VENDEDORES
GROUP BY SEXO;

/*
+------+---------------+-----------------+-------------+
| SEXO | TOTAL_JANEIRO | TOTAL_FEVEREIRO | TOTAL_MARCO |
+------+---------------+-----------------+-------------+
| M    |     836336.09 |       239056.47 |   597975.57 |
| F    |     159103.12 |       556085.49 |    87855.60 |
+------+---------------+-----------------+-------------+
*/