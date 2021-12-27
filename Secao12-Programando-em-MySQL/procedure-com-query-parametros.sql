/* PROCEDURES */


CREATE DATABASE PROJETO;

USE PROJETO;

CREATE TABLE CURSOS(
	IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	HORAS INT(3) NOT NULL,
	VALOR FLOAT(10,2) NOT NULL
);

DESC CURSOS;

+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| IDCURSO | int         | NO   | PRI | NULL    | auto_increment |
| NOME    | varchar(30) | NO   |     | NULL    |                |
| HORAS   | int         | NO   |     | NULL    |                |
| VALOR   | float(10,2) | NO   |     | NULL    |                |
+---------+-------------+------+-----+---------+----------------+

INSERT INTO CURSOS VALUES(NULL,'JAVA',30,500.00);
INSERT INTO CURSOS VALUES(NULL,'FUNDAMENTOS DE BANCOS DE DADOS',40,700.00);
INSERT INTO CURSOS VALUES(NULL,'FUNÇÕES EM PYTH0N',50,100.00);
INSERT INTO CURSOS VALUES(NULL,'PYTHON COM BANCO DE DADOS',50,150.00);

SELECT * FROM CURSOS;

+---------+--------------------------------+-------+--------+
| IDCURSO | NOME                           | HORAS | VALOR  |
+---------+--------------------------------+-------+--------+
|       1 | JAVA                           |    30 | 500.00 |
|       2 | FUNDAMENTOS DE BANCOS DE DADOS |    40 | 700.00 |
|       3 | FUNÇÕES EM PYTH0N              |    50 | 100.00 |
|       4 | PYTHON COM BANCO DE DADOS      |    50 | 150.00 |
+---------+--------------------------------+-------+--------+

DELIMITER #

STATUS

--------------
C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe  Ver 8.0.27 for Win64 on x86_64 (MySQL Community Server - GPL)

Connection id:          8
Current database:       projeto
Current user:           root@localhost
SSL:                    Cipher in use is TLS_AES_256_GCM_SHA384
Using delimiter:        #
Server version:         8.0.27 MySQL Community Server - GPL
Protocol version:       10
Connection:             localhost via TCP/IP
Insert id:              4
Server characterset:    utf8mb4
Db     characterset:    utf8mb4
Client characterset:    utf8mb4
Conn.  characterset:    utf8mb4
TCP port:               3306
Binary data as:         Hexadecimal
Uptime:                 1 day 20 hours 39 min 50 sec

Threads: 2  Questions: 134  Slow queries: 0  Opens: 162  Flush tables: 3  Open tables: 81  Queries per second avg: 0.000
--------------

CREATE PROCEDURE CAD_CURSO(P_NOME VARCHAR(30),
						   P_HORAS INT(30),
						   P_PRECO  FLOAT(10,2))
BEGIN
	
	INSERT INTO CURSOS VALUES(NULL,P_NOME,P_HORAS,P_PRECO);

END
#

DELIMITER ;

CALL CAD_CURSO('BI SQL SERVER',35,3000.00);
CALL CAD_CURSO('POWER BI',20,1000.00);
CALL CAD_CURSO('TABLEAU',30,1200.00);
CALL CAD_CURSO('PHP AVANÇADO',30,500.00);
CALL CAD_CURSO('MINERAÇÃO COM PYTHON',40,900.00);
CALL CAD_CURSO('JAVASCRIPT BÁSICO',20,400.00);
CALL CAD_CURSO('TABLEAU AVANÇADO',50,1600.00);

SELECT * FROM CURSOS;

+---------+--------------------------------+-------+---------+
| IDCURSO | NOME                           | HORAS | VALOR   |
+---------+--------------------------------+-------+---------+
|       1 | JAVA                           |    30 |  500.00 |
|       2 | FUNDAMENTOS DE BANCOS DE DADOS |    40 |  700.00 |
|       3 | FUNÇÕES EM PYTH0N              |    50 |  100.00 |
|       4 | PYTHON COM BANCO DE DADOS      |    50 |  150.00 |
|       5 | BI SQL SERVER                  |    35 | 3000.00 |
|       6 | POWER BI                       |    20 | 1000.00 |
|       7 | TABLEAU                        |    30 | 1200.00 |
|       8 | PHP AVANÇADO                   |    30 |  500.00 |
|       9 | MINERAÇÃO COM PYTHON           |    40 |  900.00 |
|      10 | JAVASCRIPT BÁSICO              |    20 |  400.00 |
|      11 | TABLEAU AVANÇADO               |    50 | 1600.00 |
+---------+--------------------------------+-------+---------+

/* CRIAR UMA PROCEDURE PARA CONSULTAR CURSOS */

DELIMITER #

STATUS

CREATE PROCEDURE CONSULTA_CURSO()
BEGIN

	SELECT * FROM CURSOS;

END
#

DELIMITER ;

CALL CONSULTA_CURSO;

+---------+--------------------------------+-------+---------+
| IDCURSO | NOME                           | HORAS | VALOR   |
+---------+--------------------------------+-------+---------+
|       1 | JAVA                           |    30 |  500.00 |
|       2 | FUNDAMENTOS DE BANCOS DE DADOS |    40 |  700.00 |
|       3 | FUNÇÕES EM PYTH0N              |    50 |  100.00 |
|       4 | PYTHON COM BANCO DE DADOS      |    50 |  150.00 |
|       5 | BI SQL SERVER                  |    35 | 3000.00 |
|       6 | POWER BI                       |    20 | 1000.00 |
|       7 | TABLEAU                        |    30 | 1200.00 |
|       8 | PHP AVANÇADO                   |    30 |  500.00 |
|       9 | MINERAÇÃO COM PYTHON           |    40 |  900.00 |
|      10 | JAVASCRIPT BÁSICO              |    20 |  400.00 |
|      11 | TABLEAU AVANÇADO               |    50 | 1600.00 |
+---------+--------------------------------+-------+---------+