/* GERANDO RELATORIO DE CLIENTES DO SEXO FEMININO */

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, 
	   E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, 
	   T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F';

/*
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO    |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 78989765  |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 99766676  |
|         8 | NEIDE   | F    | NEIDE@HOTMAIL.COM | 58790025415 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     | CEL  | 999179868 |
|         9 | LAURA   | F    | LAURA@GMAIL.COM   | 25100569845 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     | RES  | 68976565  |
|         9 | LAURA   | F    | LAURA@GMAIL.COM   | 25100569845 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     | CEL  | 99656675  |
|        12 | GIOVANA | F    | NULL              | 0876655     | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979  |
|        13 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778   | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676  |
|        15 | LORENA  | F    | NULL              | 774557887   | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809  |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786  |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554  |
|        20 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785  |
|        20 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578  |
|        21 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 75524678  |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
*/