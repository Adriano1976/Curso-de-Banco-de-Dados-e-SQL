-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.
-- Projeto do Banco de Dados do sistema baseado em um SGBD Relacional da empresa Unitech.
-- Esse projeto foi criando e executado por ADRIANO SANTOS - RA 21181021-5


CREATE DATABASE FACULDADE_UNITECH

USE FACULDADE_UNITECH;

----- CRIANDO A TABELA ALUNO ----------------------------- GRUPO 01

CREATE TABLE ALUNO(
	IDaluno INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(30) NOT NULL,
	Sexo ENUM('M','F') NOT NULL,
	DataNasc DATE NULL,
	Cpf VARCHAR(15) UNIQUE,
	Email VARCHAR(50) UNIQUE
	
);

----- CRIANDO TABELA PROFESSOR ---------------------------- GRUPO 01

CREATE TABLE PROFESSOR(
	IDprofessor INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(30) NOT NULL,
	Cpf VARCHAR(15) UNIQUE,
	Email VARCHAR(30) UNIQUE,
	Telefone VARCHAR(11) NOT NULL,
	Certificado VARCHAR(30) NOT NULL
	
);

----- CRIANDO TABELA CURSO -------------------------------- GRUPO 01

CREATE TABLE CURSO(
	IDcurso INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(30) NOT NULL,
	Duracao DECIMAL(4) NOT NULL,
	QuantPeriodo CHAR(2) NOT NULL,
	CargaHoraria TIME NOT NULL,
	Turno VARCHAR(10) NOT NULL,
	Modalidade VARCHAR(10) NOT NULL,
	Nivel VARCHAR(30) NOT NULL	
	
);

----- CRIANDO A TABELA TELEFONE --------------------------- GRUPO 02

CREATE TABLE TELEFONE(
	IDtelefone INT PRIMARY KEY AUTO_INCREMENT,
	Tipo ENUM('RES','COM','CEL') NOT NULL,
	Numero VARCHAR(11) NOT NULL,
	ID_aluno INT,
	
	FOREIGN KEY(ID_aluno) REFERENCES ALUNO(IDaluno)
	
);

----- CRIANDO A TABELA ENDERECO --------------------------- GRUPO 02

CREATE TABLE ENDERECO(
	IDendereco INT PRIMARY KEY AUTO_INCREMENT,
	Rua VARCHAR(30) NOT NULL,
	Bairro VARCHAR(30) NOT NULL,
	Cidade VARCHAR(30) NOT NULL,
	Estado CHAR(2) NOT NULL,
	Cep VARCHAR(10) NOT NULL,
	ID_aluno INT UNIQUE,
	
	FOREIGN KEY(ID_aluno) REFERENCES ALUNO(IDaluno)
	
);

----- CRIANDO TABELA DISCIPLINA --------------------------- GRUPO 02

CREATE TABLE DISCIPLINA(
	IDdisciplina INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(30) NOT NULL,
	ID_professor INT NOT NULL,
	
	FOREIGN KEY(ID_professor) REFERENCES PROFESSOR (IDprofessor),
	FOREIGN KEY(ID_curso) REFERENCES CURSO (IDcurso)
		
);

----- CRIANDO GRADE DO CURSO ------------------------------ GRUPO 03

CREATE TABLE GRADE_CURSO(
	IDgrade INT PRIMARY KEY AUTO_INCREMENT,
	Descricao VARCHAR(30) NOT NULL,
	CargaHoraria TIME NOT NULL,
	ID_disciplina INT NOT NULL,
	
	FOREIGN KEY(ID_disciplina) REFERENCES DISCIPLINA (IDdisciplina)
	
);

----- CRIANDO TABELA TURMA -------------------------------- GRUPO 02

CREATE TABLE TURMA(
	IDturma INT AUTO_INCREMENT,	
	Bloco CHAR(1) NOT NULL,
	Sala VARCHAR(10) NOT NULL,
	DataInicio DATE NOT NULL,
	DataFinal DATE NOT NULL,	
	Turno CHAR(1) NOT NULL,
	PeriodoLetivo CHAR(1) NOT NULL,
	AnoLetivo VARCHAR(4) NOT NULL,	
	ID_curso INT NOT NULL,
	
	PRIMARY KEY (IDturma,ID_curso,AnoLetivo,PeriodoLetivo,Turno),
	FOREIGN KEY(ID_curso) REFERENCES CURSO (IDcurso)
	
);

