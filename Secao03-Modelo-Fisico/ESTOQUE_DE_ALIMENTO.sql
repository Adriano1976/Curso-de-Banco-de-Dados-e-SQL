-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Alimento (
Codigo INTEGER PRIMARY KEY,
Fabricante INTEGER,
Unidade INTEGER,
DataValidade DATETIME,
Quantidade NUMERIC(10),
Descricao VARCHAR(30)
);

CREATE TABLE Unidade (
Unidade INTEGER PRIMARY KEY,
Descricao VARCHAR(30)
);

CREATE TABLE Fornecedores (
Fabricante INTEGER PRIMARY KEY,
NomeFabricante VARCHAR(30)
);

ALTER TABLE Alimento ADD FOREIGN KEY(Fabricante) REFERENCES Fornecedores (Fabricante) ON UPDATE RESTRICT ON DELETE RESTRICT
ALTER TABLE Alimento ADD FOREIGN KEY(Unidade) REFERENCES Unidade (Unidade) ON UPDATE RESTRICT ON DELETE RESTRICT
