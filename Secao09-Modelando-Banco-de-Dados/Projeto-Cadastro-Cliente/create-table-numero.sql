-- Obs.: O auto_increment é para mysql, o identity é para sql server.

CREATE TABLE NUMERO (
	IDNUMERO INT AUTO_INCREMENT,
	NUMERO INT,
	TIPO CHAR(3),
	ID_CLIENTE INT,
	CONSTRAINT PK_ID_NUMERO PRIMARY KEY (IDNUMERO),
	CONSTRAINT CHECK_TIPO CHECK (TIPO IN('CEL','COM','RES')),
	CONSTRAINT FK_ID_CLIENTE_NUMERO FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE (IDCLIENTE)
);

SHOW TABLES;

/*
+----------------------------+
| Tables_in_cadastro_cliente |
+----------------------------+
| cliente                    |
| endereco                   |
| numero                     |
+----------------------------+
*/

DESC NUMERO;

/*
+------------+---------+------+-----+---------+----------------+
| Field      | Type    | Null | Key | Default | Extra          |
+------------+---------+------+-----+---------+----------------+
| IDNUMERO   | int     | NO   | PRI | NULL    | auto_increment |
| NUMERO     | int     | YES  |     | NULL    |                |
| TIPO       | char(3) | YES  |     | NULL    |                |
| ID_CLIENTE | int     | YES  | MUL | NULL    |                |
+------------+---------+------+-----+---------+----------------+
*/

SHOW CREATE TABLE NUMERO;

/*
| NUMERO | CREATE TABLE `numero` (
  `IDNUMERO` int NOT NULL AUTO_INCREMENT,
  `NUMERO` int DEFAULT NULL,
  `TIPO` char(3) DEFAULT NULL,
  `ID_CLIENTE` int DEFAULT NULL,
  PRIMARY KEY (`IDNUMERO`),
  KEY `FK_ID_CLIENTE_NUMERO` (`ID_CLIENTE`),
  CONSTRAINT `FK_ID_CLIENTE_NUMERO` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`IDCLIENTE`),
  CONSTRAINT `CHECK_TIPO` CHECK ((`TIPO` in (_utf8mb4'CEL',_utf8mb4'COM',_utf8mb4'RES')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/
