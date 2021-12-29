-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Frequencia (
	ID_Frequencia VARCHAR(10) PRIMARY KEY,
	Data_final VARCHAR(10),
	Data_inical VARCHAR(10)
);

CREATE TABLE Instituicao (
	ID_Instituicao INTEGER PRIMARY KEY,
	Nome VARCHAR(100)
);

CREATE TABLE Aula (
	ID_Aula INTEGER PRIMARY KEY,
	Modalidade VARCHAR(100),
	Nivel VARCHAR(50)
);

CREATE TABLE Aluno (
	ID_Aluno INTEGER PRIMARY KEY,
	Nome VARCHAR(100),
	Idade CHAR(3),
	Sexo CHAR(1),
	Telefone INTEGER,
	ID_Instituicao INTEGER,
	FOREIGN KEY(ID_Instituicao) REFERENCES Instituicao (ID_Instituicao)
);

CREATE TABLE Frequenta (
	ID_Aula INTEGER,
	ID_Aluno INTEGER,
	ID_Frequencia INTEGER,
	PRIMARY KEY(ID_Aula,ID_Aluno,ID_Frequencia)
);

CREATE TABLE Sala (
	ID_Sala VARCHAR(10) PRIMARY KEY,
	Hora_final VARCHAR(10),
	Hora_inicial VARCHAR(10)
)

CREATE TABLE Ensina (
	ID_Aula INTEGER,
	ID_Professor INTEGER,
	ID_Sala INTEGER,
	PRIMARY KEY(ID_Aula,ID_Professor,ID_Sala)
);

CREATE TABLE Professor (
	ID_Professor INTEGER PRIMARY KEY,
	Nome VARCHAR(100),
	Sobrenome VARCHAR(50),
	Telefone INTEGER
);

