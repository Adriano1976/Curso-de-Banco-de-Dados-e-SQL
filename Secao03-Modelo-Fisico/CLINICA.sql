-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Medico (
	CRM VARCHAR(10) PRIMARY KEY,
	Nome VARCHAR(30)
);

CREATE TABLE Paciente (
	CodPaciente VARCHAR(10) PRIMARY KEY,
	Endereco VARCHAR(100),
	Sexo CHAR(1),
	Idade VARCHAR(3)
);

CREATE TABLE Consulta (
	CodConsulta VARCHAR(10) PRIMARY KEY,
	Data DATETIME,
	CRM VARCHAR(10),
	CodPaciente VARCHAR(10),
	Hora DATETIME,
	FOREIGN KEY(CRM) REFERENCES Medico (CRM),
	FOREIGN KEY(CodPaciente) REFERENCES Paciente (CodPaciente)
);

