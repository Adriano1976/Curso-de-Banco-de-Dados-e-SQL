-- Inserindo dados na tabela JOGADOR

INSERT INTO JOGADOR VALUES(NULL,'GUERRERO');
INSERT INTO JOGADOR VALUES(NULL,'BRANCO');
INSERT INTO JOGADOR VALUES(NULL,'ZICO');
INSERT INTO JOGADOR VALUES(NULL,'RAMÁRIO');
INSERT INTO JOGADOR VALUES(NULL,'PELÉ');

-- Conferindo os dados inseridos na tabela JOGADOR

SELECT * FROM JOGADOR;

/*
+-----------+----------+
| IDJOGADOR | NOME     |
+-----------+----------+
|         1 | GUERRERO |
|         2 | BRANCO   |
|         3 | ZICO     |
|         4 | RAMÁRIO  |
|         5 | PELÉ     |
+-----------+----------+
*/

-- Inserindo dados na tabela TIMES

INSERT INTO TIMES VALUES(NULL,'FLAMENGO',1);
INSERT INTO TIMES VALUES(NULL,'FLAMENGO',2);
INSERT INTO TIMES VALUES(NULL,'FLAMENGO',3);
INSERT INTO TIMES VALUES(NULL,'FLAMENGO',4);
INSERT INTO TIMES VALUES(NULL,'FLAMENGO',5);

-- Conferindo os dados inseridos na tabela TIMES

SELECT * FROM TIMES;

/*
+--------+----------+------------+
| IDTIME | NOMETIME | ID_JOGADOR |
+--------+----------+------------+
|      1 | FLAMENGO |          1 |
|      2 | FLAMENGO |          2 |
|      3 | FLAMENGO |          3 |
|      4 | FLAMENGO |          4 |
|      5 | FLAMENGO |          5 |
+--------+----------+------------+
*/

-- Inserindo dados na tabela CLIENTE

INSERT INTO CLIENTE VALUES(1,'RICARDO');
INSERT INTO CLIENTE VALUES(2,'CLARA');
INSERT INTO CLIENTE VALUES(3,'JULIO');
INSERT INTO CLIENTE VALUES(4,'ANA');

-- Conferindo os dados inseridos na tabela CLIENTE

SELECT * FROM CLIENTE;

/*
+-----------+---------+
| IDCLIENTE | NOME    |
+-----------+---------+
|         1 | RICARDO |
|         2 | CLARA   |
|         3 | JULIO   |
|         4 | ANA     |
+-----------+---------+
*/

-- Inserindo dados na tabela TELEFONE

INSERT INTO TELEFONE VALUES(10,'CEL','37834334',2);
INSERT INTO TELEFONE VALUES(20,'RES','67465656',2);
INSERT INTO TELEFONE VALUES(30,'CEL','88665645',1);
INSERT INTO TELEFONE VALUES(40,'RES','77543546',3);
INSERT INTO TELEFONE VALUES(50,'COM','75454675',1);
INSERT INTO TELEFONE VALUES(60,'CEL','76765455',4);

-- Conferindo os dados inseridos na tabela TELEFONE

SELECT * FROM TELEFONE;

/*
+------------+------+----------+------------+
| IDTELEFONE | TIPO | NUMERO   | ID_CLIENTE |
+------------+------+----------+------------+
|         10 | CEL  | 37834334 |          2 |
|         20 | RES  | 67465656 |          2 |
|         30 | CEL  | 88665645 |          1 |
|         40 | RES  | 77543546 |          3 |
|         50 | COM  | 75454675 |          1 |
|         60 | CEL  | 76765455 |          4 |
+------------+------+----------+------------+
*/