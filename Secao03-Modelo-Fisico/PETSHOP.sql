-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Racao (
	ID_Rac INTEGER PRIMARY KEY,
	Extrato VARCHAR(10),
	Fibra VARCHAR(10),
	Proteina VARCHAR(10),
	NomeRacao VARCHAR(30),
	Mineral VARCHAR(10),
	Umidade VARCHAR(10)
);

CREATE TABLE Alimento (
	ID_Ali INTEGER PRIMARY KEY,
	Animal VARCHAR(10),
	Nome VARCHAR(10),
	Recomendado VARCHAR(10)
);

CREATE TABLE Vacina (
	ID_Vac INTEGER PRIMARY KEY,
	Animal VARCHAR(30),
	Estabelecimento VARCHAR(10),
	Nome VARCHAR(10),
	DataProximaAplicacao VARCHAR(10),
	DataAplicacao VARCHAR(10)
);

CREATE TABLE Higiene (
	ID_Hig INTEGER PRIMARY KEY,
	Tipo VARCHAR(10),
	Estabelecimento VARCHAR(10),
	DataProcedimento VARCHAR(10),
	Animal VARCHAR(10)
);

CREATE TABLE Animal (
	ID_Ani INTEGER PRIMARY KEY,
	Usuario VARCHAR(60),
	Cor VARCHAR(20),
	Altura VARCHAR(10),
	Nome VARCHAR(10),
	Tipo VARCHAR(10),
	Peso DECIMAL(10,3),
	Raca VARCHAR(30),
	Sexo CHAR(1),
	Nascimento DATETIME
);

CREATE TABLE Usuario (
	ID_Usu INTEGER PRIMARY KEY,
	Senha VARCHAR(10),
	Email VARCHAR(10),
	Login VARCHAR(10)
);

CREATE TABLE Preco (
	ID_Pre INTEGER PRIMARY KEY,
	ValorFeijao DECIMAL(10,2),
	ValorArroz DECIMAL(10,2),
	ValorCarne DECIMAL(10,2),
	ValorFrango DECIMAL(10,2),
	ValorCenoura DECIMAL(10,2)
);

CREATE TABLE Toma (
	ID_Vac INTEGER,
	ID_Ani INTEGER,
	FOREIGN KEY(ID_Vac) REFERENCES Vacina (ID_Vac),
	FOREIGN KEY(ID_Ani) REFERENCES Animal (ID_Ani)
);

CREATE TABLE Recebe (
	ID_Hig INTEGER,
	ID_Ani INTEGER,
	FOREIGN KEY(ID_Hig) REFERENCES Higiene (ID_Hig),
	FOREIGN KEY(ID_Ani) REFERENCES Animal (ID_Ani)
);

CREATE TABLE Come (
	ID_Ali INTEGER,
	ID_Ani INTEGER,
	FOREIGN KEY(ID_Ali) REFERENCES Alimento (ID_Ali),
	FOREIGN KEY(ID_Ani) REFERENCES Animal (ID_Ani)
);

CREATE TABLE Tem (
	ID_Usu INTEGER,
	ID_Ani INTEGER,
	FOREIGN KEY(ID_Usu) REFERENCES Usuario (ID_Usu),
	FOREIGN KEY(ID_Ani) REFERENCES Animal (ID_Ani)
);

CREATE TABLE Conectado (
	ID_Ani INTEGER,
	ID_Pre INTEGER,
	FOREIGN KEY(ID_Ani) REFERENCES Animal (ID_Ani),
	FOREIGN KEY(ID_Pre) REFERENCES Preco (ID_Pre)
);
