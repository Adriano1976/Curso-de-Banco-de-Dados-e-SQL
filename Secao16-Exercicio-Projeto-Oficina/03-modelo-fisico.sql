-- Criando o banco de dados OFICINA

CREATE DATABASE OFICINA;

-- Verificando se o banco de dados foi realmente criado.

SHOW DATABASES;

-- Informando ao sistema em qual banco de dados quer trabalhar.

USE OFICINA;

-- Verificando se esta usando realmente o banco de dados desejado.

STATUS

-- Criando as tabelas CLIENTE, TELEFONE, CARRO, MODELO, COR, CARRO_COR.

CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	SEXO ENUM('M','F') NOT NULL,
	ID_CARRO INT UNIQUE
);

CREATE TABLE TELEFONE(
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM('CEL','RES','COM') NOT NULL,
	NUMERO VARCHAR(30) NOT NULL,
	ID_CLIENTE INT
);

CREATE TABLE MARCA(
	IDMARCA INT PRIMARY KEY AUTO_INCREMENT,
	MARCA VARCHAR(30) UNIQUE
);

CREATE TABLE CARRO(
	IDCARRO INT PRIMARY KEY AUTO_INCREMENT,
	MODELO VARCHAR(30) NOT NULL,
	PLACA VARCHAR(30) NOT NULL UNIQUE,
	ID_MARCA INT
);

CREATE TABLE COR(
	IDCOR INT PRIMARY KEY AUTO_INCREMENT,
	COR VARCHAR(30) UNIQUE
);

CREATE TABLE CARRO_COR(
	ID_CARRO INT,
	ID_COR INT,
	PRIMARY KEY(ID_CARRO,ID_COR)
);

-- Ferificando se as tabelas foram criadas corretamente.

DESC CLIENTE;

/*
+-----------+---------------+------+-----+---------+----------------+
| Field     | Type          | Null | Key | Default | Extra          |
+-----------+---------------+------+-----+---------+----------------+
| IDCLIENTE | int           | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(30)   | NO   |     | NULL    |                |
| SEXO      | enum('M','F') | NO   |     | NULL    |                |
| ID_CARRO  | int           | YES  | UNI | NULL    |                |
+-----------+---------------+------+-----+---------+----------------+
*/

DESC TELEFONE;

/*
+------------+-------------------------+------+-----+---------+----------------+
| Field      | Type                    | Null | Key | Default | Extra          |
+------------+-------------------------+------+-----+---------+----------------+
| IDTELEFONE | int                     | NO   | PRI | NULL    | auto_increment |
| TIPO       | enum('CEL','RES','COM') | NO   |     | NULL    |                |
| NUMERO     | varchar(30)             | NO   |     | NULL    |                |
| ID_CLIENTE | int                     | YES  | MUL | NULL    |                |
+------------+-------------------------+------+-----+---------+----------------+
*/

DESC CARRO;

/*
+----------+-------------+------+-----+---------+----------------+
| Field    | Type        | Null | Key | Default | Extra          |
+----------+-------------+------+-----+---------+----------------+
| IDCARRO  | int         | NO   | PRI | NULL    | auto_increment |
| MODELO   | varchar(30) | NO   |     | NULL    |                |
| PLACA    | varchar(30) | NO   | UNI | NULL    |                |
| ID_MARCA | int         | YES  | MUL | NULL    |                |
+----------+-------------+------+-----+---------+----------------+
*/

DESC MARCA;

/*
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| IDMARCA | int         | NO   | PRI | NULL    | auto_increment |
| MARCA   | varchar(30) | YES  | UNI | NULL    |                |
+---------+-------------+------+-----+---------+----------------+
*/

DESC COR;

/*
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| IDCOR | int         | NO   | PRI | NULL    | auto_increment |
| COR   | varchar(30) | YES  | UNI | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
*/

DESC CARRO_COR;

