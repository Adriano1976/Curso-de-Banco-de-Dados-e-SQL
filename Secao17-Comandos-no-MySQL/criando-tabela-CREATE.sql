-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.


-- Criando a base de dados da escola

CREATE DATABASE ESCOLA;

-- Conferindo para ver se a base de dados "escola" foi criada.

SHOW DATABASES;

/*
+--------------------+
| Database           |
+--------------------+
| academia           |
| biblioteca         |
| comercio           |
| escola             |
| exercicio          |
| faculdade_unitech  |
| information_schema |
| livraria           |
| livraria_2         |
| mercearia          |
| mysql              |
| oficina            |
| performance_schema |
| projeto            |
| projeto_02         |
| sys                |
| top_uniformes      |
| unitech            |
+--------------------+
*/

-- Entrando na base de dados da escola para criar as tabelas.

USE ESCOLA;

/*
Database changed
*/

-- Criando as respectivas tabelas e seus atributos com as chaves primarias.

CREATE TABLE TELEFONE(
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM('CEL','RES') NOT NULL,
	NUMERO VARCHAR(10) NOT NULL,
	ID_ALUNO INT
);

CREATE TABLE ENDERECO(
	IDENDERECO INT(10) PRIMARY KEY AUTO_INCREMENT,
	RUA_AV VARCHAR(60) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CEP CHAR(8) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	ESTADO CHAR(2) NOT NULL,
	ID_ALUNO INT NOT NULL UNIQUE
);

CREATE TABLE ALUNO(
	IDALUNO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	CPF VARCHAR(11) NOT NULL UNIQUE,
	SEXO CHAR(2) NOT NULL,
	EMAIL VARCHAR(30) NOT NULL UNIQUE,
	ALTURA DECIMAL(3.2) NOT NULL
);

CREATE TABLE SALA(
	IDSALA INT PRIMARY KEY AUTO_INCREMENT,
	CAPACIDADE CHAR(3) NOT NULL,
	ANDAR CHAR(2) NOT NULL
);

CREATE TABLE MATRICULA(	
	ANO CHAR(4),
	SEMESTRE CHAR(1),
	ID_ALUNO INT,
	ID_SALA INT,
	PRIMARY KEY(ID_ALUNO,ID_SALA,ANO,SEMESTRE)
);

-- Conferindo se todas as tabelas foram criadas corretamente.

DESC TELEFONE;

/*
+------------+-------------------+------+-----+---------+----------------+
| Field      | Type              | Null | Key | Default | Extra          |
+------------+-------------------+------+-----+---------+----------------+
| IDTELEFONE | int               | NO   | PRI | NULL    | auto_increment |
| TIPO       | enum('CEL','RES') | NO   |     | NULL    |                |
| NUMERO     | varchar(11)       | NO   |     | NULL    |                |
| ID_ALUNO   | int               | YES  | MUL | NULL    |                |
+------------+-------------------+------+-----+---------+----------------+
*/

DESC ALUNO;

/*
+---------+--------------+------+-----+---------+----------------+
| Field   | Type         | Null | Key | Default | Extra          |
+---------+--------------+------+-----+---------+----------------+
| IDALUNO | int          | NO   | PRI | NULL    | auto_increment |
| NOME    | varchar(30)  | NO   |     | NULL    |                |
| CPF     | varchar(11)  | NO   | UNI | NULL    |                |
| SEXO    | char(2)      | NO   |     | NULL    |                |
| EMAIL   | varchar(30)  | NO   | UNI | NULL    |                |
| ALTURA  | float(3.2)   | NO   |     | NULL    |                |
+---------+--------------+------+-----+---------+----------------+
*/

DESC ENDERECO;

/*
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDENDERECO | int         | NO   | PRI | NULL    | auto_increment |
| RUA_AV     | varchar(60) | NO   |     | NULL    |                |
| BAIRRO     | varchar(30) | NO   |     | NULL    |                |
| CEP        | varchar(10) | NO   |     | NULL    |                |
| CIDADE     | varchar(30) | NO   |     | NULL    |                |
| ESTADO     | char(2)     | NO   |     | NULL    |                |
| ID_ALUNO   | int         | NO   | UNI | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
*/

DESC SALA;

/*
+------------+---------+------+-----+---------+----------------+
| Field      | Type    | Null | Key | Default | Extra          |
+------------+---------+------+-----+---------+----------------+
| IDSALA     | int     | NO   | PRI | NULL    | auto_increment |
| CAPACIDADE | char(3) | NO   |     | NULL    |                |
| ANDAR      | char(2) | NO   |     | NULL    |                |
+------------+---------+------+-----+---------+----------------+
*/

DESC MATRICULA;

/*
+----------+---------+------+-----+---------+-------+
| Field    | Type    | Null | Key | Default | Extra |
+----------+---------+------+-----+---------+-------+
| ANO      | char(4) | NO   | PRI | NULL    |       |
| SEMESTRE | char(1) | NO   | PRI | NULL    |       |
| ID_ALUNO | int     | NO   | PRI | NULL    |       |
| ID_SALA  | int     | NO   | PRI | NULL    |       |
+----------+---------+------+-----+---------+-------+
*/
