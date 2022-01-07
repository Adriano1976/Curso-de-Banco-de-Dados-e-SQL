CREATE TABLE ALUNO(
	IDALUNO INT AUTO_INCREMENT,
	NOME VARCHAR(100) NOT NULL,
	RG VARCHAR(10) NOT NULL UNIQUE,
	SEXO CHAR(1) NOT NULL,
	TURMA VARCHAR(10),

	PRIMARY KEY(IDALUNO)
);

SHOW TABLES;

/*
+-------------------+
| Tables_in_colegio |
+-------------------+
| aluno             |
+-------------------+
*/

DESC ALUNO;

/*
+---------+--------------+------+-----+---------+----------------+
| Field   | Type         | Null | Key | Default | Extra          |
+---------+--------------+------+-----+---------+----------------+
| IDALUNO | int          | NO   | PRI | NULL    | auto_increment |
| NOME    | varchar(100) | NO   |     | NULL    |                |
| RG      | varchar(10)  | NO   | UNI | NULL    |                |
| SEXO    | char(1)      | NO   |     | NULL    |                |
| TURMA   | varchar(10)  | YES  |     | NULL    |                |
+---------+--------------+------+-----+---------+----------------+
*/
