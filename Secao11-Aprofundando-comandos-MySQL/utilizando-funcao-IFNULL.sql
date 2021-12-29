/* GERANDO RELATORIOS DE NOME, EMAIL, ESTADO, NUMERO DE TODOS OS CLIENTES */

SELECT C.NOME, C.EMAIL, E.ESTADO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

/*
+---------+-------------------+--------+-----------+
| NOME    | EMAIL             | ESTADO | NUMERO    |
+---------+-------------------+--------+-----------+
| JORGE   | JORGE@IG.COM      | ES     | 78458743  |
| JORGE   | JORGE@IG.COM      | ES     | 56576876  |
| JOAO    | JOAOA@IG.COM      | RJ     | 87866896  |
| CARLOS  | CARLOSA@IG.COM    | RJ     | 54768899  |
| JOAO    | JOAOA@IG.COM      | RJ     | 99667587  |
| ANA     | ANA@IG.COM        | SP     | 78989765  |
| ANA     | ANA@IG.COM        | SP     | 99766676  |
| JOAO    | JOAOA@IG.COM      | RJ     | 66687899  |
| JORGE   | JORGE@IG.COM      | ES     | 89986668  |
| CARLOS  | CARLOSA@IG.COM    | RJ     | 88687909  |
| LAURA   | LAURA@GMAIL.COM   | SE     | 68976565  |
| LAURA   | LAURA@GMAIL.COM   | SE     | 99656675  |
| ANDRE   | ANDRE@GLOBO.COM   | RJ     | 33567765  |
| ANDRE   | ANDRE@GLOBO.COM   | RJ     | 88668786  |
| ANDRE   | ANDRE@GLOBO.COM   | RJ     | 55689654  |
| GIOVANA | NULL              | RJ     | 88687979  |
| KARLA   | KARLA@GMAIL.COM   | ES     | 88965676  |
| LORENA  | NULL              | PR     | 89966809  |
| EDUARDO | NULL              | SP     | 88679978  |
| ANTONIO | ANTONIO@IG.COM    | PR     | 99655768  |
| ANTONIO | ANTONIO@UOL.COM   | SP     | 89955665  |
| ELAINE  | ELAINE@GLOBO.COM  | RJ     | 77455786  |
| ELAINE  | ELAINE@GLOBO.COM  | RJ     | 89766554  |
| CARMEM  | CARMEM@IG.COM     | RJ     | 77755785  |
| CARMEM  | CARMEM@IG.COM     | RJ     | 44522578  |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 75524678  |
| NEIDE   | NEIDE@HOTMAIL.COM | SE     | 999179868 |
+---------+-------------------+--------+-----------+
*/

-- GERANDO RELATORIO UTILIZANDO A FUNCAO IFNULL

IFNULL()

SELECT  C.NOME, 
		IFNULL(C.EMAIL,'NAO TEM EMAIL'), 
		E.ESTADO, 
		T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

/*
+---------+---------------------------------+--------+-----------+
| NOME    | IFNULL(C.EMAIL,'NAO TEM EMAIL') | ESTADO | NUMERO    |
+---------+---------------------------------+--------+-----------+
| JORGE   | JORGE@IG.COM                    | ES     | 78458743  |
| JORGE   | JORGE@IG.COM                    | ES     | 56576876  |
| JOAO    | JOAOA@IG.COM                    | RJ     | 87866896  |
| CARLOS  | CARLOSA@IG.COM                  | RJ     | 54768899  |
| JOAO    | JOAOA@IG.COM                    | RJ     | 99667587  |
| ANA     | ANA@IG.COM                      | SP     | 78989765  |
| ANA     | ANA@IG.COM                      | SP     | 99766676  |
| JOAO    | JOAOA@IG.COM                    | RJ     | 66687899  |
| JORGE   | JORGE@IG.COM                    | ES     | 89986668  |
| CARLOS  | CARLOSA@IG.COM                  | RJ     | 88687909  |
| LAURA   | LAURA@GMAIL.COM                 | SE     | 68976565  |
| LAURA   | LAURA@GMAIL.COM                 | SE     | 99656675  |
| ANDRE   | ANDRE@GLOBO.COM                 | RJ     | 33567765  |
| ANDRE   | ANDRE@GLOBO.COM                 | RJ     | 88668786  |
| ANDRE   | ANDRE@GLOBO.COM                 | RJ     | 55689654  |
| GIOVANA | NAO TEM EMAIL                   | RJ     | 88687979  |
| KARLA   | KARLA@GMAIL.COM                 | ES     | 88965676  |
| LORENA  | NAO TEM EMAIL                   | PR     | 89966809  |
| EDUARDO | NAO TEM EMAIL                   | SP     | 88679978  |
| ANTONIO | ANTONIO@IG.COM                  | PR     | 99655768  |
| ANTONIO | ANTONIO@UOL.COM                 | SP     | 89955665  |
| ELAINE  | ELAINE@GLOBO.COM                | RJ     | 77455786  |
| ELAINE  | ELAINE@GLOBO.COM                | RJ     | 89766554  |
| CARMEM  | CARMEM@IG.COM                   | RJ     | 77755785  |
| CARMEM  | CARMEM@IG.COM                   | RJ     | 44522578  |
| ADRIANA | ADRIANA@GMAIL.COM               | RJ     | 75524678  |
| NEIDE   | NEIDE@HOTMAIL.COM               | SE     | 999179868 |
+---------+---------------------------------+--------+-----------+
*/

