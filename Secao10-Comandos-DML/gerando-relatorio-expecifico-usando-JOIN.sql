/* GERANDO UM RELATORIO COM OS IDS E EMAIL DAS MULHERES QUE MOREM NO CENTRO DO RIO DE JANEIRO E 
NAO TENHAM CELULAR */

-- 1ª PASSO: VISUALIZAR AS TABELAS CLIENTE, ENDERECO E TELEFONE JUNTOS.

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

/*
+-----------+-------------------+---------+------+
| IDCLIENTE | EMAIL             | NOME    | SEXO |
+-----------+-------------------+---------+------+
|         1 | JOAOA@IG.COM      | JOAO    | M    |
|         1 | JOAOA@IG.COM      | JOAO    | M    |
|         1 | JOAOA@IG.COM      | JOAO    | M    |
|         2 | CARLOSA@IG.COM    | CARLOS  | M    |
|         2 | CARLOSA@IG.COM    | CARLOS  | M    |
|         3 | ANA@IG.COM        | ANA     | F    |
|         3 | ANA@IG.COM        | ANA     | F    |
|         5 | JORGE@IG.COM      | JORGE   | M    |
|         5 | JORGE@IG.COM      | JORGE   | M    |
|         5 | JORGE@IG.COM      | JORGE   | M    |
|         8 | NEIDE@HOTMAIL.COM | NEIDE   | F    |
|         9 | LAURA@GMAIL.COM   | LAURA   | F    |
|         9 | LAURA@GMAIL.COM   | LAURA   | F    |
|        11 | ANDRE@GLOBO.COM   | ANDRE   | M    |
|        11 | ANDRE@GLOBO.COM   | ANDRE   | M    |
|        11 | ANDRE@GLOBO.COM   | ANDRE   | M    |
|        12 | NULL              | GIOVANA | F    |
|        13 | KARLA@GMAIL.COM   | KARLA   | F    |
|        15 | NULL              | LORENA  | F    |
|        16 | NULL              | EDUARDO | M    |
|        17 | ANTONIO@IG.COM    | ANTONIO | M    |
|        18 | ANTONIO@UOL.COM   | ANTONIO | M    |
|        19 | ELAINE@GLOBO.COM  | ELAINE  | F    |
|        19 | ELAINE@GLOBO.COM  | ELAINE  | F    |
|        20 | CARMEM@IG.COM     | CARMEM  | F    |
|        20 | CARMEM@IG.COM     | CARMEM  | F    |
|        21 | ADRIANA@GMAIL.COM | ADRIANA | F    |
+-----------+-------------------+---------+------+
*/

-- 2ª PASSO: VISUALIZAR AS TABELAS CLIENTE, ENDERECO E TELEFONE JUNTOS, 
-- SOMENTE DO SEXO FEMININO.

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F';

/*
+-----------+-------------------+---------+------+
| IDCLIENTE | EMAIL             | NOME    | SEXO |
+-----------+-------------------+---------+------+
|         3 | ANA@IG.COM        | ANA     | F    |
|         3 | ANA@IG.COM        | ANA     | F    |
|         8 | NEIDE@HOTMAIL.COM | NEIDE   | F    |
|         9 | LAURA@GMAIL.COM   | LAURA   | F    |
|         9 | LAURA@GMAIL.COM   | LAURA   | F    |
|        12 | NULL              | GIOVANA | F    |
|        13 | KARLA@GMAIL.COM   | KARLA   | F    |
|        15 | NULL              | LORENA  | F    |
|        19 | ELAINE@GLOBO.COM  | ELAINE  | F    |
|        19 | ELAINE@GLOBO.COM  | ELAINE  | F    |
|        20 | CARMEM@IG.COM     | CARMEM  | F    |
|        20 | CARMEM@IG.COM     | CARMEM  | F    |
|        21 | ADRIANA@GMAIL.COM | ADRIANA | F    |
+-----------+-------------------+---------+------+
*/

-- 3ª PASSO: VISUALIZAR AS TABELAS CLIENTE, ENDERECO E TELEFONE JUNTOS, 
-- SOMENTE DO SEXO FEMININO DO BAIRRO CENTRO E DO RIO DE JANEIRO.

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO';

