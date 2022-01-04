/* RELATORIO GERAL DE TODOS OS CLIENTES */

/* RELATORIO GERAL DE TODOS OS CLIENTES (TELEFONE E ENDERECO) */

DESC CLIENTE;

/*
+-----------+---------------+------+-----+---------+----------------+
| Field     | Type          | Null | Key | Default | Extra          |
+-----------+---------------+------+-----+---------+----------------+
| IDCLIENTE | int(11)       | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(30)   | NO   |     | NULL    |                |
| SEXO      | enum('M','F') | NO   |     | NULL    |                |
| EMAIL     | varchar(50)   | YES  | UNI | NULL    |                |
| CPF       | varchar(15)   | YES  | UNI | NULL    |                |
+-----------+---------------+------+-----+---------+----------------+
*/

DESC ENDERECO;

/*
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDENDERECO | int(11)     | NO   | PRI | NULL    | auto_increment |
| RUA        | varchar(30) | NO   |     | NULL    |                |
| BAIRRO     | varchar(30) | NO   |     | NULL    |                |
| CIDADE     | varchar(30) | NO   |     | NULL    |                |
| ESTADO     | char(2)     | NO   |     | NULL    |                |
| ID_CLIENTE | int(11)     | YES  | UNI | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
*/

DESC TELEFONE;

/*
+------------+-------------------------+------+-----+---------+----------------+
| Field      | Type                    | Null | Key | Default | Extra          |
+------------+-------------------------+------+-----+---------+----------------+
| IDTELEFONE | int(11)                 | NO   | PRI | NULL    | auto_increment |
| TIPO       | enum('RES','COM','CEL') | NO   |     | NULL    |                |
| NUMERO     | varchar(10)             | NO   |     | NULL    |                |
| ID_CLIENTE | int(11)                 | YES  | MUL | NULL    |                |
+------------+-------------------------+------+-----+---------+----------------+
*/

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, 
	   E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, 
	   T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

/*
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO    |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | CEL  | 78458743  |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 56576876  |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 87866896  |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 54768899  |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 99667587  |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 78989765  |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 99766676  |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 66687899  |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 89986668  |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 88687909  |
|         9 | LAURA   | F    | LAURA@GMAIL.COM   | 25100569845 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     | RES  | 68976565  |
|         9 | LAURA   | F    | LAURA@GMAIL.COM   | 25100569845 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     | CEL  | 99656675  |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765  |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786  |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654  |
|        12 | GIOVANA | F    | NULL              | 0876655     | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979  |
|        13 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778   | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676  |
|        15 | LORENA  | F    | NULL              | 774557887   | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809  |
|        16 | EDUARDO | M    | NULL              | 54376457    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978  |
|        17 | ANTONIO | M    | ANTONIO@IG.COM    | 12436767    | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768  |
|        18 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665  |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786  |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554  |
|        20 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785  |
|        20 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578  |
|        21 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 75524678  |
|         8 | NEIDE   | F    | NEIDE@HOTMAIL.COM | 58790025415 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     | CEL  | 999179868 |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
*/