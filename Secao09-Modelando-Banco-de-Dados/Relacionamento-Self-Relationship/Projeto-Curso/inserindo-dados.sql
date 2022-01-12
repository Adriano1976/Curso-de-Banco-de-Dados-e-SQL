INSERT INTO CURSOS VALUES(NULL,'BD RELACIONAL',20,400.00,NULL);
INSERT INTO CURSOS VALUES(NULL,'BUSINESS INTELLIGENCE',40,800.00,1);
INSERT INTO CURSOS VALUES(NULL,'RELATORIOS AVANCADOS',20,600.00,2);
INSERT INTO CURSOS VALUES(NULL,'LOGICA PROGRAMACAO',20,400.00,NULL);
INSERT INTO CURSOS VALUES(NULL,'RUBY',30,500.00,4);
INSERT INTO CURSOS VALUES(NULL,'JAVASCRIPT',20,400.00,4);
INSERT INTO CURSOS VALUES(NULL,'MYSQL AVANCADO',40,800.00,1);
INSERT INTO CURSOS VALUES(NULL,'RELATORIOS AVANCADOS EM PYTH0N',20,600.00,9);
INSERT INTO CURSOS VALUES(NULL,'PYTHON',20,400.00,NULL);
INSERT INTO CURSOS VALUES(NULL,'C++',30,500.00,4);

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