/*
+----------+------+------+-----+---------+-------+
| Field    | Type | Null | Key | Default | Extra |
+----------+------+------+-----+---------+-------+
| ID_CARRO | int  | NO   | PRI | NULL    |       |
| ID_COR   | int  | NO   | PRI | NULL    |       |
+----------+------+------+-----+---------+-------+
*/

-- Criando os relacionamentos ou CONSTRAINTS por fora das tabelas.

ALTER TABLE TELEFONE
ADD CONSTRAINT FK_TELEFONE_CLIENTE
FOREIGN KEY(ID_CLIENTE)
REFERENCES CLIENTE(IDCLIENTE);

ALTER TABLE CLIENTE
ADD CONSTRAINT FK_CLIENTE_CARRO
FOREIGN KEY(ID_CARRO)
REFERENCES CARRO(IDCARRO);

ALTER TABLE CARRO
ADD CONSTRAINT FK_CARRO_MARCA
FOREIGN KEY(ID_MARCA)
REFERENCES MARCA(IDMARCA);

ALTER TABLE CARRO_COR
ADD CONSTRAINT FK_COR 
FOREIGN KEY COR(ID_COR)
REFERENCES COR(IDCOR);

ALTER TABLE CARRO_COR
ADD CONSTRAINT FK_CARRO
FOREIGN KEY(ID_CARRO)
REFERENCES CARRO(IDCARRO);

-- Verificando se as CONSTRAINTS foram criada corretamente.

SHOW CREATE TABLE TELEFONE;

/*
| TELEFONE | CREATE TABLE `telefone` (
  `IDTELEFONE` int NOT NULL AUTO_INCREMENT,
  `TIPO` enum('CEL','RES','COM') NOT NULL,
  `NUMERO` varchar(30) NOT NULL,
  `ID_CLIENTE` int DEFAULT NULL,
  PRIMARY KEY (`IDTELEFONE`),
  KEY `FK_TELEFONE_CLIENTE` (`ID_CLIENTE`),
  CONSTRAINT `FK_TELEFONE_CLIENTE` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`IDCLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/

SHOW CREATE TABLE CLIENTE;

/*
| CLIENTE | CREATE TABLE `cliente` (
  `IDCLIENTE` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(30) NOT NULL,
  `SEXO` enum('M','F') NOT NULL,
  `ID_CARRO` int DEFAULT NULL,
  PRIMARY KEY (`IDCLIENTE`),
  UNIQUE KEY `ID_CLIENTE` (`ID_CARRO`),
  UNIQUE KEY `ID_CARRO` (`ID_CARRO`),
  CONSTRAINT `FK_CLIENTE_CARRO` FOREIGN KEY (`ID_CARRO`) REFERENCES `carro` (`IDCARRO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/

SHOW CREATE TABLE CARRO;

/*
| CARRO | CREATE TABLE `carro` (
  `IDCARRO` int NOT NULL AUTO_INCREMENT,
  `MODELO` varchar(30) NOT NULL,
  `PLACA` varchar(30) NOT NULL,
  `ID_MARCA` int DEFAULT NULL,
  PRIMARY KEY (`IDCARRO`),
  UNIQUE KEY `PLACA` (`PLACA`),
  KEY `FK_CARRO_MARCA` (`ID_MARCA`),
  CONSTRAINT `FK_CARRO_MARCA` FOREIGN KEY (`ID_MARCA`) REFERENCES `marca` (`IDMARCA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/

SHOW CREATE TABLE CARRO_COR;

/*
| CARRO_COR | CREATE TABLE `carro_cor` (
  `ID_CARRO` int NOT NULL,
  `ID_COR` int NOT NULL,
  PRIMARY KEY (`ID_CARRO`,`ID_COR`),
  KEY `FK_COR` (`ID_COR`),
  CONSTRAINT `FK_CARRO` FOREIGN KEY (`ID_CARRO`) REFERENCES `carro` (`IDCARRO`),
  CONSTRAINT `FK_COR` FOREIGN KEY (`ID_COR`) REFERENCES `cor` (`IDCOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/