/*
+-----------+-------------------+---------+------+
| IDCLIENTE | EMAIL             | NOME    | SEXO |
+-----------+-------------------+---------+------+
|        19 | ELAINE@GLOBO.COM  | ELAINE  | F    |
|        19 | ELAINE@GLOBO.COM  | ELAINE  | F    |
|        20 | CARMEM@IG.COM     | CARMEM  | F    |
|        20 | CARMEM@IG.COM     | CARMEM  | F    |
|        21 | ADRIANA@GMAIL.COM | ADRIANA | F    |
+-----------+-------------------+---------+------+
*/

-- 4ª PASSO: VISUALIZAR AS TABELAS CLIENTE, ENDERECO E TELEFONE JUNTOS, 
-- SOMENTE DO SEXO FEMININO DO BAIRRO CENTRO E DO RIO DE JANEIRO COM MAIS DETALHES.

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO, T.TIPO, E.BAIRRO, E.CIDADE
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO';

/*
+-----------+-------------------+---------+------+------+--------+----------------+
| IDCLIENTE | EMAIL             | NOME    | SEXO | TIPO | BAIRRO | CIDADE         |
+-----------+-------------------+---------+------+------+--------+----------------+
|        19 | ELAINE@GLOBO.COM  | ELAINE  | F    | RES  | CENTRO | RIO DE JANEIRO |
|        19 | ELAINE@GLOBO.COM  | ELAINE  | F    | RES  | CENTRO | RIO DE JANEIRO |
|        20 | CARMEM@IG.COM     | CARMEM  | F    | RES  | CENTRO | RIO DE JANEIRO |
|        20 | CARMEM@IG.COM     | CARMEM  | F    | COM  | CENTRO | RIO DE JANEIRO |
|        21 | ADRIANA@GMAIL.COM | ADRIANA | F    | COM  | CENTRO | RIO DE JANEIRO |
+-----------+-------------------+---------+------+------+--------+----------------+
*/

-- OBSERVACAO: VISUALIZAR AS TABELAS CLIENTE, ENDERECO E TELEFONE JUNTOS, 
-- SOMENTE DO SEXO FEMININO DO BAIRRO CENTRO E DO RIO DE JANEIRO COM MAIS DETALHES, 
-- PORÉM TAMBEM TERMINA VISUALIZANDO CLIENTE DO SEXO MASCULINO. MAS COMO FILTRAR 
-- SOMENTE CLIENTE DO SEXO FEMININO?

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO, T.TIPO, E.BAIRRO, E.CIDADE
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO'
AND TIPO = 'RES' OR TIPO = 'COM';

/*
+-----------+-------------------+---------+------+------+------------+----------------+
| IDCLIENTE | EMAIL             | NOME    | SEXO | TIPO | BAIRRO     | CIDADE         |
+-----------+-------------------+---------+------+------+------------+----------------+
|         2 | CARLOSA@IG.COM    | CARLOS  | M    | COM  | ESTACIO    | RIO DE JANEIRO |
|         1 | JOAOA@IG.COM      | JOAO    | M    | COM  | CENTRO     | RIO DE JANEIRO |
|        11 | ANDRE@GLOBO.COM   | ANDRE   | M    | COM  | CENTRO     | RIO DE JANEIRO |
|        12 | NULL              | GIOVANA | F    | COM  | COPACABANA | RIO DE JANEIRO |
|        13 | KARLA@GMAIL.COM   | KARLA   | F    | COM  | CENTRO     | VITORIA        |
|        16 | NULL              | EDUARDO | M    | COM  | JARDINS    | SAO PAULO      |
|        19 | ELAINE@GLOBO.COM  | ELAINE  | F    | RES  | CENTRO     | RIO DE JANEIRO |
|        19 | ELAINE@GLOBO.COM  | ELAINE  | F    | RES  | CENTRO     | RIO DE JANEIRO |
|        20 | CARMEM@IG.COM     | CARMEM  | F    | RES  | CENTRO     | RIO DE JANEIRO |
|        20 | CARMEM@IG.COM     | CARMEM  | F    | COM  | CENTRO     | RIO DE JANEIRO |
|        21 | ADRIANA@GMAIL.COM | ADRIANA | F    | COM  | CENTRO     | RIO DE JANEIRO |
+-----------+-------------------+---------+------+------+------------+----------------+
*/

