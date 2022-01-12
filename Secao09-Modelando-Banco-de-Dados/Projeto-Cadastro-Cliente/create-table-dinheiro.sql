-- Obs.: O auto_increment é para mysql, o identity é para sql server

CREATE TABLE DINHEIRO (
	IDDINHEIRO INT AUTO_INCREMENT,
	MARCO DECIMAL(10,2),
	FEVEREIRO DECIMAL(10,2),
	MAIO DECIMAL(10,2),
	ID_CLIENTE INT,
	CONSTRAINT PK_ID_DINHEIRO PRIMARY KEY (IDDINHEIRO),
	CONSTRAINT FK_ID_CLIENTE_DINHEIRO FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE (IDCLIENTE)
);

SHOW TABLES;

/*
+----------------------------+
| Tables_in_cadastro_cliente |
+----------------------------+
| cliente                    |
| dinheiro                   |
| endereco                   |
| numero                     |
+----------------------------+
*/

DESC DINHEIRO;

/*
+------------+---------------+------+-----+---------+----------------+
| Field      | Type          | Null | Key | Default | Extra          |
+------------+---------------+------+-----+---------+----------------+
| IDDINHEIRO | int           | NO   | PRI | NULL    | auto_increment |
| MARCO      | decimal(10,2) | YES  |     | NULL    |                |
| FEVEREIRO  | decimal(10,2) | YES  |     | NULL    |                |
| MAIO       | decimal(10,2) | YES  |     | NULL    |                |
| ID_CLIENTE | int           | YES  | MUL | NULL    |                |
+------------+---------------+------+-----+---------+----------------+
*/

SHOW CREATE TABLE DINHEIRO;

/*
| DINHEIRO | CREATE TABLE `dinheiro` (
  `IDDINHEIRO` int NOT NULL AUTO_INCREMENT,
  `MARCO` decimal(10,2) DEFAULT NULL,
  `FEVEREIRO` decimal(10,2) DEFAULT NULL,
  `MAIO` decimal(10,2) DEFAULT NULL,
  `ID_CLIENTE` int DEFAULT NULL,
  PRIMARY KEY (`IDDINHEIRO`),
  KEY `FK_ID_CLIENTE_DINHEIRO` (`ID_CLIENTE`),
  CONSTRAINT `FK_ID_CLIENTE_DINHEIRO` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`IDCLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/