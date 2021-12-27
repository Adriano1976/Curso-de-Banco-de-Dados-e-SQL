/* VIEW */

SELECT  C.NOME, 
		C.SEXO, 
		C.EMAIL, 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE;

+---------+------+-------------------+------+-----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO    | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| JORGE   | M    | JORGE@IG.COM      | CEL  | 78458743  | CENTRO     | VITORIA        | ES     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 56576876  | CENTRO     | VITORIA        | ES     |
| JOAO    | M    | JOAOA@IG.COM      | CEL  | 87866896  | CENTRO     | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOSA@IG.COM    | COM  | 54768899  | ESTACIO    | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | RES  | 99667587  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765  | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676  | JARDINS    | SAO PAULO      | SP     |
| JOAO    | M    | JOAOA@IG.COM      | COM  | 66687899  | CENTRO     | RIO DE JANEIRO | RJ     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 89986668  | CENTRO     | VITORIA        | ES     |
| CARLOS  | M    | CARLOSA@IG.COM    | CEL  | 88687909  | ESTACIO    | RIO DE JANEIRO | RJ     |
| LAURA   | F    | LAURA@GMAIL.COM   | RES  | 68976565  | ARUANA     | ARACAJU        | SE     |
| LAURA   | F    | LAURA@GMAIL.COM   | CEL  | 99656675  | ARUANA     | ARACAJU        | SE     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | CEL  | 33567765  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | CEL  | 88668786  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | COM  | 55689654  | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | NULL              | COM  | 88687979  | COPACABANA | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 88965676  | CENTRO     | VITORIA        | ES     |
| LORENA  | F    | NULL              | CEL  | 89966809  | CENTRO     | CURITIBA       | PR     |
| EDUARDO | M    | NULL              | COM  | 88679978  | JARDINS    | SAO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@IG.COM    | CEL  | 99655768  | BOM RETIRO | CURITIBA       | PR     |
| ANTONIO | M    | ANTONIO@UOL.COM   | RES  | 89955665  | LAPA       | SAO PAULO      | SP     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 77455786  | CENTRO     | RIO DE JANEIRO | RJ     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 89766554  | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 77755785  | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | COM  | 44522578  | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | COM  | 75524678  | CENTRO     | RIO DE JANEIRO | RJ     |
| NEIDE   | F    | NEIDE@HOTMAIL.COM | CEL  | 999179868 | ARUANA     | ARACAJU        | SE     |
+---------+------+-------------------+------+-----------+------------+----------------+--------+

CREATE VIEW RELATORIO AS
SELECT  C.NOME, 
		C.SEXO, 
		C.EMAIL, 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE;

SELECT * FROM RELATORIO;

+---------+------+-------------------+------+-----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO    | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| JORGE   | M    | JORGE@IG.COM      | CEL  | 78458743  | CENTRO     | VITORIA        | ES     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 56576876  | CENTRO     | VITORIA        | ES     |
| JOAO    | M    | JOAOA@IG.COM      | CEL  | 87866896  | CENTRO     | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOSA@IG.COM    | COM  | 54768899  | ESTACIO    | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | RES  | 99667587  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765  | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676  | JARDINS    | SAO PAULO      | SP     |
| JOAO    | M    | JOAOA@IG.COM      | COM  | 66687899  | CENTRO     | RIO DE JANEIRO | RJ     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 89986668  | CENTRO     | VITORIA        | ES     |
| CARLOS  | M    | CARLOSA@IG.COM    | CEL  | 88687909  | ESTACIO    | RIO DE JANEIRO | RJ     |
| LAURA   | F    | LAURA@GMAIL.COM   | RES  | 68976565  | ARUANA     | ARACAJU        | SE     |
| LAURA   | F    | LAURA@GMAIL.COM   | CEL  | 99656675  | ARUANA     | ARACAJU        | SE     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | CEL  | 33567765  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | CEL  | 88668786  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | COM  | 55689654  | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | NULL              | COM  | 88687979  | COPACABANA | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 88965676  | CENTRO     | VITORIA        | ES     |
| LORENA  | F    | NULL              | CEL  | 89966809  | CENTRO     | CURITIBA       | PR     |
| EDUARDO | M    | NULL              | COM  | 88679978  | JARDINS    | SAO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@IG.COM    | CEL  | 99655768  | BOM RETIRO | CURITIBA       | PR     |
| ANTONIO | M    | ANTONIO@UOL.COM   | RES  | 89955665  | LAPA       | SAO PAULO      | SP     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 77455786  | CENTRO     | RIO DE JANEIRO | RJ     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 89766554  | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 77755785  | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | COM  | 44522578  | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | COM  | 75524678  | CENTRO     | RIO DE JANEIRO | RJ     |
| NEIDE   | F    | NEIDE@HOTMAIL.COM | CEL  | 999179868 | ARUANA     | ARACAJU        | SE     |
+---------+------+-------------------+------+-----------+------------+----------------+--------+

