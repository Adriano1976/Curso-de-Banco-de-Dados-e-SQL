/*
1� MODELAGEM CONCEITUAL - PROGRAMA DE MODELAGEM BRMODELO 3.0
2� MODELAGEM L�GICA - PROGRAMA DE MODELAGEM BRMODELO 3.0
3� MODELAGEM F�SICA - SCRIPTS DE BANCO DE DADOS
*/


/* INICIANDO A MODELAGEM F�SICA */
/* CRIANDO O BANCO DE DADOS */

CREATE DATABASE LIVRARIA;

/* CONECTANDO-SE AO BANCO */

USE LIVRARIA;

/* CRIANDO A TABELA DE CLIENTE */

CREATE TABLE LIVROS(
	LIV_CODIGO VARCHAR(10) PRIMARY KEY,
	LIV_NOME_LIVRO VARCHAR(30),
	LIV_NOME_AUTOR VARCHAR(60),
	LIV_SEXO_AUTOR CHAR(1),
	LIV_PAGINAS VARCHAR(5),
	LIV_NOME_EDITORA VARCHAR(20),
	LIV_VALOR_LIVRO DECIMAL(10,2),
	LIV_UF_EDITORA CHAR(2),
	LIV_ANO_PUCLICACAO YEAR
	
);

/* VERIFICANDO AS TABELAS DO BANCO */

SHOW TABLES;

/* DESCOBRINDO COMO � A ESTRUTURA DE UMA TABELA */

DESC LIVRARIA;

/* COLOCANDO DADOS NA TABELA COM COLUNAS - MELHOR ALTERNATIVA */

INSERT INTO LIVROS(LIV_CODIGO,LIV_NOME_LIVRO,LIV_NOME_AUTOR,LIV_SEXO_AUTOR,LIV_PAGINAS,LIV_NOME_EDITORA,LIV_VALOR_LIVRO,LIV_UF_EDITORA,LIV_ANO_PUCLICACAO) VALUE('01','Cavaleiro Real','Ana Claudia','F','465','Atlas',49.90,'RJ','2009');
INSERT INTO LIVROS(LIV_CODIGO,LIV_NOME_LIVRO,LIV_NOME_AUTOR,LIV_SEXO_AUTOR,LIV_PAGINAS,LIV_NOME_EDITORA,LIV_VALOR_LIVRO,LIV_UF_EDITORA,LIV_ANO_PUCLICACAO) VALUE('02','SQL para leigos','Jo�o Nunes','M','450','Addison',98.00,'SP','2018');
INSERT INTO LIVROS(LIV_CODIGO,LIV_NOME_LIVRO,LIV_NOME_AUTOR,LIV_SEXO_AUTOR,LIV_PAGINAS,LIV_NOME_EDITORA,LIV_VALOR_LIVRO,LIV_UF_EDITORA,LIV_ANO_PUCLICACAO) VALUE('03','Receitas Caseiras','Celia Tavares','F','210','Atlas',45.00,'RJ','2008');
INSERT INTO LIVROS(LIV_CODIGO,LIV_NOME_LIVRO,LIV_NOME_AUTOR,LIV_SEXO_AUTOR,LIV_PAGINAS,LIV_NOME_EDITORA,LIV_VALOR_LIVRO,LIV_UF_EDITORA,LIV_ANO_PUCLICACAO) VALUE('04','Pessoas Efetivas','Eduardo Santos','M','390','Beta',78,99,'RJ','2018');
INSERT INTO LIVROS(LIV_CODIGO,LIV_NOME_LIVRO,LIV_NOME_AUTOR,LIV_SEXO_AUTOR,LIV_PAGINAS,LIV_NOME_EDITORA,LIV_VALOR_LIVRO,LIV_UF_EDITORA,LIV_ANO_PUCLICACAO) VALUE('05','Habitos Saud�veis','Eduardo Santos','M','630','Beta',150.98,'RJ','2019');
INSERT INTO LIVROS(LIV_CODIGO,LIV_NOME_LIVRO,LIV_NOME_AUTOR,LIV_SEXO_AUTOR,LIV_PAGINAS,LIV_NOME_EDITORA,LIV_VALOR_LIVRO,LIV_UF_EDITORA,LIV_ANO_PUCLICACAO) VALUE('06','A Casa Marrom','Hermes Macedo','M','250','Bubba',60.00,'MG','2016');
INSERT INTO LIVROS(LIV_CODIGO,LIV_NOME_LIVRO,LIV_NOME_AUTOR,LIV_SEXO_AUTOR,LIV_PAGINAS,LIV_NOME_EDITORA,LIV_VALOR_LIVRO,LIV_UF_EDITORA,LIV_ANO_PUCLICACAO) VALUE('07','Estacio Querido','Geraldo Francisco','M','310','Insignio',100.00,'ES','2015');
INSERT INTO LIVROS(LIV_CODIGO,LIV_NOME_LIVRO,LIV_NOME_AUTOR,LIV_SEXO_AUTOR,LIV_PAGINAS,LIV_NOME_EDITORA,LIV_VALOR_LIVRO,LIV_UF_EDITORA,LIV_ANO_PUCLICACAO) VALUE('08','Pra sempre amigas','Leda Silva','F','510','Insignia',78.98,'ES','2011');
INSERT INTO LIVROS(LIV_CODIGO,LIV_NOME_LIVRO,LIV_NOME_AUTOR,LIV_SEXO_AUTOR,LIV_PAGINAS,LIV_NOME_EDITORA,LIV_VALOR_LIVRO,LIV_UF_EDITORA,LIV_ANO_PUCLICACAO) VALUE('09','Copas Inesqueciveis','Marcos Alcantara','M','200','Larson',130.98,'RS','2018');
INSERT INTO LIVROS(LIV_CODIGO,LIV_NOME_LIVRO,LIV_NOME_AUTOR,LIV_SEXO_AUTOR,LIV_PAGINAS,LIV_NOME_EDITORA,LIV_VALOR_LIVRO,LIV_UF_EDITORA,LIV_ANO_PUCLICACAO) VALUE('10','O poder da mente','Clara Mafra','F','120','Continental',56.58,'SP','2017');

/* 1 - Trazer todos os dados. */

SELECT * FROM LIVROS;

/* 2 - Trazer o nome do livro e o nome da editora. */

SELECT LIV_NOME_LIVRO,LIV_NOME_EDITORA FROM LIVROS;

/* 3 - Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino. */

SELECT LIV_NOME_LIVRO,LIV_UF_EDITORA FROM LIVROS
WHERE SEXO = 'M';

/* 4 - Trazer o nome do livro e o n�mero de p�ginas dos livros publicados por autores do sexo feminino. */

SELECT LIV_NOME_LIVRO,LIV_PAGINAS FROM LIVROS
WHERE SEXO = 'F';

/* 5 - Trazer os valores dos livros das editores de S�o Paulo. */

SELECT LIV_VALOR_LIVRO FROM LIVROS
WHERE LIV_UF_EDITORA = 'SP';

/* 6 - Trazer os dados dos autores do sexo masculino que tiveram livros publicos por S�o Paulo ou Rio de Janeiro (Quest�o Desafio). */



