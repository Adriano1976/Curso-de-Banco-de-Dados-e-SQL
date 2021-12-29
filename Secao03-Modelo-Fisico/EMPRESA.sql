-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Empresa (
	Endereco VARCHAR(100),
	Fixo INTEGER,
	Celular INTEGER,
	CNPJ INTEGER PRIMARY KEY,
	Sede ou Filial VARCHAR(30)
);

CREATE TABLE Empregado (
	Matricula INTEGER PRIMARY KEY,
	Nome VARCHAR(30),
	Endereco VARCHAR(100),
	Data de nascimento DATETIME,
	Telefone direto INTEGER,
	CNPJ INTEGER,
	FOREIGN KEY(CNPJ) REFERENCES Empresa (CNPJ)
);

	CREATE TABLE Filial (
	CNPJ INTEGER,
	FOREIGN KEY(CNPJ) REFERENCES Empresa (CNPJ)
);
