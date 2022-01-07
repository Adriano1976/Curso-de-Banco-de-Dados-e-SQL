CREATE TABLE CONTA(
	IDCONTA INT AUTO_INCREMENT,
	NUMERO INT NOT NULL,
	SALDO DECIMAL(14,2) NOT NULL,
	LIMITE DECIMAL(14,2) NOT NULL,
	ID_BANCO INT NOT NULL,

	PRIMARY KEY(IDCONTA)
);

DESC CONTA;

/*
+----------+---------------+------+-----+---------+----------------+
| Field    | Type          | Null | Key | Default | Extra          |
+----------+---------------+------+-----+---------+----------------+
| IDCONTA  | int           | NO   | PRI | NULL    | auto_increment |
| NUMERO   | int           | NO   |     | NULL    |                |
| SALDO    | decimal(14,2) | NO   |     | NULL    |                |
| LIMITE   | decimal(14,2) | NO   |     | NULL    |                |
| ID_BANCO | int           | NO   | UNI | NULL    |                |
+----------+---------------+------+-----+---------+----------------+
*/

