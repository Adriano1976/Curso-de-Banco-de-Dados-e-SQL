-- Obs.: O auto_increment é para mysql, o identity é para sql server.

CREATE TABLE ENDERECO (
	IDENDERECO INT AUTO_INCREMENT,
	RUA VARCHAR(30) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CIDADE VARCHAR(50) NOT NULL,
	ESTADO VARCHAR(2) NOT NULL,
	ID_CLIENTE INT,
	CONSTRAINT UNIQUE_ID_CLIENTE UNIQUE (ID_CLIENTE),
	CONSTRAINT PK_ID_ENDERECO PRIMARY KEY (IDENDERECO),
	CONSTRAINT FK_ID_CLIENTE FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE (IDCLIENTE)
);

SHOW TABLES;

/*
+----------------------------+
| Tables_in_cadastro_cliente |
+----------------------------+
| cliente                    |
| endereco                   |
+----------------------------+
*/

DESC ENDERECO;

/*
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDENDERECO | int         | NO   | PRI | NULL    | auto_increment |
| RUA        | varchar(30) | NO   |     | NULL    |                |
| BAIRRO     | varchar(30) | NO   |     | NULL    |                |
| CIDADE     | varchar(50) | NO   |     | NULL    |                |
| ESTADO     | varchar(2)  | NO   |     | NULL    |                |
| ID_CLIENTE | int         | YES  | UNI | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
*/

SHOW CREATE TABLE ENDERECO;

/*
| ENDERECO | CREATE TABLE `endereco` (
  `IDENDERECO` int NOT NULL AUTO_INCREMENT,
  `RUA` varchar(30) NOT NULL,
  `BAIRRO` varchar(30) NOT NULL,
  `CIDADE` varchar(50) NOT NULL,
  `ESTADO` varchar(2) NOT NULL,
  `ID_CLIENTE` int DEFAULT NULL,
  PRIMARY KEY (`IDENDERECO`),
  UNIQUE KEY `UNIQUE_ID_CLIENTE` (`ID_CLIENTE`),
  CONSTRAINT `FK_ID_CLIENTE` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`IDCLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/
