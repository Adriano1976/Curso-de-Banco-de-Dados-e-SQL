/* a funcao TRUNCATE serve para formatar a casa decimal depois da virgula */
	 
SELECT MAX(JANEIRO) AS MAX_JAN,
       MIN(JANEIRO) AS MIN_JAN,
	   TRUNCATE(AVG(JANEIRO),2) AS MEDIA_JAN
	   FROM VENDEDORES;

/*
+-----------+---------+-----------+
| MAX_JAN   | MIN_JAN | MEDIA_JAN |
+-----------+---------+-----------+
| 676545.75 | 4785.78 |  124429.9 |
+-----------+---------+-----------+
*/