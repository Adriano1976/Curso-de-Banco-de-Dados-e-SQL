/* Modelagem Básica - 

ENTIDADE = TABELA
CAMPOS = ATRIBUTOS */

CLIENTE

NOME - CARACTER(30)
CPF - NUMERICO(11)
EMAIL - CARACTER(30)
TELEFONE - CARACTER(30)
ENDERECO - ENDERECO(100)
SEXO - CARACTER(1)

/* PROCESSOS DE MODELAGEM */

/* FASE 01 E FASE 02 - AD ADM DE DADOS */

MODELAGEM CONCEITUAL - RASCUNHO
MODELAGEM LÓGICA - QUALQUER PROGRAMA DE MODELAGEM

/* FASE 03 - DBA / AD */

MODELAGEM FÍSICA - SCRIPTS DE BANCO DE DADOS

/* INICIANDO A MODELAGEM FÍSICA */
/* CRIANDO O BANCO DE DADOS */

CREATE DATABASE PROJETO;

/* CONECTANDO-SE AO BANCO */

USE PROJETO;

/* CRIANDO A TABELA DE CLIENTE */

CREATE TABLE CLIENTE(
	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR(30),
	CPF CHAR(11),
	TELEFONE VARCHAR(30),
	ENDERECO VARCHAR(100)
	
	);
	
/* VERIFICANDO AS TABELAS DO BANCO */

SHOW TABLES;

/* DESCOBRINDO COMO É A ESTRUTURA DE UMA TABELA */

DESC CLIENTE;

/* FORMA 01 - OMITINDO AS COLUNAS */

INSERT INTO CLIENTE VALUE('JOAO','M','JOAO@GMAIL.COM',988368273,'22923110','MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ');
INSERT INTO CLIENTE VALUE('CELIA','F','CELIA@GMAIL.COM',541521456,'25078869','RIACHUELO - CENTRO - RIO DE JANEIRO - RJ');
INSERT INTO CLIENTE VALUE('JORGE','M',NULL,988368273,'22923110','OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG');

/* FORMA 02 - COLOCANDO AS COLUNAS - "MELHOR ALTERNATIVA"*/ 

INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('ADRIANO','M','SENADOR SOARES - TIJUCA - RIO DE JANEIRO -RJ','998960414',887774856);

/* FORMA 03 - INSERT COMPACTO - SOMENTE MYSQL */

INSERT INTO CLIENTE VALUES('ANA','F','ANA@GMAIL.COM',85548960,'48756695182','PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP'),
                          ('CARLA','F','CARLA@TERRA.COM.BR',774582870,'66587458','SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG');
						 
/* O COMANDO SELECT - SELEÇÃO, PROJEÇÃO E JUNÇÃO */

SELECT NOW();
SELECT NOW() as DATA_HORA, 'ADRIANO SANTOS' AS PROFESSOR;		
SELECT 'ADRIANO SANTOS';
SELECT 'BANCO DE DADOS';

/* ALIAS DE COLUNAS */	

SELECT NOME, SEXO, EMAIL FROM CLIENTE;
SELECT NOME AS CLIENTE, SEXO, EMAIL FROM CLIENTE;
SELECT NOME, SEXO, EMAIL, ENDERECO FROM CLIENTE;
SELECT NOME, SEXO, EMAIL, ENDERECO, NOW() AS DATA_HORA FROM CLIENTE;

/* TABELA PARA FINS ACADEMICOS */

SELECT * FROM CLIENTE;

/* TABELA ERRADA - NÃO DIGITE DIRETAMENTE NO BANCO */

CLEATE TABLE CLIENTE(
	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR(30)
	CPF INT(11),
	TELEFONE VARCHAR(30),
	ENDERECO VARCHAR(100),
); 	

/*
PARA FAZER PROJEÇÃO, USA-SE O COMANDO 'SELECT'
PARA FAZER SELECÇÃO, USA-SE O COMANDO 'WHERE'
*/				 
	
/* FILTRANDO DADOS COM WHERE E LIKE */	

SELECT NOME, TELEFONE FROM CLIENTE;

/* FILTRANDO */

SELECT NOME, SEXO FROM CLIENTE
WHERE SEXO = 'F';

SELECT NOME, ENDERECO FROM CLIENTE
WHERE SEXO = 'M';

SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO = 'RJ';

/* UTILIZANDO O LIKE */

SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO LIKE 'RJ';

/* CARACTER CORINGA % -> QUALQUER COISA 
LINHA DE COMANDO CORRETA */ 

SELECT NOME, SEXO FROM CLIENTE 
WHERE ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE 
WHERE ENDERECO LIKE 'OSCAR CURY%';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE '%CENTRO%';
