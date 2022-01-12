CREATE TABLE BKP_PRODUTOS(
	IDBACKUP INT PRIMARY KEY AUTO_INCREMENT,
	IDPRODUTO INT,
	NOME VARCHAR(30),
	VALOR_ORIGINAL FLOAT(10,2),
	VALOR_ALTERADO FLOAT(10,2),
	DATA DATETIME,
	USUARIO VARCHAR(30),
	EVENTO CHAR(1)
);

-- Query OK, 0 rows affected, 1 warning (2.02 sec)

DESC BKP_PRODUTOS;

/*
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDBKP     | int         | NO   | PRI | NULL    | auto_increment |
| IDPRODUTO | int         | YES  |     | NULL    |                |
| NOME      | varchar(30) | YES  |     | NULL    |                |
| VALOR     | float(10,2) | YES  |     | NULL    |                |
| EVENTO    | char(1)     | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
*/

SHOW CREATE TABLE BKP_PRODUTOS;

/*
| BKP_PRODUTO | CREATE TABLE `bkp_produto` (
  `IDBKP` int NOT NULL AUTO_INCREMENT,
  `IDPRODUTO` int DEFAULT NULL,
  `NOME` varchar(30) DEFAULT NULL,
  `VALOR` float(10,2) DEFAULT NULL,
  `EVENTO` char(1) DEFAULT NULL,
  PRIMARY KEY (`IDBKP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/
