-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Funcionario (
NumReg INTEGER PRIMARY KEY,
NomeFunc VARCHAR(30),
Dia DATE,
Mes DATE,
Ano DATE,
Sexo CHAR(1),
Telefone VARCHAR(10),
Telefone1 VARCHAR(10),
Telefone2 VARCHAR(10),
Telefone3 VARCHAR(10),
Telefone4 VARCHAR(10)
);