-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cliente (
	CodCliente VARCHAR(10) PRIMARY KEY,
	NomCliente VARCHAR(30),
	RuaCliente VARCHAR(100),
	CidadeCliente VARCHAR(20)
);

CREATE TABLE Conta_Corrente (
	NumConta VARCHAR(10) PRIMARY KEY,
	CodAgencia VARCHAR(10),
	CodCliente VARCHAR(10),
	Saldo DECIMAL(10),
	FOREIGN KEY(CodCliente) REFERENCES Cliente (CodCliente)
);

CREATE TABLE Agencia (
	CodAgencia VARCHAR(10) PRIMARY KEY,
	NomAgencia VARCHAR(10),
	CidadeAgencia VARCHAR(20)
);

CREATE TABLE Emprestimo (
	NumEmprestimo VARCHAR(10) PRIMARY KEY,
	CodAgencia VARCHAR(5),
	CodCliente VARCHAR(10),
	Valor DECIMAL(10),
	FOREIGN KEY(CodAgencia) REFERENCES Agencia (CodAgencia),
	FOREIGN KEY(CodCliente) REFERENCES Cliente (CodCliente)
);

ALTER TABLE Conta_Corrente ADD FOREIGN KEY(CodAgencia) REFERENCES Agencia (CodAgencia);
