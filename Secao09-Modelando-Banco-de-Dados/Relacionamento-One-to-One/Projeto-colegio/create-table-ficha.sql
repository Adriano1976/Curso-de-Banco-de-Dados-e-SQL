CREATE TABLE FICHA(
	IDFICHA INT AUTO_INCREMENT,
	DATA_NASC DATE NOT NULL,
	ALTURA FLOAT NULL,
	PESO FLOAT NULL,
	ID_ALUNO INT NOT NULL UNIQUE,

	PRIMARY KEY(IDFICHA)
);

SHOW TABLES;

/*
+-------------------+
| Tables_in_colegio |
+-------------------+
| aluno             |
| ficha             |
+-------------------+
*/

DESC FICHA;

/*
+-----------+-------+------+-----+---------+----------------+
| Field     | Type  | Null | Key | Default | Extra          |
+-----------+-------+------+-----+---------+----------------+
| IDFICHA   | int   | NO   | PRI | NULL    | auto_increment |
| DATA_NASC | date  | NO   |     | NULL    |                |
| ALTURA    | float | YES  |     | NULL    |                |
| PESO      | float | YES  |     | NULL    |                |
| ID_ALUNO  | int   | NO   | UNI | NULL    |                |
+-----------+-------+------+-----+---------+----------------+
*/
