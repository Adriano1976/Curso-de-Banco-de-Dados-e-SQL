CREATE TABLE VEND_TOTAL(
	NOME VARCHAR(50),
	JAN INT,
	FEV INT,
	MAR INT,
	TOTAL INT,
	MEDIA INT
);

-- Query OK, 0 rows affected (2.81 sec)

DESC VEND_TOTAL;

/*
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| NOME  | varchar(50) | YES  |     | NULL    |       |
| JAN   | int         | YES  |     | NULL    |       |
| FEV   | int         | YES  |     | NULL    |       |
| MAR   | int         | YES  |     | NULL    |       |
| TOTAL | int         | YES  |     | NULL    |       |
| MEDIA | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
*/

SHOW CREATE TABLE VEND_TOTAL;

/*
| VEND_TOTAL | CREATE TABLE `vend_total` (
  `NOME` varchar(50) DEFAULT NULL,
  `JAN` int DEFAULT NULL,
  `FEV` int DEFAULT NULL,
  `MAR` int DEFAULT NULL,
  `TOTAL` int DEFAULT NULL,
  `MEDIA` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/