-- 5ª PASSO: VISUALIZAR AS TABELAS CLIENTE, ENDERECO E TELEFONE JUNTOS, 
--SOMENTE DO SEXO FEMININO DO BAIRRO CENTRO E DO RIO DE JANEIRO COM MAIS DETALHES.

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO, T.TIPO, E.BAIRRO, E.CIDADE
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO'
AND (TIPO = 'RES' OR TIPO = 'COM');

/*
+-----------+-------------------+---------+------+------+--------+----------------+
| IDCLIENTE | EMAIL             | NOME    | SEXO | TIPO | BAIRRO | CIDADE         |
+-----------+-------------------+---------+------+------+--------+----------------+
|        19 | ELAINE@GLOBO.COM  | ELAINE  | F    | RES  | CENTRO | RIO DE JANEIRO |
|        19 | ELAINE@GLOBO.COM  | ELAINE  | F    | RES  | CENTRO | RIO DE JANEIRO |
|        20 | CARMEM@IG.COM     | CARMEM  | F    | RES  | CENTRO | RIO DE JANEIRO |
|        20 | CARMEM@IG.COM     | CARMEM  | F    | COM  | CENTRO | RIO DE JANEIRO |
|        21 | ADRIANA@GMAIL.COM | ADRIANA | F    | COM  | CENTRO | RIO DE JANEIRO |
+-----------+-------------------+---------+------+------+--------+----------------+
*/


/* PARA UMA CAMPANHA DE MARKETING, O SETOR SOLICITOU UM RELATÓRIO COM O NOME, EMAIL 
E TELEFONE CELULAR DOS CLIENTES QUE MORAM NO ESTADO DO RIO DE JANEIRO VOCÊ TERÁ QUE 
PASSAR A QUERY PARA GERAR O RELATORIO PARA O PROGRAMADOR */

SELECT   C.NOME, C.EMAIL, T.NUMERO AS CELULAR /* PROJECAO */
FROM CLIENTE C /* ORIGEM */
INNER JOIN ENDERECO E /*JUNCAO */
ON C.IDCLIENTE = E.ID_CLIENTE /*JUNCAO CONDICAO */
INNER JOIN TELEFONE T /*JUNCAO */
ON C.IDCLIENTE = T.ID_CLIENTE /*JUNCAO CONDICAO*/
WHERE TIPO = 'CEL' AND ESTADO = 'RJ'; /*SELECAO*/

/*
+--------+-----------------+----------+
| NOME   | EMAIL           | CELULAR  |
+--------+-----------------+----------+
| JOAO   | JOAOA@IG.COM    | 87866896 |
| CARLOS | CARLOSA@IG.COM  | 88687909 |
| ANDRE  | ANDRE@GLOBO.COM | 33567765 |
| ANDRE  | ANDRE@GLOBO.COM | 88668786 |
+--------+-----------------+----------+
*/


/* PARA UMA CAMPANHA DE PRODUTOS DE BELEZA, O COMERCIAL SOLICITOU UM RELATÓRIO 
COM O NOME, EMAIL E TELEFONE CELULAR  DAS MULHERES QUE MORAM NO ESTADO DE SÃO PAULO. 
VOCÊ TERÁ QUE PASSAR A QUERY PARA GERAR O RELATORIO PARA O PROGRAMADOR */


SELECT C.NOME, C.EMAIL, T.NUMERO AS CELULAR
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND ESTADO = 'SP';

/*
+------+------------+----------+
| NOME | EMAIL      | CELULAR  |
+------+------------+----------+
| ANA  | ANA@IG.COM | 78989765 |
| ANA  | ANA@IG.COM | 99766676 |
+------+------------+----------+
*/

/* GERANDO RELATORIOS DE NOME, EMAIL, ESTADO, NUMERO DE TELEFONE DE TODOS OS CLIENTES */

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
