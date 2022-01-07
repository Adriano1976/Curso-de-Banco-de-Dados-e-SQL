CREATE TABLE BANCO(
	IDBANCO INT AUTO_INCREMENT,
	NOME VARCHAR(100) NOT NULL,
	ENDERECO VARCHAR(200) NOT NULL,

	PRIMARY KEY(IDBANCO)
);

/*
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| IDBANCO  | int          | NO   | PRI | NULL    | auto_increment |
| NOME     | varchar(100) | NO   |     | NULL    |                |
| ENDERECO | varchar(200) | NO   |     | NULL    |                |
+----------+--------------+------+-----+---------+----------------+
*/