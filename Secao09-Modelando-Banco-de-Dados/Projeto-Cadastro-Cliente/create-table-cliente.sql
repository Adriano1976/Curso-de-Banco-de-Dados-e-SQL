-- Obs.: O auto_increment é para mysql, o identity é para sql server

CREATE TABLE CLIENTE(
	IDCLIENTE INT AUTO_INCREMENT,
	NOME VARCHAR(50) NOT NULL,
	SEXO CHAR(10) NOT NULL,
	EMAIL VARCHAR(50),
	CONSTRAINT CHECK_SEXO CHECK(SEXO IN('MASCULINO','FEMININO','F','M')),
	CONSTRAINT PK_CLIENTE PRIMARY KEY (IDCLIENTE)
);

SHOW TABLES;

/*
+----------------------------+
| Tables_in_cadastro_cliente |
+----------------------------+
| cliente                    |
+----------------------------+
*/

DESC CLIENTE;

/*
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDCLIENTE | int         | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(50) | NO   |     | NULL    |                |
| SEXO      | char(10)    | NO   |     | NULL    |                |
| EMAIL     | varchar(50) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
*/

SHOW CREATE TABLE CLIENTE;

/*
| CLIENTE | CREATE TABLE `cliente` (
  `IDCLIENTE` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(50) NOT NULL,
  `SEXO` char(10) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDCLIENTE`),
  CONSTRAINT `CHECK_SEXO` CHECK ((`SEXO` in (_utf8mb4'MASCULINO',_utf8mb4'FEMININO',_utf8mb4'F',_utf8mb4'M')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/
