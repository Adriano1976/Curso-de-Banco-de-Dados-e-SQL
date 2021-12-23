-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.


CREATE DATABASE BIBLIOTECA;

USE BIBLIOTECA;

----- CRIANDO TABELA BIBLIOTECA ---------------------------- GRUPO 01

CREATE TABLE Biblioteca  (
	cod_biblioteca  INT PRIMARY KEY AUTO_INCREMENT,
	endereco VARCHAR(100) NOT NULL,
	descricao VARCHAR(100) NOT NULL
);

----- CRIANDO TABELA ASSOCIADO ----------------------------- GRUPO 01

CREATE TABLE Associado  (
	matricula_assoc INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
	sexo CHAR(1) NOT NULL
);

----- CRIANDO TABELA ASSUNTO ------------------------------- GRUPO 01

CREATE TABLE Assunto (
	cod_assunto INT PRIMARY KEY AUTO_INCREMENT,
	descricao VARCHAR(50) NOT NULL
);

----- CRIANDO TABELA AUTOR ---------------------------------- GRUPO 01

CREATE TABLE Autor (
	cod_autor INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL
);

----- CRIANDO TABELA CADASTRA ------------------------------- GRUPO 02

CREATE TABLE Cadastra (
	matricula_assoc INT NULL,
	cod_biblioteca  INT NULL,
	
	FOREIGN KEY(matricula_assoc) REFERENCES Associado  (matricula_assoc),
	FOREIGN KEY(cod_biblioteca ) REFERENCES Biblioteca  (cod_biblioteca)
);

----- CRIANDO TABELA LIVRO ---------------------------------- GRUPO 02

CREATE TABLE Livro (
	ISBN_livro INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(30) NOT NULL,
	cod_biblioteca  INT UNIQUE,
	matricula_assoc INT UNIQUE,
	
	FOREIGN KEY(cod_biblioteca ) REFERENCES Biblioteca  (cod_biblioteca),
	FOREIGN KEY(matricula_assoc) REFERENCES Associado  (matricula_assoc)
);

----- CRIANDO TABELA ABORDA ---------------------------------- GRUPO 03

CREATE TABLE Aborda (
	ISBN_livro INT NULL,
	cod_assunto INT NULL,
	
	FOREIGN KEY(ISBN_livro) REFERENCES Livro (ISBN_livro),
	FOREIGN KEY(cod_assunto) REFERENCES Assunto (cod_assunto)
);

----- CRIANDO TABELA ESCREVE --------------------------------- GRUPO 03

CREATE TABLE Escreve (
	ISBN_livro INT NULL,
	cod_autor INT NULL,
	
	FOREIGN KEY(ISBN_livro) REFERENCES Livro (ISBN_livro),
	FOREIGN KEY(cod_autor) REFERENCES Autor (cod_autor)
);
