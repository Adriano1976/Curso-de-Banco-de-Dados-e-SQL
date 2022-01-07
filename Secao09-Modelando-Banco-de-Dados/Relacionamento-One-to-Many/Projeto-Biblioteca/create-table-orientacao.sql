CREATE TABLE ORIENTACAO(
	IDORIENTACAO INT AUTO_INCREMENT,
	NOME VARCHAR(100) NOT NULL,
	CPF VARCHAR(20) NOT NULL UNIQUE,

	PRIMARY KEY(IDORIENTACAO)
);

DESC ORIENTACAO;

/*
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| IDORIENTACAO | int          | NO   | PRI | NULL    | auto_increment |
| NOME         | varchar(100) | NO   |     | NULL    |                |
| CPF          | varchar(20)  | NO   | UNI | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
*/
