CREATE TABLE CONSULTA(
	IDCONSULTA INT PRIMARY KEY AUTO_INCREMENT,
	ID_PACIENTE INT NOT NULL,
	ID_MEDICO INT NOT NULL,
	ID_HOSPITAL INT NOT NULL,
	DATA DATETIME NOT NULL,
	DIAGNOSTICO VARCHAR(50) NOT NULL
);

-- Query OK, 0 rows affected (3.10 sec)

DESC CONSULTA;

/*
+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| IDCONSULTA  | int         | NO   | PRI | NULL    | auto_increment |
| ID_PACIENTE | int         | NO   |     | NULL    |                |
| ID_MEDICO   | int         | NO   |     | NULL    |                |
| ID_HOSPITAL | int         | NO   |     | NULL    |                |
| DATA        | datetime    | NO   |     | NULL    |                |
| DIAGNOSTICO | varchar(50) | NO   |     | NULL    |                |
+-------------+-------------+------+-----+---------+----------------+
*/
