CREATE TABLE CLIENTE(
	IDCLIENTE INT,
	NOME VARCHAR(30) NOT NULL
);

CREATE TABLE TELEFONE(
	IDTELEFONE INT,
	TIPO CHAR(3) NOT NULL,
	NUMERO VARCHAR(10) NOT NULL,
	ID_CLIENTE INT
);

ALTER TABLE CLIENTE ADD CONSTRAINT PK_CLIENTE
PRIMARY KEY(IDCLIENTE);

ALTER TABLE TELEFONE ADD CONSTRAINT FK_CLIENTE_TELEFONE
FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE);

CREATE TABLE JOGADOR(
	IDJOGADOR INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30)
);

CREATE TABLE TIMES(
	IDTIME INT PRIMARY KEY AUTO_INCREMENT,
	NOMETIME VARCHAR(30),
	ID_JOGADOR INT,
	FOREIGN KEY(ID_JOGADOR)
	REFERENCES JOGADOR(IDJOGADOR)
);


-- CONFERINDO A ESTRUTURA DA TABLELA E OS DADOS INSERIDOS.

DESC CLIENTE;

/*
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| IDCLIENTE | int         | NO   | PRI | NULL    |       |
| NOME      | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
*/

DESC TELEFONE;

/*
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| IDTELEFONE | int         | YES  |     | NULL    |       |
| TIPO       | char(3)     | NO   |     | NULL    |       |
| NUMERO     | varchar(10) | NO   |     | NULL    |       |
| ID_CLIENTE | int         | YES  | MUL | NULL    |       |
+------------+-------------+------+-----+---------+-------+
*/

DESC JOGADOR;

/*
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDJOGADOR | int         | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(30) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
*/

DESC TIMES;

/*
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDTIME     | int         | NO   | PRI | NULL    | auto_increment |
| NOMETIME   | varchar(30) | YES  |     | NULL    |                |
| ID_JOGADOR | int         | YES  | MUL | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
*/