SHOW TABLES;
SHOW DATABASES;
SHOW VIEW; -- NAO EXISTE

/* APAGANDO UMA VIEW */

DROP VIEW RELATORIO;

/* INSERINDO UM PREFIXO */

CREATE VIEW V_RELATORIO AS
SELECT  C.NOME, 
		C.SEXO, 
		IFNULL(C.EMAIL,'CLIENTE SEM EMAIL') AS "E-MAIL", 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE;

SHOW TABLES;

+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| produto            |
| telefone           |
| v_relatorio        |
+--------------------+

SELECT * FROM V_RELATORIO;

+---------+------+-------------------+------+-----------+------------+----------------+--------+
| NOME    | SEXO | E-MAIL            | TIPO | NUMERO    | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| JORGE   | M    | JORGE@IG.COM      | CEL  | 78458743  | CENTRO     | VITORIA        | ES     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 56576876  | CENTRO     | VITORIA        | ES     |
| JOAO    | M    | JOAOA@IG.COM      | CEL  | 87866896  | CENTRO     | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOSA@IG.COM    | COM  | 54768899  | ESTACIO    | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | RES  | 99667587  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765  | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676  | JARDINS    | SAO PAULO      | SP     |
| JOAO    | M    | JOAOA@IG.COM      | COM  | 66687899  | CENTRO     | RIO DE JANEIRO | RJ     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 89986668  | CENTRO     | VITORIA        | ES     |
| CARLOS  | M    | CARLOSA@IG.COM    | CEL  | 88687909  | ESTACIO    | RIO DE JANEIRO | RJ     |
| LAURA   | F    | LAURA@GMAIL.COM   | RES  | 68976565  | ARUANA     | ARACAJU        | SE     |
| LAURA   | F    | LAURA@GMAIL.COM   | CEL  | 99656675  | ARUANA     | ARACAJU        | SE     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | CEL  | 33567765  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | CEL  | 88668786  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | COM  | 55689654  | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | CLIENTE SEM EMAIL | COM  | 88687979  | COPACABANA | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 88965676  | CENTRO     | VITORIA        | ES     |
| LORENA  | F    | CLIENTE SEM EMAIL | CEL  | 89966809  | CENTRO     | CURITIBA       | PR     |
| EDUARDO | M    | CLIENTE SEM EMAIL | COM  | 88679978  | JARDINS    | SAO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@IG.COM    | CEL  | 99655768  | BOM RETIRO | CURITIBA       | PR     |
| ANTONIO | M    | ANTONIO@UOL.COM   | RES  | 89955665  | LAPA       | SAO PAULO      | SP     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 77455786  | CENTRO     | RIO DE JANEIRO | RJ     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 89766554  | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 77755785  | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | COM  | 44522578  | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | COM  | 75524678  | CENTRO     | RIO DE JANEIRO | RJ     |
| NEIDE   | F    | NEIDE@HOTMAIL.COM | CEL  | 999179868 | ARUANA     | ARACAJU        | SE     |
+---------+------+-------------------+------+-----------+------------+----------------+--------+

SELECT NOME, NUMERO, ESTADO
FROM V_RELATORIO;