SELECT * FROM USUARIO;

/*
+-----------+----------------+------------------+-------------+
| IDUSUARIO | NOME           | LOGIN            | SENHA       |
+-----------+----------------+------------------+-------------+
|         1 | ANDRADE        | ANDRADE2009      | HEXACAMPEAO |
|         2 | MARCOS         | MARCOS.2020      | 12458547aS@ |
|         3 | ADRIANO        | ADRIRADIOLOGISTA | ATOMY2021   |
|         4 | NEIDEFFERREIRA | ANDRADE2009      | HEXACAMPEAO |
|         5 | LAURA_BEE      | LAURA_BEE        | 4975DFHJID  |
|         6 | SANDRO         | SANDRO2009       | HEXACAMPEAO |
|         7 | ROBERVAL       | ROBERVAL2009     | HEXACAMPEAO |
|         8 | ADRENALINA     | ADRENALINA2009   | HEXACAMPEAO |
|         9 | CHIRLENE       | CHIRLENE2009     | HEXACAMPEAO |
|        10 | MARIANA        | MARIANA2009      | HEXAAAMPEAO |
+-----------+----------------+------------------+-------------+
*/

DELETE FROM USUARIO WHERE IDUSUARIO = 1;
DELETE FROM USUARIO WHERE IDUSUARIO = 10;

SELECT * FROM USUARIO;

/*
+-----------+----------------+------------------+-------------+
| IDUSUARIO | NOME           | LOGIN            | SENHA       |
+-----------+----------------+------------------+-------------+
|         2 | MARCOS         | MARCOS.2020      | 12458547aS@ |
|         3 | ADRIANO        | ADRIRADIOLOGISTA | ATOMY2021   |
|         4 | NEIDEFFERREIRA | ANDRADE2009      | HEXACAMPEAO |
|         5 | LAURA_BEE      | LAURA_BEE        | 4975DFHJID  |
|         6 | SANDRO         | SANDRO2009       | HEXACAMPEAO |
|         7 | ROBERVAL       | ROBERVAL2009     | HEXACAMPEAO |
|         8 | ADRENALINA     | ADRENALINA2009   | HEXACAMPEAO |
|         9 | CHIRLENE       | CHIRLENE2009     | HEXACAMPEAO |
+-----------+----------------+------------------+-------------+
*/

SELECT * FROM BACKUP_USUARIO;

/*
+----------+-----------+---------+-------------+
| IDBACKUP | IDUSUARIO | NOME    | LOGIN       |
+----------+-----------+---------+-------------+
|        1 |         1 | ANDRADE | ANDRADE2009 |
|        2 |        10 | MARIANA | MARIANA2009 |
+----------+-----------+---------+-------------+
*/
