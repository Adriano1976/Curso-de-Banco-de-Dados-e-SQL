CREATE TABLE TURMA(
	IDTURMA INT AUTO_INCREMENT,
	SALA INT NOT NULL,
	CAPACIDADE INT NOT NULL,
	ID_ORIENTACAO INT NOT NULL,

	PRIMARY KEY(IDTURMA)
);

DESC TURMA;

/*
+---------------+------+------+-----+---------+----------------+
| Field         | Type | Null | Key | Default | Extra          |
+---------------+------+------+-----+---------+----------------+
| IDTURMA       | int  | NO   | PRI | NULL    | auto_increment |
| SALA          | int  | NO   |     | NULL    |                |
| CAPACIDADE    | int  | NO   |     | NULL    |                |
| ID_ORIENTACAO | int  | NO   |     | NULL    |                |
+---------------+------+------+-----+---------+----------------+
*/