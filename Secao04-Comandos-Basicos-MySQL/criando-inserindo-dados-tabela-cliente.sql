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


/*Tipos de dados */

/*
Todos os banos de dados possuem tipos que devem ser atribuidos aos dados de uma tabela.
Para caracteres literais, temos char e varchar, para números temos int e float, para
objetos como fotos e documentos, temos o blob, para textos extensos, temos o text. 
A disciplina de banco de dados é tão fantástica que ao entendermos o porque das coisas,
podemos iniciar já em modo avançado e um bom exemplo disso são os tipos. Há uma profissão
dentro da área que é a do analista de performance ou tuning, esse profissional é responsável
por analisar o banco de dados e deixá-lo mais rápido. Parece algo avançado, e é! Porém,
com alguas atitudes simples, podemos deixar o banco sem a necessidade de atuação desse profissional.

Cada caracter no banco de dados, vale 1 byte. Sendo assim, se eu entro com o dado JOÃO,
estou entrando com 4 bytes no meu banco. E o que isso tem a ver com a tiagem de tabelas?

O banco de dados funciona como um download de dados da internet. Se baixamos um arquivo de 1 giga,
temos um temo maior que o download de 50 megas, considerando a mesma velocidade de conexão.

Ao tiparmos uma tabela de modo errado ou displicente, vamos aumentar a quantidade de dados que 
será baixada do banco de dados, prolongando assim o tempo de resposta.

Uma comparacao bem didatica é o tipo char e varchar
A palavra var, vem de variant, em ingles, ou seja, que é dinâmica. Logo, vimos que 1 caracter
é igual a 1 byte. Vejamos então a tipagem

varchar(10)
char(10)

entrando a palavra joao

total de bytes varchar(10) = 4 bytes
toal de bytes cahr(10) = 10 bytes

isso ocorre pois o char não varia. Os caracteres restantes serao preenchidos com espaço. 
eles nao ficam vazios. Enquanto que no varchar, o tipo varia conforme o dado.
Entao utilizo sempre o varchar? Não. O charé ligeiramente mais performatico, por nao
ter que gastar tempo variando de tamanho. Entao a regra é utilizar sempre o char quando
sabemos que o numero de caracteres naquela coluna nao vai variar nunca. Por exemplo,
unidade federativa, com dois digitos, sexo com um digito e assim por diante. Vista a diferença
que podemos fazer com uma tipagem correta de tabelas, na próxima aula detalharemos os tipos do mysql
e nos modulos específicos de cada banco, você entenderá os tipos correspondentes no sql server 
e no oracle, que mudam muito pouco.
*/

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

/* OPERADORES LÓGICOS
OR -> PARA QUE A SAÍDA DA QUERY SEJA VERDADEIRA, BASTA QUE APENAS UMA CONDICAO SEJA VERDADEIRA.
AND -> PARA QUE A SAÍDA SEJA VERDADEIRA, TODAS AS CONDICOES PRECISAM SER VERDADEIRA.
 */
 
 SHOW DATABASES;
 
 USE PROJETO;
  
 SELECT * FROM CLIENTE;
 
 /* OR - OU -> FILTRAGEM MAIS GENERALIZADA */
 
 SELECT NOME, SEXO, ENDERECO FROM CLIENTE
 WHERE SEXO = 'M' OR ENDERECO LIKE '%RJ';
 
 SELECT NOME, SEXO, ENDERECO FROM CLIENTE
 WHERE SEXO = 'F' OR ENDERECO LIKE '%ESTACIO';
 
 /* AND - E -> FILTRAGEM MAIS RESTRITA */

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'M' AND ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'F' AND ENDERECO LIKE '%ESTACIO';