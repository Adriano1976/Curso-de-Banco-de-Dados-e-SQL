/* CRIANDO A TABELA VENDEDORES PARA SERVIR COMO BASE 
PARA MOSTRAR COMO USAR ALGUMAS FUNÇÕES.*/

CREATE TABLE VENDEDORES(
	IDVENDEDOR INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	SEXO CHAR(1),
	JANEIRO FLOAT(10,2),
	FEVEREIRO FLOAT(10,2),
	MARCO FLOAT(10,2)
);

/* PARA CONFIRMAR SE A TABELA FOI FEITA, USE ESSE COMANDO 
PARA DESCREVER A ESTRUTURA DA TABELA CRIADA ANTERIORMENTE.*/

DESC VENDEDORES;

/*
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDVENDEDOR | int         | NO   | PRI | NULL    | auto_increment |
| NOME       | varchar(30) | YES  |     | NULL    |                |
| SEXO       | char(1)     | YES  |     | NULL    |                |
| JANEIRO    | float(10,2) | YES  |     | NULL    |                |
| FEVEREIRO  | float(10,2) | YES  |     | NULL    |                |
| MARCO      | float(10,2) | YES  |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
*/