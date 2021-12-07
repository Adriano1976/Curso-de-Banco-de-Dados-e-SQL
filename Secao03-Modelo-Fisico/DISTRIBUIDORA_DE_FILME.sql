-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cinema (
CodigoCinema INTEGER PRIMARY KEY,
NomeFantasia VARCHAR(100),
Rua VARCHAR(300),
Bairro VARCHAR(100),
Cidade VARCHAR(100),
Estado CHAR(2),
Lotacao INTEGER
);

CREATE TABLE Filme (
CodigoFilme INTEGER PRIMARY KEY,
Genero VARCHAR(10),
Duracao VARCHAR(10),
Impropriedade VARCHAR(10),
TituloOriginal VARCHAR(10),
Origem VARCHAR(100),
Diretor VARCHAR(100)
);

CREATE TABLE Ator (
CodigoAtor INTEGER PRIMARY KEY,
Nome VARCHAR(100),
Nacionalidade VARCHAR(30),
Sexo CHAR(1),
Idade CHAR(3)
);

CREATE TABLE Exibe (
CodigoFilme INTEGER,
CodigoCinema INTEGER,
DataInicio DATE,
DataFim DATE,
FOREIGN KEY(CodigoFilme) REFERENCES Filme (CodigoFilme),
FOREIGN KEY(CodigoCinema) REFERENCES Cinema (CodigoCinema)
);

CREATE TABLE Participa (
CodigoAtor INTEGER,
CodigoFilme INTEGER,
Personagem VARCHAR(100),
Nome VARCHAR(100),
TituloOriginal VARCHAR(100),
FOREIGN KEY(CodigoAtor) REFERENCES Ator (CodigoAtor),
FOREIGN KEY(CodigoFilme) REFERENCES Filme (CodigoFilme)
);

