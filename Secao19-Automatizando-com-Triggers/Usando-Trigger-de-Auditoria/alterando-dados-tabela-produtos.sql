SELECT * FROM PRODUTOS;

/*
+-----------+--------------------------------+--------+
| IDPRODUTO | NOME                           | VALOR  |
+-----------+--------------------------------+--------+
|         1 | LIVRO MODELAGEM                |  50.00 |
|         2 | LIVRO BI                       |  80.00 |
|         3 | LIVRO ORACLE                   |  70.00 |
|         4 | LIVRO SQL SERVER               | 100.00 |
|         5 | LIVRO PYTHON                   |  50.00 |
|         6 | LIVRO JAVASCRIPT               |  80.00 |
|         7 | LIVRO INTELIGENCIA ARTIFICIAL  |  70.00 |
|         8 | LIVRO ENGENHARIA DE SOFTWARE   | 100.00 |
|         9 | LIVRO DE UML                   |  50.00 |
|        10 | LIVRO UX                       |  80.00 |
|        11 | LIVRO JAVA                     |  70.00 |
|        12 | LIVRO ROBY                     | 100.00 |
|        13 | LIVRO PYTHON                   |  50.00 |
|        14 | LIVRO HTML                     |  80.00 |
|        16 | LIVRO ENGENHARIA DE REQUISITOS | 100.00 |
+-----------+--------------------------------+--------+
*/

UPDATE PRODUTOS SET VALOR = 110.00
WHERE IDPRODUTO = 4;

-- Query OK, 1 row affected (0.21 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0

SELECT * FROM PRODUTOS;

/*
+-----------+--------------------------------+--------+
| IDPRODUTO | NOME                           | VALOR  |
+-----------+--------------------------------+--------+
|         1 | LIVRO MODELAGEM                |  50.00 |
|         2 | LIVRO BI                       |  80.00 |
|         3 | LIVRO ORACLE                   |  70.00 |
|         4 | LIVRO SQL SERVER               | 110.00 |
|         5 | LIVRO PYTHON                   |  50.00 |
|         6 | LIVRO JAVASCRIPT               |  80.00 |
|         7 | LIVRO INTELIGENCIA ARTIFICIAL  |  70.00 |
|         8 | LIVRO ENGENHARIA DE SOFTWARE   | 100.00 |
|         9 | LIVRO DE UML                   |  50.00 |
|        10 | LIVRO UX                       |  80.00 |
|        11 | LIVRO JAVA                     |  70.00 |
|        12 | LIVRO ROBY                     | 100.00 |
|        13 | LIVRO PYTHON                   |  50.00 |
|        14 | LIVRO HTML                     |  80.00 |
|        16 | LIVRO ENGENHARIA DE REQUISITOS | 100.00 |
+-----------+--------------------------------+--------+
*/

SELECT * FROM BACKUP.BKP_PRODUTOS;

/*
+----------+-----------+--------------------------------+----------------+----------------+---------------------+----------------+--------+
| IDBACKUP | IDPRODUTO | NOME                           | VALOR_ORIGINAL | VALOR_ALTERADO | DATA                | USUARIO        | EVENTO |
+----------+-----------+--------------------------------+----------------+----------------+---------------------+----------------+--------+
|        1 |         1 | LIVRO MODELAGEM                |           NULL |          50.00 | 2022-01-11 17:44:59 | root@localhost | I      |
|        2 |         2 | LIVRO BI                       |           NULL |          80.00 | 2022-01-11 17:46:03 | root@localhost | I      |
|        3 |         3 | LIVRO ORACLE                   |           NULL |          70.00 | 2022-01-11 17:46:03 | root@localhost | I      |
|        4 |         4 | LIVRO SQL SERVER               |           NULL |         100.00 | 2022-01-11 17:46:04 | root@localhost | I      |
|        5 |         5 | LIVRO PYTHON                   |           NULL |          50.00 | 2022-01-11 17:46:04 | root@localhost | I      |
|        6 |         6 | LIVRO JAVASCRIPT               |           NULL |          80.00 | 2022-01-11 17:46:05 | root@localhost | I      |
|        7 |         7 | LIVRO INTELIGENCIA ARTIFICIAL  |           NULL |          70.00 | 2022-01-11 17:46:05 | root@localhost | I      |
|        8 |         8 | LIVRO ENGENHARIA DE SOFTWARE   |           NULL |         100.00 | 2022-01-11 17:46:05 | root@localhost | I      |
|        9 |         9 | LIVRO DE UML                   |           NULL |          50.00 | 2022-01-11 17:46:05 | root@localhost | I      |
|       10 |        10 | LIVRO UX                       |           NULL |          80.00 | 2022-01-11 17:46:05 | root@localhost | I      |
|       11 |        11 | LIVRO JAVA                     |           NULL |          70.00 | 2022-01-11 17:46:06 | root@localhost | I      |
|       12 |        12 | LIVRO ROBY                     |           NULL |         100.00 | 2022-01-11 17:46:06 | root@localhost | I      |
|       13 |        13 | LIVRO PYTHON                   |           NULL |          50.00 | 2022-01-11 17:46:06 | root@localhost | I      |
|       14 |        14 | LIVRO HTML                     |           NULL |          80.00 | 2022-01-11 17:46:06 | root@localhost | I      |
|       15 |        15 | LIVRO MARKETING DIGITAL        |           NULL |          70.00 | 2022-01-11 17:46:07 | root@localhost | I      |
|       16 |        16 | LIVRO ENGENHARIA DE REQUISITOS |           NULL |         100.00 | 2022-01-11 17:46:09 | root@localhost | I      |
|       17 |        15 | LIVRO MARKETING DIGITAL        |          70.00 |           NULL | 2022-01-11 17:48:19 | root@localhost | D      |
|       18 |         4 | LIVRO SQL SERVER               |         100.00 |         110.00 | 2022-01-11 17:50:49 | root@localhost | U      |
+----------+-----------+--------------------------------+----------------+----------------+---------------------+----------------+--------+
*/
