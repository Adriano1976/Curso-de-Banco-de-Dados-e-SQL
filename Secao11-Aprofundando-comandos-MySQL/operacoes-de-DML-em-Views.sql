/* UPDATE, INSERT E DELETE - DML */

INSERT INTO V_RELATORIO VALUES(
'ANDREIA','F','ANDREIA@UOL.COM.BR','CEL','873547864','CENTRO','VITORIA','ES'
);

/*
ERROR 1394 (HY000): Can not insert into join view 'comercio.v_relatorio' without fields list
ERROR 1395 (HY000): Can not delete from join view 'comercio.v_relatorio'
*/

DELETE FROM V_RELATORIO WHERE NOME = 'JORGE';

/* É PERMITIDO FAZER UPDATES EM VIEWS COM JOIN */

UPDATE V_RELATORIO SET NOME = 'JOSE' WHERE NOME = 'JORGE';

CREATE TABLE JOGADORES(
	IDJOGADOR INT,
	NOME VARCHAR(30),
	ESTADO CHAR(2)
);

INSERT INTO JOGADORES VALUES(1,'GUERRERO','RS');
INSERT INTO JOGADORES VALUES(2,'GABIGOL','RJ');
INSERT INTO JOGADORES VALUES(3,'GANSO','RJ');
INSERT INTO JOGADORES VALUES(4,'NENÊ', 'RJ');
INSERT INTO JOGADORES VALUES(5,'LOVE','SP');

SELECT * FROM JOGADORES;

/*
+-----------+----------+--------+
| IDJOGADOR | NOME     | ESTADO |
+-----------+----------+--------+
|         1 | GUERRERO | RS     |
|         2 | GABIGOL  | RJ     |
|         3 | GANSO    | RJ     |
|         4 | NENÊ     | RJ     |
|         5 | LOVE     | SP     |
+-----------+----------+--------+
*/

CREATE VIEW V_JOGADORES AS
SELECT NOME, ESTADO
FROM JOGADORES;

SELECT * FROM V_JOGADORES;

/*
+----------+--------+
| NOME     | ESTADO |
+----------+--------+
| GUERRERO | RS     |
| GABIGOL  | RJ     |
| GANSO    | RJ     |
| NENÊ     | RJ     |
| LOVE     | SP     |
+----------+--------+
*/

DELETE FROM V_JOGADORES
WHERE NOME = 'GUERRERO';

INSERT INTO V_JOGADORES VALUES('GUERRERO','RS');

SELECT * FROM JOGADORES;

/*
+-----------+----------+--------+
| IDJOGADOR | NOME     | ESTADO |
+-----------+----------+--------+
|         2 | GABIGOL  | RJ     |
|         3 | GANSO    | RJ     |
|         4 | NENÊ     | RJ     |
|         5 | LOVE     | SP     |
|      NULL | GUERRERO | RS     |
+-----------+----------+--------+
*/

SELECT * FROM V_RELATORIO
WHERE SEXO = 'F';

/*
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| NOME    | SEXO | E-MAIL            | TIPO | NUMERO    | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765  | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676  | JARDINS    | SAO PAULO      | SP     |
| NEIDE   | F    | NEIDE@HOTMAIL.COM | CEL  | 999179868 | ARUANA     | ARACAJU        | SE     |
| LAURA   | F    | LAURA@GMAIL.COM   | RES  | 68976565  | ARUANA     | ARACAJU        | SE     |
| LAURA   | F    | LAURA@GMAIL.COM   | CEL  | 99656675  | ARUANA     | ARACAJU        | SE     |
| GIOVANA | F    | CLIENTE SEM EMAIL | COM  | 88687979  | COPACABANA | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 88965676  | CENTRO     | VITORIA        | ES     |
| LORENA  | F    | CLIENTE SEM EMAIL | CEL  | 89966809  | CENTRO     | CURITIBA       | PR     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 77455786  | CENTRO     | RIO DE JANEIRO | RJ     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 89766554  | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 77755785  | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | COM  | 44522578  | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | COM  | 75524678  | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
*/