-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Frequencia (
ID_Frequencia INTEGER PRIMARY KEY,
Data_final DATETIME,
Data_inical DATETIME,
ID_Aluno INTEGER,
ID_Aula INTEGER
);

CREATE TABLE Sala (
ID_Sala INTEGER PRIMARY KEY,
Hora_final TIME,
Hora_inicial TIME
);

CREATE TABLE Instituicao (
ID_Instituicao INTEGER PRIMARY KEY,
Nome VARCHAR(100)
);

CREATE TABLE Aula (
ID_Aula INTEGER PRIMARY KEY,
Modalidade VARCHAR(100),
Nivel VARCHAR(50),
ID_Professor INTEGER,
ID_Sala INTEGER,
FOREIGN KEY(ID_Sala) REFERENCES Sala (ID_Sala)
);

CREATE TABLE Professor (
ID_Professor INTEGER PRIMARY KEY,
Nome VARCHAR(100),
Sobrenome VARCHAR(50),
Telefone INTEGER
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

ALTER TABLE Frequencia ADD FOREIGN KEY(ID_Aluno) REFERENCES Aluno (ID_Aluno);
ALTER TABLE Frequencia ADD FOREIGN KEY(ID_Aula) REFERENCES Aula (ID_Aula);
ALTER TABLE Aula ADD FOREIGN KEY(ID_Professor) REFERENCES Professor (ID_Professor);
