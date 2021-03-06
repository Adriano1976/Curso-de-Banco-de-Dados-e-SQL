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
