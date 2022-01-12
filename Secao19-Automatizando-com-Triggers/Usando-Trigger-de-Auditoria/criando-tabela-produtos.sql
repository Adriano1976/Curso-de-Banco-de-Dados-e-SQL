CREATE TABLE PRODUTOS(
	IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	VALOR FLOAT(10,2)
);

-- Query OK, 0 rows affected, 1 warning (4.85 sec)

DESC PRODUTOS;

/*
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDPRODUTO | int         | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(30) | YES  |     | NULL    |                |
| VALOR     | float(10,2) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
*/

SHOW CREATE TABLE PRODUTOS;

/*
| PRODUTO | CREATE TABLE `produto` (
  `IDPRODUTO` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(30) DEFAULT NULL,
  `VALOR` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`IDPRODUTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/