----- CRIANDO TABELA CAMPUS ------------------------------- GRUPO 03

CREATE TABLE CAMPUS(
	IDcampus INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(30) NOT NULL,
	Telefone VARCHAR(11) NOT NULL,
	Cnpj VARCHAR(20) NOT NULL,
	ID_professor INT NOT NULL,
	ID_turma INT NOT NULL,
	
	FOREIGN KEY(ID_professor) REFERENCES PROFESSOR (IDprofessor),
	FOREIGN KEY(ID_turma) REFERENCES TURMA (IDturma)
	
);

----- CRIANDO A TABELA LOGRADOURO ------------------------- GRUPO 04

CREATE TABLE LOGRADOURO(
	IDlogradouro INT PRIMARY KEY AUTO_INCREMENT,
	Rua_Av VARCHAR(30) NOT NULL,
	Bairro VARCHAR(30) NOT NULL,
	Cidade VARCHAR(30) NOT NULL,
	Estado CHAR(2) NOT NULL,
	Cep VARCHAR(10) NOT NULL,
	ID_campus INT UNIQUE,
	
	FOREIGN KEY(ID_campus) REFERENCES CAMPUS(IDcampus)
	
);

----- CRIANDO TABELA MATRICULA ---------------------------- GRUPO 05

CREATE TABLE MATRICULA(
	IDmatricula INT AUTO_INCREMENT,
	Semestre CHAR(1),
	Ano CHAR(4),
	ID_turma INT NOT NULL,
	ID_curso INT NOT NULL,
	ID_aluno INT NOT NULL,
	ID_campus INT NOT NULL,
	
	PRIMARY KEY (IDmatricula,ID_aluno,ID_curso,ID_turma,ID_campus,Semestre,Ano),
	FOREIGN KEY(ID_curso) REFERENCES CURSO (IDcurso),
	FOREIGN KEY(ID_aluno) REFERENCES ALUNO (IDaluno),
	FOREIGN KEY(ID_turma) REFERENCES TURMA (IDturma),
	FOREIGN KEY(ID_campus) REFERENCES CAMPUS (IDcampus)
	
);

----- CRIANDO TABELA BOLETIM ------------------------------ GRUPO 07

CREATE TABLE BOLETIM(
	IDboletim INT PRIMARY KEY AUTO_INCREMENT,
	Descricao VARCHAR(100) NOT NULL,
	Nota1 DECIMAL(2,2) NULL,
	Nota2 DECIMAL(2,2) NULL,
	MediaNota DECIMAL(2,2) NULL,
	Status ENUM('Aprovado','Reprovado') NULL,
	ID_disciplina INT NOT NULL,
	ID_professor INT NOT NULL,
	ID_aluno INT NOT NULL,
	ID_turma INT NOT NULL,
	
	FOREIGN KEY(ID_turma) REFERENCES TURMA (IDturma),
	FOREIGN KEY(ID_disciplina) REFERENCES DISCIPLINA (IDdisciplina),
	FOREIGN KEY(ID_professor) REFERENCES PROFESSOR (IDprofessor),
	FOREIGN KEY(ID_aluno) REFERENCES ALUNO (IDaluno)
	
);

----- CRIANDO TABELA FREQUENCIA --------------------------- GRUPO 08

CREATE TABLE FREQUENCIA(
	IDfalta INT PRIMARY KEY AUTO_INCREMENT,
	Data DATE NOT NULL,
	Status ENUM('Presente','Falta') NOT NULL,
	TotalFalta INT NOT NULL,
	ID_boletim INT NOT NULL,
	
	FOREIGN KEY(ID_boletim) REFERENCES BOLETIM (IDboletim)
	
);

----- CRIANDO TABELA AULA --------------------------------- GRUPO 09

CREATE TABLE AULA (
	IDaula INT PRIMARY KEY AUTO_INCREMENT,
	Data DATE NOT NULL,
	HoraInicial TIME NOT NULL,
	HoraFinal TIME NOT NULL,
	ID_turma INT NOT NULL,
	ID_curso INT NOT NULL,
	ID_professor INT NOT NULL,
	
	FOREIGN KEY(ID_turma) REFERENCES TURMA (IDturma),
	FOREIGN KEY(ID_professor) REFERENCES PROFESSOR (IDprofessor),
	FOREIGN KEY(ID_curso) REFERENCES CURSO (IDcurso)

);


