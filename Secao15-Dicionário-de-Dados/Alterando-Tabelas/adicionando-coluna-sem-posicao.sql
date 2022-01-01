-- ADICIONANDO COLUNA SEM POSICAO. ULTIMA POSICAO.

ALTER TABLE TABELA
ADD COLUNA VARCHAR(30);

-- CONFERINDO ESTRUTURA ALTERADA DA TABELA

DESC TABELA;

/*
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| COLUNA1 | varchar(30) | YES  |     | NULL    |       |
| COLUNA2 | varchar(30) | YES  |     | NULL    |       |
| COLUNA3 | varchar(30) | YES  |     | NULL    |       |
| COLUNA  | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
*/

ALTER TABLE TABELA
ADD COLUNA100 INT;

-- CONFERINDO ESTRUTURA ALTERADA DA TABELA

DESC TABELA;

/*
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| COLUNA1   | varchar(30) | YES  |     | NULL    |       |
| COLUNA2   | varchar(30) | YES  |     | NULL    |       |
| COLUNA3   | varchar(30) | YES  |     | NULL    |       |
| COLUNA    | varchar(30) | YES  |     | NULL    |       |
| COLUNA100 | int         | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
*/