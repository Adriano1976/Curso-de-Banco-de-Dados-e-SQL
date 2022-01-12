CREATE TABLE PACIENTE(
	IDPACIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	SEXO CHAR(1) NOT NULL,
	EMAIL VARCHAR(30) NOT NULL UNIQUE,
	NASCIMENTO DATE NOT NULL
);

-- Query OK, 0 rows affected (4.61 sec)

DESC PACIENTE;

/*
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDPACIENTE | int         | NO   | PRI | NULL    | auto_increment |
| NOME       | varchar(30) | NO   |     | NULL    |                |
| SEXO       | char(1)     | NO   |     | NULL    |                |
| EMAIL      | varchar(30) | NO   | UNI | NULL    |                |
| NASCIMENTO | date        | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
*/