----------------------------------------------------------------------------------------
----------- ADICIONANDO DADOS NA TABELA PROFESSOR USANDO O COMANDO INSERT INTO ---------
----------------------------------------------------------------------------------------  


INSERT INTO PROFESSOR(IDprofessor,Nome,Cpf,Email,Telefone,Certificado) VALUES(NULL,'Marcos','78945612305','josecarlos@gmail.com','79998960514','Especialização em Geometria');
INSERT INTO PROFESSOR(IDprofessor,Nome,Cpf,Email,Telefone,Certificado) VALUES(NULL,'Alda','25814736912','alda125@gmail.com','79985471425','Pós-graduação em Literatura');
INSERT INTO PROFESSOR(IDprofessor,Nome,Cpf,Email,Telefone,Certificado) VALUES(NULL,'Neide','79958741245','neidefferreira@hotmail.com','79958741200','Doutorado em História');
INSERT INTO PROFESSOR(IDprofessor,Nome,Cpf,Email,Telefone,Certificado) VALUES(NULL,'Carla','78658741245','carlafferreira@hotmail.com','78548741200','Doutorado em Geografia');


------------------------------------------------------------------------------------
----------- ADICIONANDO DADOS NA TABELA ALUNO USANDO O COMANDO INSERT INTO ---------
------------------------------------------------------------------------------------ 

INSERT INTO ALUNO(IDaluno,Nome,Sexo,DataNasc,Cpf,Email) VALUES(NULL,'Mariana','F','1976/10/12','854.258.254-12','mariana@gmail.com');
INSERT INTO ALUNO(IDaluno,Nome,Sexo,DataNasc,Cpf,Email) VALUES(NULL,'Ritaly','F','1966/11/22','875.225.249-13','ritaly@gmail.com');
INSERT INTO ALUNO(IDaluno,Nome,Sexo,DataNasc,Cpf,Email) VALUES(NULL,'Leobaldo','M','1945/11/30','465.485.499-93','leobaldo@gmail.com');
INSERT INTO ALUNO(IDaluno,Nome,Sexo,DataNasc,Cpf,Email) VALUES(NULL,'Carlos','M','1932/11/30','135.755.400-13','carlos@gmail.com');

---------------------------------------------------------------------------------------
----------- ADICIONANDO DADOS NA TABELA ENDERECO USANDO O COMANDO INSERT INTO ---------
--------------------------------------------------------------------------------------- 

INSERT INTO ENDERECO(IDendereco,Rua,Bairro,Cidade,Estado,Cep,ID_aluno) VALUES(NULL,'RUA ANTONIO SA - 85','CENTRO','B. HORIZONTE','MG','49555-821',1);
INSERT INTO ENDERECO(IDendereco,Rua,Bairro,Cidade,Estado,Cep,ID_aluno) VALUES(NULL,'RUA CAPITAO HERMES - 49','CENTRO','RIO DE JANEIRO','RJ','49225-510',2);
INSERT INTO ENDERECO(IDendereco,Rua,Bairro,Cidade,Estado,Cep,ID_aluno) VALUES(NULL,'RUA PRES VARGAS - 75','JARDINS','SAO PAULO','SP','49229-150',3);
INSERT INTO ENDERECO(IDendereco,Rua,Bairro,Cidade,Estado,Cep,ID_aluno) VALUES(NULL,'RUA ALFANDEGA - 75','ESTACIO','RIO DE JANEIRO','RJ','49254-500',4);

---------------------------------------------------------------------------------------
----------- ADICIONANDO DADOS NA TABELA TELEFONE USANDO O COMANDO INSERT INTO ---------
--------------------------------------------------------------------------------------- 

INSERT INTO TELEFONE VALUES(NULL,'CEL','78458743',3);
INSERT INTO TELEFONE VALUES(NULL,'RES','56576876',4);
INSERT INTO TELEFONE VALUES(NULL,'CEL','87866896',1);
INSERT INTO TELEFONE VALUES(NULL,'COM','54768899',2);
INSERT INTO TELEFONE VALUES(NULL,'RES','99667587',1);


  