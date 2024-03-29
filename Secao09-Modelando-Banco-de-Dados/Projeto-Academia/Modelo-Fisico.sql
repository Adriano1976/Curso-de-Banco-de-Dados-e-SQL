-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE ACADEMIA;


CREATE TABLE Frequencia (
	ID_Frequencia INT PRIMARY KEY AUTO_INCREMENT,
	Data_final DATE NOT NULL,
	Data_inical DATE NULL
);

CREATE TABLE Aluno (
	ID_Aluno INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(30) NOT NULL,
	Idade CHAR(2) NOT NULL,
	Sexo CHAR(1)NOT NULL,
	Telefone VARCHAR(15)NOT NULL,
	Instituicao VARCHAR(30) NULL
);

CREATE TABLE Aula (
	ID_Aula INT PRIMARY KEY AUTO_INCREMENT,
	Modalidade VARCHAR(30) NOT NULL,
	Nivel VARCHAR(30) NOT NULL
);

CREATE TABLE Professor (
	ID_Professor INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(10) NOT NULL,
	Sobrenome VARCHAR(10) NOT NULL,
	Telefone VARCHAR(10) NOT NULL
);

CREATE TABLE Sala (
	ID_Sala INT PRIMARY KEY AUTO_INCREMENT,
	Hora_final VARCHAR(10) NOT NULL,
	Hora_inicial VARCHAR(10) NOT NULL
);

CREATE TABLE Instituicao (

);

CREATE TABLE Ensina (
	ID_Aula INT NOT NULL,
	ID_Professor INT NOT NULL,
	ID_Sala INT NOT NULL,
	PRIMARY KEY(ID_Aula,ID_Professor,ID_Sala)
);

CREATE TABLE Frequenta (
	ID_Frequencia INT NOT NULL,
	ID_Aula INT NOT NULL,
	ID_Aluno INT NOT NULL,
	PRIMARY KEY(ID_Frequencia,ID_Aula,ID_Aluno)
);
