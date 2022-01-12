CREATE TABLE MEDICO(
	IDMEDICO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	SEXO CHAR(1) NOT NULL,
	ESPECIALIDADE VARCHAR(30) NOT NULL,
	FUNCIONARIO ENUM('S','N') NOT NULL
);

-- Query OK, 0 rows affected (2.77 sec)

DESC MEDICO;

/*
+---------------+---------------+------+-----+---------+----------------+
| Field         | Type          | Null | Key | Default | Extra          |
+---------------+---------------+------+-----+---------+----------------+
| IDMEDICO      | int           | NO   | PRI | NULL    | auto_increment |
| NOME          | varchar(30)   | NO   |     | NULL    |                |
| SEXO          | char(1)       | NO   |     | NULL    |                |
| ESPECIALIDADE | varchar(30)   | NO   |     | NULL    |                |
| FUNCIONARIO   | enum('S','N') | NO   |     | NULL    |                |
+---------------+---------------+------+-----+---------+----------------+
*/
