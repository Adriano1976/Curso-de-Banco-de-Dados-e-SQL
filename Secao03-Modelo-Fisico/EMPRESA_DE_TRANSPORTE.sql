-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Caminhoes (
	ID_Caminhao VARCHAR(10) PRIMARY KEY,
	ID_Motorista VARCHAR(10),
	Placa VARCHAR(10),
	Modelo VARCHAR(20),
	Capacidade VARCHAR(10),
	Ano_Fabricacao CHAR(4),
	Ano_Aquisicao CHAR(4)
);

CREATE TABLE Viagens (
	ID_Viagem VARCHAR(10) PRIMARY KEY,
	ID_Encomenda VARCHAR(10),
	ID_Caminhao VARCHAR(10),
	ID_Loja VARCHAR(10),
	Data_inicio DATETIME,
	Data_fim DATETIME,
	FOREIGN KEY(ID_Caminhao) REFERENCES Caminhoes (ID_Caminhao)
);

CREATE TABLE Motoristas (
	ID_Motorista VARCHAR(10) PRIMARY KEY,
	ID_Caminhao VARCHAR(10),
	Nome VARCHAR(60),
	CNH VARCHAR(18),
	Telefone VARCHAR(30),
	Endereco VARCHAR(60),
	Bairro VARCHAR(30),
	Cidade VARCHAR(30),
	Estado CHAR(2),
	CEP VARCHAR(9),
	FOREIGN KEY(ID_Caminhao) REFERENCES Caminhoes (ID_Caminhao)
);

CREATE TABLE Lojas (
	ID_Loja VARCHAR(10) PRIMARY KEY,
	ID_Viagem VARCHAR(10),
	Nome VARCHAR(60),
	CNPJ VARCHAR(20),
	Telefone VARCHAR(30),
	Email VARCHAR(60),
	Endereco VARCHAR(100),
	Bairro VARCHAR(30),
	Cidade VARCHAR(30),
	Estado CHAR(2),
	CEP VARCHAR(9),
	FOREIGN KEY(ID_Viagem) REFERENCES Viagens (ID_Viagem)
);

CREATE TABLE Encomendas (
	ID_Encomenda VARCHAR(10) PRIMARY KEY,
	ID_Armazem VARCHAR(),
	Data DATETIME,
	Peso DECIMAL(10,3),
	Descricao VARCHAR(100),
	Destino VARCHAR(100)
);

CREATE TABLE Armazens (
	ID_Armazem VARCHAR(10) PRIMARY KEY,
	ID_Encomenda VARCHAR(),
	CNPJ VARCHAR(10),
	Nome VARCHAR(10),
	Telefone VARCHAR(10),
	Endereco VARCHAR(10),
	Bairro VARCHAR(30),
	Cidade VARCHAR(),
	Estado CHAR(2),
	CEP VARCHAR(18),
	FOREIGN KEY(ID_Encomenda) REFERENCES Encomendas (ID_Encomenda)
);

ALTER TABLE Caminhoes ADD FOREIGN KEY(ID_Motorista) REFERENCES Motoristas (ID_Motorista);
ALTER TABLE Viagens ADD FOREIGN KEY(ID_Encomenda) REFERENCES Encomendas (ID_Encomenda);
ALTER TABLE Viagens ADD FOREIGN KEY(ID_Loja) REFERENCES Lojas (ID_Loja);
ALTER TABLE Encomendas ADD FOREIGN KEY(ID_Armazem) REFERENCES Armazens (ID_Armazem);
