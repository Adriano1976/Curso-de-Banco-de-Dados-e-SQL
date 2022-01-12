/*
Como saberei que posição o banco está considerando para entender se uso o LEFT ou RIGHT?

O Left é o Right depende da posição das tabelas com a cláusula Join. 
Se vc quiser a tabela da esquerda do Join, vai usar Left. 
Se quiser da direita vai usar right. Não tem certo e errado, 
vai depender de como vc escrever a query.
*/

SELECT * FROM CURSOS;

/*
+---------+--------------------------------+-------+--------+-----------+
| IDCURSO | NOME                           | HORAS | VALOR  | ID_PREREQ |
+---------+--------------------------------+-------+--------+-----------+
|       1 | BD RELACIONAL                  |    20 | 400.00 |      NULL |
|       2 | BUSINESS INTELLIGENCE          |    40 | 800.00 |         1 |
|       3 | RELATORIOS AVANCADOS           |    20 | 600.00 |         2 |
|       4 | LOGICA PROGRAMACAO             |    20 | 400.00 |      NULL |
|       5 | RUBY                           |    30 | 500.00 |         4 |
|       6 | JAVASCRIPT                     |    20 | 400.00 |         4 |
|       7 | MYSQL AVANCADO                 |    40 | 800.00 |         1 |
|       9 | PYTHON                         |    20 | 400.00 |      NULL |
|      10 | C++                            |    30 | 500.00 |         4 |
|      11 | RELATORIOS AVANCADOS EM PYTH0N |    20 | 600.00 |         9 |
+---------+--------------------------------+-------+--------+-----------+
*/

SELECT NOME, VALOR, HORAS, IFNULL(ID_PREREQ, 'SEM REQUISITO') REQUISITO 
FROM CURSOS;

/*
+--------------------------------+--------+-------+---------------+
| NOME                           | VALOR  | HORAS | REQUISITO     |
+--------------------------------+--------+-------+---------------+
| BD RELACIONAL                  | 400.00 |    20 | SEM REQUISITO |
| BUSINESS INTELLIGENCE          | 800.00 |    40 | 1             |
| RELATORIOS AVANCADOS           | 600.00 |    20 | 2             |
| LOGICA PROGRAMACAO             | 400.00 |    20 | SEM REQUISITO |
| RUBY                           | 500.00 |    30 | 4             |
| JAVASCRIPT                     | 400.00 |    20 | 4             |
| MYSQL AVANCADO                 | 800.00 |    40 | 1             |
| PYTHON                         | 400.00 |    20 | SEM REQUISITO |
| C++                            | 500.00 |    30 | 4             |
| RELATORIOS AVANCADOS EM PYTH0N | 600.00 |    20 | 9             |
+--------------------------------+--------+-------+---------------+
*/

SELECT 
C.NOME AS CURSO, 
C.VALOR AS VALOR, 
C.HORAS AS CARGA, 
IFNULL(P.NOME, "---") AS PREREQ
FROM CURSOS C LEFT JOIN CURSOS P
ON P.IDCURSO = C.ID_PREREQ;

/*
+--------------------------------+--------+-------+-----------------------+
| CURSO                          | VALOR  | CARGA | PREREQ                |
+--------------------------------+--------+-------+-----------------------+
| BD RELACIONAL                  | 400.00 |    20 | ---                   |
| BUSINESS INTELLIGENCE          | 800.00 |    40 | BD RELACIONAL         |
| RELATORIOS AVANCADOS           | 600.00 |    20 | BUSINESS INTELLIGENCE |
| LOGICA PROGRAMACAO             | 400.00 |    20 | ---                   |
| RUBY                           | 500.00 |    30 | LOGICA PROGRAMACAO    |
| JAVASCRIPT                     | 400.00 |    20 | LOGICA PROGRAMACAO    |
| MYSQL AVANCADO                 | 800.00 |    40 | BD RELACIONAL         |
| PYTHON                         | 400.00 |    20 | ---                   |
| C++                            | 500.00 |    30 | LOGICA PROGRAMACAO    |
| RELATORIOS AVANCADOS EM PYTH0N | 600.00 |    20 | PYTHON                |
+--------------------------------+--------+-------+-----------------------+
*/

SELECT 
CUR.NOME,
CUR.VALOR,
CUR.HORAS,
IFNULL((SELECT C.NOME FROM CURSOS C 
	WHERE C.IDCURSO = CUR.ID_PREREQ),"----") REQUISITO
FROM CURSOS CUR;

/*
+--------------------------------+--------+-------+-----------------------+
| NOME                           | VALOR  | HORAS | REQUISITO             |
+--------------------------------+--------+-------+-----------------------+
| BD RELACIONAL                  | 400.00 |    20 | ----                  |
| BUSINESS INTELLIGENCE          | 800.00 |    40 | BD RELACIONAL         |
| RELATORIOS AVANCADOS           | 600.00 |    20 | BUSINESS INTELLIGENCE |
| LOGICA PROGRAMACAO             | 400.00 |    20 | ----                  |
| RUBY                           | 500.00 |    30 | LOGICA PROGRAMACAO    |
| JAVASCRIPT                     | 400.00 |    20 | LOGICA PROGRAMACAO    |
| MYSQL AVANCADO                 | 800.00 |    40 | BD RELACIONAL         |
| PYTHON                         | 400.00 |    20 | ----                  |
| C++                            | 500.00 |    30 | LOGICA PROGRAMACAO    |
| RELATORIOS AVANCADOS EM PYTH0N | 600.00 |    20 | PYTHON                |
+--------------------------------+--------+-------+-----------------------+
*/

