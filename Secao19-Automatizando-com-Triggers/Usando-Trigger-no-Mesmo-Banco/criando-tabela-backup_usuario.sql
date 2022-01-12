CREATE TABLE BACKUP_USUARIO(
	IDBACKUP INT PRIMARY KEY AUTO_INCREMENT,
	IDUSUARIO INT,
	NOME VARCHAR(30),
	LOGIN VARCHAR(30)
);

DESC BACKUP_USUARIO;

/*
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDBACKUP  | int         | NO   | PRI | NULL    | auto_increment |
| IDUSUARIO | int         | YES  |     | NULL    |                |
| NOME      | varchar(30) | YES  |     | NULL    |                |
| LOGIN     | varchar(30) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
*/

SHOW CREATE TABLE BACKUP_USUARIO;

/*
| BACKUP_USUARIO | CREATE TABLE `backup_usuario` (
  `IDBACKUP` int NOT NULL AUTO_INCREMENT,
  `IDUSUARIO` int DEFAULT NULL,
  `NOME` varchar(30) DEFAULT NULL,
  `LOGIN` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDBACKUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/
