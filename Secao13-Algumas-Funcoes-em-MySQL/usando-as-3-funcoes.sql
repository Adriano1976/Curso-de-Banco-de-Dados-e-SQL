-- Usando varias funcoes ao mesmo tempo.

SELECT MAX(JANEIRO) AS MAX_JAN,
	   MIN(JANEIRO) AS MIN_JAN,
	   AVG(JANEIRO) AS MEDIA_JAN
	   FROM VENDEDORES;

/*
+-----------+---------+---------------+
| MAX_JAN   | MIN_JAN | MEDIA_JAN     |
+-----------+---------+---------------+
| 676545.75 | 4785.78 | 124429.901794 |
+-----------+---------+---------------+
*/