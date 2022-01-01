-- MODIFICANDO TIPO DE CAMPO DE UMA TABELA

ALTER TABLE TABELA
MODIFY COLUNA2 DATE NOT NULL;

DESC TABELA;

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