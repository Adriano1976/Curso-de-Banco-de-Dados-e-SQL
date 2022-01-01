-- RENOMEANDO O NOME DA TABELA

ALTER TABLE TABELA
RENAME PESSOA;

DESC PESSOA;

/*
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| COLUNA1   | varchar(30) | YES  |     | NULL    |       |
| COLUNA2   | date        | NO   |     | NULL    |       |
| COLUNA3   | varchar(30) | YES  |     | NULL    |       |
| COLUNA4   | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA    | varchar(30) | YES  |     | NULL    |       |
| COLUNA100 | int         | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
*/