-- Criando a tabela USUARIO.

CREATE TABLE USUARIO (
	idusuario INT AUTO_INCREMENT,
	nome_usuario VARCHAR(10) NOT NULL,
	senha VARCHAR(10) NOT NULL,
	email VARCHAR(100) NULL,

	PRIMARY KEY(idusuario)
);

-- Conferindo se a tabela USUARIO foi realmente criada.

DESC USUARIO;

/*
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| idusuario    | int          | NO   | PRI | NULL    | auto_increment |
| nome_usuario | varchar(10)  | NO   |     | NULL    |                |
| senha        | varchar(10)  | NO   |     | NULL    |                |
| email        | varchar(100) | YES  |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
*/
