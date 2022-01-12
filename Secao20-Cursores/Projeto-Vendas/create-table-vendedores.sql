CREATE TABLE VENDEDORES(
	IDVENDEDOR INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(50),
	JAN INT,
	FEV INT, 
	MAR INT
);

-- Query OK, 0 rows affected (7.62 sec)

DESC VENDEDORES;

/*
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDVENDEDOR | int         | NO   | PRI | NULL    | auto_increment |
| NOME       | varchar(50) | YES  |     | NULL    |                |
| JAN        | int         | YES  |     | NULL    |                |
| FEV        | int         | YES  |     | NULL    |                |
| MAR        | int         | YES  |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
*/

SHOW CREATE TABLE VENDEDORES;

/*
| VENDEDORES | CREATE TABLE `vendedores` (
  `IDVENDEDOR` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(50) DEFAULT NULL,
  `JAN` int DEFAULT NULL,
  `FEV` int DEFAULT NULL,
  `MAR` int DEFAULT NULL,
  PRIMARY KEY (`IDVENDEDOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/

