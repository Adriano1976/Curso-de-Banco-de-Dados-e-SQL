-- Criando a tabela cliente.

CREATE TABLE CLIENTE(
	IDCLIENTE INT,
	NOME VARCHAR(30) NOT NULL
);

-- Criando a tabela telefone.

CREATE TABLE TELEFONE(
	IDTELEFONE INT,
	TIPO CHAR(3) NOT NULL,
	NUMERO VARCHAR(10) NOT NULL,
	ID_CLIENTE INT
);

-- Conferindo se as tabelas foram criadas corretamente.

DESC CLIENTE;

/*
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| IDCLIENTE | int         | YES  |     | NULL    |       |
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
| ID_CLIENTE | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
*/