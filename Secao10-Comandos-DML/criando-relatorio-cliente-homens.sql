/* RELATORIO DE HOMENS */

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, 
	   E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, 
	   T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'M';

/*
+-----------+---------+------+-----------------+-------------+--------------------+------------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL           | CPF         | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-----------------+-------------+--------------------+------------+----------------+--------+------+----------+
|         5 | JORGE   | M    | JORGE@IG.COM    | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | CEL  | 78458743 |
|         5 | JORGE   | M    | JORGE@IG.COM    | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 56576876 |
|         1 | JOAO    | M    | JOAOA@IG.COM    | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 87866896 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM  | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 54768899 |
|         1 | JOAO    | M    | JOAOA@IG.COM    | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 99667587 |
|         1 | JOAO    | M    | JOAOA@IG.COM    | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 66687899 |
|         5 | JORGE   | M    | JORGE@IG.COM    | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 89986668 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM  | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 88687909 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM | 7687567     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM | 7687567     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM | 7687567     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654 |
|        16 | EDUARDO | M    | NULL            | 54376457    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978 |
|        17 | ANTONIO | M    | ANTONIO@IG.COM  | 12436767    | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768 |
|        18 | ANTONIO | M    | ANTONIO@UOL.COM | 3423565     | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665 |
+-----------+---------+------+-----------------+-------------+--------------------+------------+----------------+--------+------+----------+
*/