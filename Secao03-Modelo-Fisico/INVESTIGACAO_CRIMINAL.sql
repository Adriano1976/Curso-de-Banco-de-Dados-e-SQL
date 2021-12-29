-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Marginal (
	Registro INTEGER PRIMARY KEY,
	Idade VARCHAR(10),
	Nome VARCHAR(10),
	Codinome VARCHAR(10)
);

CREATE TABLE Vitima (
	Documento INTEGER PRIMARY KEY,
	Sexo VARCHAR(10),
	Idade VARCHAR(10),
	Nome VARCHAR(10)
);

CREATE TABLE Arma (
	Numero INTEGER PRIMARY KEY,
	Marca VARCHAR(10),
	Tipo VARCHAR(10),
	Serie VARCHAR(10)
);

CREATE TABLE Mata (
	Mata_ID INTEGER PRIMARY KEY,
	Documento INTEGER,
	Registro INTEGER,
	Data DATETIME,
	FOREIGN KEY(Documento) REFERENCES Vitima (Documento),
	FOREIGN KEY(Registro) REFERENCES Marginal (Registro)
);

CREATE TABLE Utiliza (
	Uti_ID INTEGER PRIMARY KEY,
	Numero INTEGER,
	Documento INTEGER,
	Registro INTEGER,
	FOREIGN KEY(Numero) REFERENCES Arma (Numero),
	FOREIGN KEY(Documento) REFERENCES Mata (Mata_ID),
	FOREIGN KEY(Registro) REFERENCES Mata (Mata_ID)
);
