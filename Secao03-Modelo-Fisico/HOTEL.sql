-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cliente (
	Cli_Cod INTEGER PRIMARY KEY,
	Cli_Nome VARCHAR(30),
	Cli_Rua VARCHAR(100),
	Cli_Cidade VARCHAR(30)
);

CREATE TABLE QuartoDeHotel (
	Qua_Numero INTEGER PRIMARY KEY,
	Andar CHAR(2),
	TipoQuarto VARCHAR(10)
);

CREATE TABLE Consumo (
	CodProduto INTEGER,
	Cod_Utiliza INTEGER,
	Quantidade INTEGER,
	Data DATE,
	Hora TIME,
	ValorTotal DECIMAL(10,2)
);

CREATE TABLE Produtos (
	CodProduto INTEGER PRIMARY KEY,
	Descricao VARCHAR(100),
	ValorUnitario DECIMAL(10,2)
);

CREATE TABLE Serviço (
	CodServiço VARCHAR(10) PRIMARY KEY,
	NomeServiço VARCHAR(60)
);

CREATE TABLE Utiliza (
	Cod_Utiliza INTEGER PRIMARY KEY,
	CodCliente INTEGER,
	NumQuarto INTEGER,
	Data DATE,
	Hora TIME,
	Valor DECIMAL(10,2)
);

CREATE TABLE Hospeda-se (
	Hosp_Cod INTEGER PRIMARY KEY,
	Cli_Cod INTEGER,
	Qua_Numero INTEGER,
	Cod_Utiliza INTEGER,
	DataEntrada DATETIME,
	DataSaida DATETIME,
	FOREIGN KEY(Cli_Cod) REFERENCES Cliente (Cli_Cod),
	FOREIGN KEY(Qua_Numero) REFERENCES QuartoDeHotel (Qua_Numero),
	FOREIGN KEY(Cod_Utiliza) REFERENCES Utiliza (Cod_Utiliza)
);

ALTER TABLE Consumo ADD FOREIGN KEY(CodProduto) REFERENCES Produtos (CodProduto)
ALTER TABLE Consumo ADD FOREIGN KEY(Cod_Utiliza) REFERENCES Utiliza (Cod_Utiliza)
ALTER TABLE Utiliza ADD FOREIGN KEY(CodCliente) REFERENCES Hospeda-se (Hosp_Cod)
ALTER TABLE Utiliza ADD FOREIGN KEY(NumQuarto) REFERENCES Hospeda-se (Hosp_Cod)
