-- Criando a tabela PERFIL.

CREATE TABLE PERFIL (
	idperfil INT AUTO_INCREMENT,
	nome VARCHAR(100),
	sexo CHAR(1),
	profissao VARCHAR(100),
	onde_estudou VARCHAR(100),
	hobbies VARCHAR(100),
	gosto_musical VARCHAR(100),
	id_usuario INT UNIQUE,

	PRIMARY KEY(idperfil)
);

-- Conferindo para ver se a tabela PERFIL foi realmente criada.

/*
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| idperfil      | int          | NO   | PRI | NULL    | auto_increment |
| nome          | varchar(100) | YES  |     | NULL    |                |
| sexo          | char(1)      | YES  |     | NULL    |                |
| profissao     | varchar(100) | YES  |     | NULL    |                |
| onde_estudou  | varchar(100) | YES  |     | NULL    |                |
| hobbies       | varchar(100) | YES  |     | NULL    |                |
| gosto_musical | varchar(100) | YES  |     | NULL    |                |
| id_usuario    | int          | YES  | UNI | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+
*/