SELECT  C.NOME, 
		IFNULL(C.EMAIL,'************'), 
		E.ESTADO, 
		T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

/*
+---------+--------------------------------+--------+----------+
| NOME    | IFNULL(C.EMAIL,'************') | ESTADO | NUMERO   |
+---------+--------------------------------+--------+----------+
| JORGE   | JORGE@IG.COM                   | ES     | 78458743 |
| JORGE   | JORGE@IG.COM                   | ES     | 56576876 |
| JOAO    | JOAOA@IG.COM                   | RJ     | 87866896 |
| CARLOS  | CARLOSA@IG.COM                 | RJ     | 54768899 |
| JOAO    | JOAOA@IG.COM                   | RJ     | 99667587 |
| ANA     | ANA@IG.COM                     | SP     | 78989765 |
| ANA     | ANA@IG.COM                     | SP     | 99766676 |
| JOAO    | JOAOA@IG.COM                   | RJ     | 66687899 |
| JORGE   | JORGE@IG.COM                   | ES     | 89986668 |
| CARLOS  | CARLOSA@IG.COM                 | RJ     | 88687909 |
| FLAVIO  | FLAVIO@IG.COM                  | MG     | 68976565 |
| FLAVIO  | FLAVIO@IG.COM                  | MG     | 99656675 |
| GIOVANA | ************                   | RJ     | 33567765 |
| GIOVANA | ************                   | RJ     | 88668786 |
| GIOVANA | ************                   | RJ     | 55689654 |
| KARLA   | KARLA@GMAIL.COM                | RJ     | 88687979 |
| DANIELE | DANIELE@GMAIL.COM              | ES     | 88965676 |
| EDUARDO | ************                   | PR     | 89966809 |
| ANTONIO | ANTONIO@IG.COM                 | SP     | 88679978 |
| ANTONIO | ANTONIO@UOL.COM                | PR     | 99655768 |
| ELAINE  | ELAINE@GLOBO.COM               | SP     | 89955665 |
| CARMEM  | CARMEM@IG.COM                  | RJ     | 77455786 |
| CARMEM  | CARMEM@IG.COM                  | RJ     | 89766554 |
| ADRIANA | ADRIANA@GMAIL.COM              | RJ     | 77755785 |
| ADRIANA | ADRIANA@GMAIL.COM              | RJ     | 44522578 |
| JOICE   | JOICE@GMAIL.COM                | RJ     | 44522578 |
+---------+--------------------------------+--------+----------+
*/

SELECT  C.NOME, 
		IFNULL(C.EMAIL,'************') AS "E-MAIL", 
		E.ESTADO, 
		T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

/*
+---------+-------------------+--------+-----------+
| NOME    | E-MAIL            | ESTADO | NUMERO    |
+---------+-------------------+--------+-----------+
| JORGE   | JORGE@IG.COM      | ES     | 78458743  |
| JORGE   | JORGE@IG.COM      | ES     | 56576876  |
| JOAO    | JOAOA@IG.COM      | RJ     | 87866896  |
| CARLOS  | CARLOSA@IG.COM    | RJ     | 54768899  |
| JOAO    | JOAOA@IG.COM      | RJ     | 99667587  |
| ANA     | ANA@IG.COM        | SP     | 78989765  |
| ANA     | ANA@IG.COM        | SP     | 99766676  |
| JOAO    | JOAOA@IG.COM      | RJ     | 66687899  |
| JORGE   | JORGE@IG.COM      | ES     | 89986668  |
| CARLOS  | CARLOSA@IG.COM    | RJ     | 88687909  |
| LAURA   | LAURA@GMAIL.COM   | SE     | 68976565  |
| LAURA   | LAURA@GMAIL.COM   | SE     | 99656675  |
| ANDRE   | ANDRE@GLOBO.COM   | RJ     | 33567765  |
| ANDRE   | ANDRE@GLOBO.COM   | RJ     | 88668786  |
| ANDRE   | ANDRE@GLOBO.COM   | RJ     | 55689654  |
| GIOVANA | ************      | RJ     | 88687979  |
| KARLA   | KARLA@GMAIL.COM   | ES     | 88965676  |
| LORENA  | ************      | PR     | 89966809  |
| EDUARDO | ************      | SP     | 88679978  |
| ANTONIO | ANTONIO@IG.COM    | PR     | 99655768  |
| ANTONIO | ANTONIO@UOL.COM   | SP     | 89955665  |
| ELAINE  | ELAINE@GLOBO.COM  | RJ     | 77455786  |
| ELAINE  | ELAINE@GLOBO.COM  | RJ     | 89766554  |
| CARMEM  | CARMEM@IG.COM     | RJ     | 77755785  |
| CARMEM  | CARMEM@IG.COM     | RJ     | 44522578  |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 75524678  |
| NEIDE   | NEIDE@HOTMAIL.COM | SE     | 999179868 |
+---------+-------------------+--------+-----------+
*/
