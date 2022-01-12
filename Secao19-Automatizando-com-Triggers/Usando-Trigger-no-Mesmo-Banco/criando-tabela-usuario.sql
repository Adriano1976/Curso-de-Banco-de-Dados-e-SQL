CREATE TABLE USUARIO(
	IDUSUARIO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	LOGIN VARCHAR(30),
	SENHA VARCHAR(100)
);

DESC USUARIO;

/*
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| IDUSUARIO | int          | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(30)  | YES  |     | NULL    |                |
| LOGIN     | varchar(30)  | YES  |     | NULL    |                |
| SENHA     | varchar(100) | YES  |     | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+
*/

SHOW CREATE TABLE USUARIO;

/*
 USUARIO | CREATE TABLE `usuario` (
  `IDUSUARIO` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(30) DEFAULT NULL,
  `LOGIN` varchar(30) DEFAULT NULL,
  `SENHA` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDUSUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/
