CREATE TABLE INTERNACAO(
	IDINTERNACAO INT PRIMARY KEY AUTO_INCREMENT,
	ENTRADA DATETIME NOT NULL,
	QUARTO INT NOT NULL,
	SAIDA DATETIME NOT NULL,
	OBSERVACOES VARCHAR(50) NOT NULL,
	ID_CONSULTA INT UNIQUE
);

-- Query OK, 0 rows affected (3.09 sec)

DESC INTERNACAO;

/*
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| IDINTERNACAO | int         | NO   | PRI | NULL    | auto_increment |
| ENTRADA      | datetime    | NO   |     | NULL    |                |
| QUARTO       | int         | NO   |     | NULL    |                |
| SAIDA        | datetime    | NO   |     | NULL    |                |
| OBSERVACOES  | varchar(50) | NO   |     | NULL    |                |
| ID_CONSULTA  | int         | YES  | UNI | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
*/
