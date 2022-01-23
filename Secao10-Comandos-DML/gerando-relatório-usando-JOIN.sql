select * from cliente;

/*
+-----------+---------+------+-------------------------+-------------+
| IDCLIENTE | NOME    | SEXO | EMAIL                   | CPF         |
+-----------+---------+------+-------------------------+-------------+
|         1 | JOAO    | M    | JOAOA@IG.COM            | 76567587887 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM          | 5464553466  |
|         3 | ANA     | F    | ANA@IG.COM              | 456545678   |
|         4 | CLARA   | F    | NULL                    | 5687766856  |
|         5 | JORGE   | M    | JORGE@IG.COM            | 8756547688  |
|         6 | CELIA   | F    | JCELIA@IG.COM           | 5767876889  |
|         7 | ADRIANO | M    | ADRIANO.GIT@HOTMAIL.COM | 89456974258 |
|         8 | NEIDE   | F    | NEIDE@HOTMAIL.COM       | 58790025415 |
|         9 | LAURA   | F    | LAURA@GMAIL.COM         | 25100569845 |
|        10 | FLAVIO  | M    | FLAVIO@IG.COM           | 4657765     |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM         | 7687567     |
|        12 | GIOVANA | F    | NULL                    | 0876655     |
|        13 | KARLA   | F    | KARLA@GMAIL.COM         | 545676778   |
|        14 | DANIELE | F    | DANIELE@GMAIL.COM       | 43536789    |
|        15 | LORENA  | F    | NULL                    | 774557887   |
|        16 | EDUARDO | M    | NULL                    | 54376457    |
|        17 | ANTONIO | M    | ANTONIO@IG.COM          | 12436767    |
|        18 | ANTONIO | M    | ANTONIO@UOL.COM         | 3423565     |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM        | 32567763    |
|        20 | CARMEM  | F    | CARMEM@IG.COM           | 787832213   |
|        21 | ADRIANA | F    | ADRIANA@GMAIL.COM       | 88556942    |
|        22 | JOICE   | F    | JOICE@GMAIL.COM         | 55412256    |
+-----------+---------+------+-------------------------+-------------+
*/

select * from endereco;

/*
+------------+--------------------+------------+----------------+--------+------------+
| IDENDERECO | RUA                | BAIRRO     | CIDADE         | ESTADO | ID_CLIENTE |
+------------+--------------------+------------+----------------+--------+------------+
|          1 | RUA ANTONIO SA     | CENTRO     | B. HORIZONTE   | MG     |          4 |
|          2 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |          1 |
|          3 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     |          3 |
|          4 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     |          2 |
|          5 | RUA DO OUVIDOR     | FLAMENGO   | RIO DE JANEIRO | RJ     |          6 |
|          6 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |          5 |
|          7 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          7 |
|          8 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          8 |
|          9 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          9 |
|         12 | RUA MAIA LACERDA   | ESTACIO    | RIO DE JANEIRO | RJ     |         10 |
|         13 | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |         11 |
|         14 | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     |         12 |
|         15 | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     |         13 |
|         16 | RUA CASTRO ALVES   | LEBLON     | RIO DE JANEIRO | RJ     |         14 |
|         17 | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     |         15 |
|         18 | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     |         16 |
|         19 | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     |         17 |
|         20 | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     |         18 |
|         21 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     |         19 |
|         22 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         20 |
|         23 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         21 |
+------------+--------------------+------------+----------------+--------+------------+
*/

select * from telefone;

/*
+------------+------+-----------+------------+
| IDTELEFONE | TIPO | NUMERO    | ID_CLIENTE |
+------------+------+-----------+------------+
|          1 | CEL  | 78458743  |          5 |
|          2 | RES  | 56576876  |          5 |
|          3 | CEL  | 87866896  |          1 |
|          4 | COM  | 54768899  |          2 |
|          5 | RES  | 99667587  |          1 |
|          6 | CEL  | 78989765  |          3 |
|          7 | CEL  | 99766676  |          3 |
|          8 | COM  | 66687899  |          1 |
|          9 | RES  | 89986668  |          5 |
|         10 | CEL  | 88687909  |          2 |
|         11 | CEL  | 88687909  |       NULL |
|         12 | RES  | 68976565  |          9 |
|         13 | CEL  | 99656675  |          9 |
|         14 | CEL  | 33567765  |         11 |
|         15 | CEL  | 88668786  |         11 |
|         16 | COM  | 55689654  |         11 |
|         17 | COM  | 88687979  |         12 |
|         18 | COM  | 88965676  |         13 |
|         19 | CEL  | 89966809  |         15 |
|         20 | COM  | 88679978  |         16 |
|         21 | CEL  | 99655768  |         17 |
|         22 | RES  | 89955665  |         18 |
|         23 | RES  | 77455786  |         19 |
|         24 | RES  | 89766554  |         19 |
|         25 | RES  | 77755785  |         20 |
|         26 | COM  | 44522578  |         20 |
|         27 | COM  | 75524678  |         21 |
|         28 | CEL  | 999179868 |          8 |
+------------+------+-----------+------------+
*/




-- INNER JOIN: Retorna os registros que tenham correspondência em ambas as tabelas.

select * from cliente inner join endereco
on idcliente = id_cliente;

/*
+-----------+---------+------+-------------------------+-------------+------------+--------------------+------------+----------------+--------+------------+
| IDCLIENTE | NOME    | SEXO | EMAIL                   | CPF         | IDENDERECO | RUA                | BAIRRO     | CIDADE         | ESTADO | ID_CLIENTE |
+-----------+---------+------+-------------------------+-------------+------------+--------------------+------------+----------------+--------+------------+
|         4 | CLARA   | F    | NULL                    | 5687766856  |          1 | RUA ANTONIO SA     | CENTRO     | B. HORIZONTE   | MG     |          4 |
|         1 | JOAO    | M    | JOAOA@IG.COM            | 76567587887 |          2 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |          1 |
|         3 | ANA     | F    | ANA@IG.COM              | 456545678   |          3 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     |          3 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM          | 5464553466  |          4 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     |          2 |
|         6 | CELIA   | F    | JCELIA@IG.COM           | 5767876889  |          5 | RUA DO OUVIDOR     | FLAMENGO   | RIO DE JANEIRO | RJ     |          6 |
|         5 | JORGE   | M    | JORGE@IG.COM            | 8756547688  |          6 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |          5 |
|         7 | ADRIANO | M    | ADRIANO.GIT@HOTMAIL.COM | 89456974258 |          7 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          7 |
|         8 | NEIDE   | F    | NEIDE@HOTMAIL.COM       | 58790025415 |          8 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          8 |
|         9 | LAURA   | F    | LAURA@GMAIL.COM         | 25100569845 |          9 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          9 |
|        10 | FLAVIO  | M    | FLAVIO@IG.COM           | 4657765     |         12 | RUA MAIA LACERDA   | ESTACIO    | RIO DE JANEIRO | RJ     |         10 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM         | 7687567     |         13 | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |         11 |
|        12 | GIOVANA | F    | NULL                    | 0876655     |         14 | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     |         12 |
|        13 | KARLA   | F    | KARLA@GMAIL.COM         | 545676778   |         15 | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     |         13 |
|        14 | DANIELE | F    | DANIELE@GMAIL.COM       | 43536789    |         16 | RUA CASTRO ALVES   | LEBLON     | RIO DE JANEIRO | RJ     |         14 |
|        15 | LORENA  | F    | NULL                    | 774557887   |         17 | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     |         15 |
|        16 | EDUARDO | M    | NULL                    | 54376457    |         18 | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     |         16 |
|        17 | ANTONIO | M    | ANTONIO@IG.COM          | 12436767    |         19 | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     |         17 |
|        18 | ANTONIO | M    | ANTONIO@UOL.COM         | 3423565     |         20 | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     |         18 |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM        | 32567763    |         21 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     |         19 |
|        20 | CARMEM  | F    | CARMEM@IG.COM           | 787832213   |         22 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         20 |
|        21 | ADRIANA | F    | ADRIANA@GMAIL.COM       | 88556942    |         23 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         21 |
+-----------+---------+------+-------------------------+-------------+------------+--------------------+------------+----------------+--------+------------+
*/

select * from cliente inner join telefone
on idcliente = id_cliente;

/*
+-----------+---------+------+-------------------+-------------+------------+------+-----------+------------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | IDTELEFONE | TIPO | NUMERO    | ID_CLIENTE |
+-----------+---------+------+-------------------+-------------+------------+------+-----------+------------+
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |          1 | CEL  | 78458743  |          5 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |          2 | RES  | 56576876  |          5 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 |          3 | CEL  | 87866896  |          1 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  |          4 | COM  | 54768899  |          2 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 |          5 | RES  | 99667587  |          1 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   |          6 | CEL  | 78989765  |          3 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   |          7 | CEL  | 99766676  |          3 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 |          8 | COM  | 66687899  |          1 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |          9 | RES  | 89986668  |          5 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  |         10 | CEL  | 88687909  |          2 |
|         9 | LAURA   | F    | LAURA@GMAIL.COM   | 25100569845 |         12 | RES  | 68976565  |          9 |
|         9 | LAURA   | F    | LAURA@GMAIL.COM   | 25100569845 |         13 | CEL  | 99656675  |          9 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |         14 | CEL  | 33567765  |         11 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |         15 | CEL  | 88668786  |         11 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |         16 | COM  | 55689654  |         11 |
|        12 | GIOVANA | F    | NULL              | 0876655     |         17 | COM  | 88687979  |         12 |
|        13 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778   |         18 | COM  | 88965676  |         13 |
|        15 | LORENA  | F    | NULL              | 774557887   |         19 | CEL  | 89966809  |         15 |
|        16 | EDUARDO | M    | NULL              | 54376457    |         20 | COM  | 88679978  |         16 |
|        17 | ANTONIO | M    | ANTONIO@IG.COM    | 12436767    |         21 | CEL  | 99655768  |         17 |
|        18 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     |         22 | RES  | 89955665  |         18 |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    |         23 | RES  | 77455786  |         19 |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    |         24 | RES  | 89766554  |         19 |
|        20 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   |         25 | RES  | 77755785  |         20 |
|        20 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   |         26 | COM  | 44522578  |         20 |
|        21 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    |         27 | COM  | 75524678  |         21 |
|         8 | NEIDE   | F    | NEIDE@HOTMAIL.COM | 58790025415 |         28 | CEL  | 999179868 |          8 |
+-----------+---------+------+-------------------+-------------+------------+------+-----------+------------+
*/


-- LEFT JOIN (INCLUSIVO): Retorna todos os registros da tabela à esquerda junto
-- dos registros correspondentes da tabela à direita.

select * from cliente left join endereco
on idcliente = id_cliente;

/*
+-----------+---------+------+-------------------------+-------------+------------+--------------------+------------+----------------+--------+------------+
| IDCLIENTE | NOME    | SEXO | EMAIL                   | CPF         | IDENDERECO | RUA                | BAIRRO     | CIDADE         | ESTADO | ID_CLIENTE |
+-----------+---------+------+-------------------------+-------------+------------+--------------------+------------+----------------+--------+------------+
|         1 | JOAO    | M    | JOAOA@IG.COM            | 76567587887 |          2 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |          1 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM          | 5464553466  |          4 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     |          2 |
|         3 | ANA     | F    | ANA@IG.COM              | 456545678   |          3 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     |          3 |
|         4 | CLARA   | F    | NULL                    | 5687766856  |          1 | RUA ANTONIO SA     | CENTRO     | B. HORIZONTE   | MG     |          4 |
|         5 | JORGE   | M    | JORGE@IG.COM            | 8756547688  |          6 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |          5 |
|         6 | CELIA   | F    | JCELIA@IG.COM           | 5767876889  |          5 | RUA DO OUVIDOR     | FLAMENGO   | RIO DE JANEIRO | RJ     |          6 |
|         7 | ADRIANO | M    | ADRIANO.GIT@HOTMAIL.COM | 89456974258 |          7 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          7 |
|         8 | NEIDE   | F    | NEIDE@HOTMAIL.COM       | 58790025415 |          8 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          8 |
|         9 | LAURA   | F    | LAURA@GMAIL.COM         | 25100569845 |          9 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          9 |
|        10 | FLAVIO  | M    | FLAVIO@IG.COM           | 4657765     |         12 | RUA MAIA LACERDA   | ESTACIO    | RIO DE JANEIRO | RJ     |         10 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM         | 7687567     |         13 | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |         11 |
|        12 | GIOVANA | F    | NULL                    | 0876655     |         14 | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     |         12 |
|        13 | KARLA   | F    | KARLA@GMAIL.COM         | 545676778   |         15 | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     |         13 |
|        14 | DANIELE | F    | DANIELE@GMAIL.COM       | 43536789    |         16 | RUA CASTRO ALVES   | LEBLON     | RIO DE JANEIRO | RJ     |         14 |
|        15 | LORENA  | F    | NULL                    | 774557887   |         17 | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     |         15 |
|        16 | EDUARDO | M    | NULL                    | 54376457    |         18 | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     |         16 |
|        17 | ANTONIO | M    | ANTONIO@IG.COM          | 12436767    |         19 | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     |         17 |
|        18 | ANTONIO | M    | ANTONIO@UOL.COM         | 3423565     |         20 | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     |         18 |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM        | 32567763    |         21 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     |         19 |
|        20 | CARMEM  | F    | CARMEM@IG.COM           | 787832213   |         22 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         20 |
|        21 | ADRIANA | F    | ADRIANA@GMAIL.COM       | 88556942    |         23 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         21 |
|        22 | JOICE   | F    | JOICE@GMAIL.COM         | 55412256    |       NULL | NULL               | NULL       | NULL           | NULL   |       NULL |
+-----------+---------+------+-------------------------+-------------+------------+--------------------+------------+----------------+--------+------------+
*/

select * from cliente inner join telefone
on idcliente = id_cliente;

/*
+-----------+---------+------+-------------------+-------------+------------+------+-----------+------------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | IDTELEFONE | TIPO | NUMERO    | ID_CLIENTE |
+-----------+---------+------+-------------------+-------------+------------+------+-----------+------------+
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |          1 | CEL  | 78458743  |          5 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |          2 | RES  | 56576876  |          5 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 |          3 | CEL  | 87866896  |          1 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  |          4 | COM  | 54768899  |          2 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 |          5 | RES  | 99667587  |          1 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   |          6 | CEL  | 78989765  |          3 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   |          7 | CEL  | 99766676  |          3 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 |          8 | COM  | 66687899  |          1 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |          9 | RES  | 89986668  |          5 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  |         10 | CEL  | 88687909  |          2 |
|         9 | LAURA   | F    | LAURA@GMAIL.COM   | 25100569845 |         12 | RES  | 68976565  |          9 |
|         9 | LAURA   | F    | LAURA@GMAIL.COM   | 25100569845 |         13 | CEL  | 99656675  |          9 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |         14 | CEL  | 33567765  |         11 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |         15 | CEL  | 88668786  |         11 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |         16 | COM  | 55689654  |         11 |
|        12 | GIOVANA | F    | NULL              | 0876655     |         17 | COM  | 88687979  |         12 |
|        13 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778   |         18 | COM  | 88965676  |         13 |
|        15 | LORENA  | F    | NULL              | 774557887   |         19 | CEL  | 89966809  |         15 |
|        16 | EDUARDO | M    | NULL              | 54376457    |         20 | COM  | 88679978  |         16 |
|        17 | ANTONIO | M    | ANTONIO@IG.COM    | 12436767    |         21 | CEL  | 99655768  |         17 |
|        18 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     |         22 | RES  | 89955665  |         18 |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    |         23 | RES  | 77455786  |         19 |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    |         24 | RES  | 89766554  |         19 |
|        20 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   |         25 | RES  | 77755785  |         20 |
|        20 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   |         26 | COM  | 44522578  |         20 |
|        21 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    |         27 | COM  | 75524678  |         21 |
|         8 | NEIDE   | F    | NEIDE@HOTMAIL.COM | 58790025415 |         28 | CEL  | 999179868 |          8 |
+-----------+---------+------+-------------------+-------------+------------+------+-----------+------------+
*/


-- LETF JOIN (EXCLUSIVO): Retorna somente os registros da tabela à esquerda
-- que não teverem correspondência com registros da tabela à direita.

select * from cliente left join endereco
on idcliente = id_cliente
where id_cliente is null;

/*
+-----------+-------+------+-----------------+----------+------------+------+--------+--------+--------+------------+
| IDCLIENTE | NOME  | SEXO | EMAIL           | CPF      | IDENDERECO | RUA  | BAIRRO | CIDADE | ESTADO | ID_CLIENTE |
+-----------+-------+------+-----------------+----------+------------+------+--------+--------+--------+------------+
|        22 | JOICE | F    | JOICE@GMAIL.COM | 55412256 |       NULL | NULL | NULL   | NULL   | NULL   |       NULL |
+-----------+-------+------+-----------------+----------+------------+------+--------+--------+--------+------------+
*/

select * from cliente left join telefone
on idcliente = id_cliente
WHERE id_cliente is null;

/*
+-----------+---------+------+-------------------------+-------------+------------+------+--------+------------+
| IDCLIENTE | NOME    | SEXO | EMAIL                   | CPF         | IDTELEFONE | TIPO | NUMERO | ID_CLIENTE |
+-----------+---------+------+-------------------------+-------------+------------+------+--------+------------+
|         4 | CLARA   | F    | NULL                    | 5687766856  |       NULL | NULL | NULL   |       NULL |
|         6 | CELIA   | F    | JCELIA@IG.COM           | 5767876889  |       NULL | NULL | NULL   |       NULL |
|         7 | ADRIANO | M    | ADRIANO.GIT@HOTMAIL.COM | 89456974258 |       NULL | NULL | NULL   |       NULL |
|        10 | FLAVIO  | M    | FLAVIO@IG.COM           | 4657765     |       NULL | NULL | NULL   |       NULL |
|        14 | DANIELE | F    | DANIELE@GMAIL.COM       | 43536789    |       NULL | NULL | NULL   |       NULL |
|        22 | JOICE   | F    | JOICE@GMAIL.COM         | 55412256    |       NULL | NULL | NULL   |       NULL |
+-----------+---------+------+-------------------------+-------------+------------+------+--------+------------+
*/


-- RIGHT JOIN (INCLUSIVO): Retorna todos os registros da tabela à direita
-- junto dos registros correspondentes da tabela à esquerda.

select * from cliente right join endereco
on idcliente = id_cliente;

/*
+-----------+---------+------+-------------------------+-------------+------------+--------------------+------------+----------------+--------+------------+
| IDCLIENTE | NOME    | SEXO | EMAIL                   | CPF         | IDENDERECO | RUA                | BAIRRO     | CIDADE         | ESTADO | ID_CLIENTE |
+-----------+---------+------+-------------------------+-------------+------------+--------------------+------------+----------------+--------+------------+
|         4 | CLARA   | F    | NULL                    | 5687766856  |          1 | RUA ANTONIO SA     | CENTRO     | B. HORIZONTE   | MG     |          4 |
|         1 | JOAO    | M    | JOAOA@IG.COM            | 76567587887 |          2 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |          1 |
|         3 | ANA     | F    | ANA@IG.COM              | 456545678   |          3 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     |          3 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM          | 5464553466  |          4 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     |          2 |
|         6 | CELIA   | F    | JCELIA@IG.COM           | 5767876889  |          5 | RUA DO OUVIDOR     | FLAMENGO   | RIO DE JANEIRO | RJ     |          6 |
|         5 | JORGE   | M    | JORGE@IG.COM            | 8756547688  |          6 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |          5 |
|         7 | ADRIANO | M    | ADRIANO.GIT@HOTMAIL.COM | 89456974258 |          7 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          7 |
|         8 | NEIDE   | F    | NEIDE@HOTMAIL.COM       | 58790025415 |          8 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          8 |
|         9 | LAURA   | F    | LAURA@GMAIL.COM         | 25100569845 |          9 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          9 |
|        10 | FLAVIO  | M    | FLAVIO@IG.COM           | 4657765     |         12 | RUA MAIA LACERDA   | ESTACIO    | RIO DE JANEIRO | RJ     |         10 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM         | 7687567     |         13 | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |         11 |
|        12 | GIOVANA | F    | NULL                    | 0876655     |         14 | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     |         12 |
|        13 | KARLA   | F    | KARLA@GMAIL.COM         | 545676778   |         15 | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     |         13 |
|        14 | DANIELE | F    | DANIELE@GMAIL.COM       | 43536789    |         16 | RUA CASTRO ALVES   | LEBLON     | RIO DE JANEIRO | RJ     |         14 |
|        15 | LORENA  | F    | NULL                    | 774557887   |         17 | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     |         15 |
|        16 | EDUARDO | M    | NULL                    | 54376457    |         18 | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     |         16 |
|        17 | ANTONIO | M    | ANTONIO@IG.COM          | 12436767    |         19 | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     |         17 |
|        18 | ANTONIO | M    | ANTONIO@UOL.COM         | 3423565     |         20 | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     |         18 |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM        | 32567763    |         21 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     |         19 |
|        20 | CARMEM  | F    | CARMEM@IG.COM           | 787832213   |         22 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         20 |
|        21 | ADRIANA | F    | ADRIANA@GMAIL.COM       | 88556942    |         23 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         21 |
+-----------+---------+------+-------------------------+-------------+------------+--------------------+------------+----------------+--------+------------+
*/


-- RIGHT JOIN (EXCLUSIVO): Retorna somente os registros da tabela à direita
-- que não tiverem correspondência com registros da tabela â esquerda.

select * from cliente right join endereco
on idcliente = id_cliente
where id_cliente is null;

/*
Empty set (0.04 sec)
*/

select * from cliente right join telefone
on idcliente = id_cliente
where id_cliente is null;

/*
+-----------+------+------+-------+------+------------+------+----------+------------+
| IDCLIENTE | NOME | SEXO | EMAIL | CPF  | IDTELEFONE | TIPO | NUMERO   | ID_CLIENTE |
+-----------+------+------+-------+------+------------+------+----------+------------+
|      NULL | NULL | NULL | NULL  | NULL |         11 | CEL  | 88687909 |       NULL |
+-----------+------+------+-------+------+------------+------+----------+------------+
*/


-- FULL JOIN (INCLUSIVO): Retorna todos os registros quando houver
-- correspondência na tebela à esquerda ou à direita.

select * from cliente full join endereco
on idcliente = id_cliente;

/*
+-----------+---------+------+-------------------------+-------------+------------+--------------------+------------+----------------+--------+------------+
| IDCLIENTE | NOME    | SEXO | EMAIL                   | CPF         | IDENDERECO | RUA                | BAIRRO     | CIDADE         | ESTADO | ID_CLIENTE |
+-----------+---------+------+-------------------------+-------------+------------+--------------------+------------+----------------+--------+------------+
|         4 | CLARA   | F    | NULL                    | 5687766856  |          1 | RUA ANTONIO SA     | CENTRO     | B. HORIZONTE   | MG     |          4 |
|         1 | JOAO    | M    | JOAOA@IG.COM            | 76567587887 |          2 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |          1 |
|         3 | ANA     | F    | ANA@IG.COM              | 456545678   |          3 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     |          3 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM          | 5464553466  |          4 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     |          2 |
|         6 | CELIA   | F    | JCELIA@IG.COM           | 5767876889  |          5 | RUA DO OUVIDOR     | FLAMENGO   | RIO DE JANEIRO | RJ     |          6 |
|         5 | JORGE   | M    | JORGE@IG.COM            | 8756547688  |          6 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |          5 |
|         7 | ADRIANO | M    | ADRIANO.GIT@HOTMAIL.COM | 89456974258 |          7 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          7 |
|         8 | NEIDE   | F    | NEIDE@HOTMAIL.COM       | 58790025415 |          8 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          8 |
|         9 | LAURA   | F    | LAURA@GMAIL.COM         | 25100569845 |          9 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          9 |
|        10 | FLAVIO  | M    | FLAVIO@IG.COM           | 4657765     |         12 | RUA MAIA LACERDA   | ESTACIO    | RIO DE JANEIRO | RJ     |         10 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM         | 7687567     |         13 | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |         11 |
|        12 | GIOVANA | F    | NULL                    | 0876655     |         14 | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     |         12 |
|        13 | KARLA   | F    | KARLA@GMAIL.COM         | 545676778   |         15 | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     |         13 |
|        14 | DANIELE | F    | DANIELE@GMAIL.COM       | 43536789    |         16 | RUA CASTRO ALVES   | LEBLON     | RIO DE JANEIRO | RJ     |         14 |
|        15 | LORENA  | F    | NULL                    | 774557887   |         17 | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     |         15 |
|        16 | EDUARDO | M    | NULL                    | 54376457    |         18 | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     |         16 |
|        17 | ANTONIO | M    | ANTONIO@IG.COM          | 12436767    |         19 | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     |         17 |
|        18 | ANTONIO | M    | ANTONIO@UOL.COM         | 3423565     |         20 | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     |         18 |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM        | 32567763    |         21 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     |         19 |
|        20 | CARMEM  | F    | CARMEM@IG.COM           | 787832213   |         22 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         20 |
|        21 | ADRIANA | F    | ADRIANA@GMAIL.COM       | 88556942    |         23 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         21 |
+-----------+---------+------+-------------------------+-------------+------------+--------------------+------------+----------------+--------+------------+
*/

select * from cliente full join telefone
on idcliente = id_cliente;

/*
+-----------+---------+------+-------------------+-------------+------------+------+-----------+------------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | IDTELEFONE | TIPO | NUMERO    | ID_CLIENTE |
+-----------+---------+------+-------------------+-------------+------------+------+-----------+------------+
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |          1 | CEL  | 78458743  |          5 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |          2 | RES  | 56576876  |          5 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 |          3 | CEL  | 87866896  |          1 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  |          4 | COM  | 54768899  |          2 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 |          5 | RES  | 99667587  |          1 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   |          6 | CEL  | 78989765  |          3 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   |          7 | CEL  | 99766676  |          3 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 |          8 | COM  | 66687899  |          1 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |          9 | RES  | 89986668  |          5 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  |         10 | CEL  | 88687909  |          2 |
|         9 | LAURA   | F    | LAURA@GMAIL.COM   | 25100569845 |         12 | RES  | 68976565  |          9 |
|         9 | LAURA   | F    | LAURA@GMAIL.COM   | 25100569845 |         13 | CEL  | 99656675  |          9 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |         14 | CEL  | 33567765  |         11 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |         15 | CEL  | 88668786  |         11 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |         16 | COM  | 55689654  |         11 |
|        12 | GIOVANA | F    | NULL              | 0876655     |         17 | COM  | 88687979  |         12 |
|        13 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778   |         18 | COM  | 88965676  |         13 |
|        15 | LORENA  | F    | NULL              | 774557887   |         19 | CEL  | 89966809  |         15 |
|        16 | EDUARDO | M    | NULL              | 54376457    |         20 | COM  | 88679978  |         16 |
|        17 | ANTONIO | M    | ANTONIO@IG.COM    | 12436767    |         21 | CEL  | 99655768  |         17 |
|        18 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     |         22 | RES  | 89955665  |         18 |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    |         23 | RES  | 77455786  |         19 |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    |         24 | RES  | 89766554  |         19 |
|        20 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   |         25 | RES  | 77755785  |         20 |
|        20 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   |         26 | COM  | 44522578  |         20 |
|        21 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    |         27 | COM  | 75524678  |         21 |
|         8 | NEIDE   | F    | NEIDE@HOTMAIL.COM | 58790025415 |         28 | CEL  | 999179868 |          8 |
+-----------+---------+------+-------------------+-------------+------------+------+-----------+------------+
*/


-- FULL JOIN (EXCLUSIVO): Retona todos os registros quando houver
-- correspondência na tabela à esquerda ou à direita, porém, não em ambas.

select * from cliente full join endereco
on idcliente = id_cliente
where idcliente is null or id_cliente is null;

/*
Empty set (0.02 sec)
*/

select * from cliente full join telefone
on idcliente = id_cliente
where idcliente is null or id_cliente is null;

/*
Empty set (0.00 sec)
*/


select * from cliente
inner join endereco
on idcliente = id_cliente
inner join telefone
on idcliente = id_cliente;

/*
ERROR 1052 (23000): Column 'id_cliente' in on clause is ambiguous
*/

select * from cliente c
inner join endereco e
on c.idcliente = e.id_cliente
inner join telefone t
on c.idcliente = t.id_cliente;

/*
+-----------+---------+------+-------------------+-------------+------------+--------------------+------------+----------------+--------+------------+------------+------+-----------+------------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | IDENDERECO | RUA                | BAIRRO     | CIDADE         | ESTADO | ID_CLIENTE | IDTELEFONE | TIPO | NUMERO    | ID_CLIENTE |
+-----------+---------+------+-------------------+-------------+------------+--------------------+------------+----------------+--------+------------+------------+------+-----------+------------+
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 |          2 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |          1 |          3 | CEL  | 87866896  |          1 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 |          2 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |          1 |          5 | RES  | 99667587  |          1 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 |          2 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |          1 |          8 | COM  | 66687899  |          1 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   |          3 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     |          3 |          6 | CEL  | 78989765  |          3 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   |          3 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     |          3 |          7 | CEL  | 99766676  |          3 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  |          4 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     |          2 |          4 | COM  | 54768899  |          2 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  |          4 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     |          2 |         10 | CEL  | 88687909  |          2 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |          6 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |          5 |          1 | CEL  | 78458743  |          5 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |          6 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |          5 |          2 | RES  | 56576876  |          5 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |          6 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |          5 |          9 | RES  | 89986668  |          5 |
|         8 | NEIDE   | F    | NEIDE@HOTMAIL.COM | 58790025415 |          8 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          8 |         28 | CEL  | 999179868 |          8 |
|         9 | LAURA   | F    | LAURA@GMAIL.COM   | 25100569845 |          9 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          9 |         12 | RES  | 68976565  |          9 |
|         9 | LAURA   | F    | LAURA@GMAIL.COM   | 25100569845 |          9 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          9 |         13 | CEL  | 99656675  |          9 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |         13 | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |         11 |         14 | CEL  | 33567765  |         11 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |         13 | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |         11 |         15 | CEL  | 88668786  |         11 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |         13 | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |         11 |         16 | COM  | 55689654  |         11 |
|        12 | GIOVANA | F    | NULL              | 0876655     |         14 | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     |         12 |         17 | COM  | 88687979  |         12 |
|        13 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778   |         15 | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     |         13 |         18 | COM  | 88965676  |         13 |
|        15 | LORENA  | F    | NULL              | 774557887   |         17 | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     |         15 |         19 | CEL  | 89966809  |         15 |
|        16 | EDUARDO | M    | NULL              | 54376457    |         18 | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     |         16 |         20 | COM  | 88679978  |         16 |
|        17 | ANTONIO | M    | ANTONIO@IG.COM    | 12436767    |         19 | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     |         17 |         21 | CEL  | 99655768  |         17 |
|        18 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     |         20 | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     |         18 |         22 | RES  | 89955665  |         18 |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    |         21 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     |         19 |         23 | RES  | 77455786  |         19 |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    |         21 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     |         19 |         24 | RES  | 89766554  |         19 |
|        20 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   |         22 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         20 |         25 | RES  | 77755785  |         20 |
|        20 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   |         22 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         20 |         26 | COM  | 44522578  |         20 |
|        21 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    |         23 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         21 |         27 | COM  | 75524678  |         21 |
+-----------+---------+------+-------------------+-------------+------------+--------------------+------------+----------------+--------+------------+------------+------+-----------+------------+
*/


-- LEFT JOIN (INCLUSIVO): Retorna todos os registros da tabela à esquerda junto
-- dos registros correspondentes da tabela à direita.

select * from cliente c
left join endereco e
on c.idcliente = e.id_cliente
left join telefone t
on c.idcliente = t.id_cliente;

/*
+-----------+---------+------+-------------------------+-------------+------------+--------------------+------------+----------------+--------+------------+------------+------+-----------+------------+
| IDCLIENTE | NOME    | SEXO | EMAIL                   | CPF         | IDENDERECO | RUA                | BAIRRO     | CIDADE         | ESTADO | ID_CLIENTE | IDTELEFONE | TIPO | NUMERO    | ID_CLIENTE |
+-----------+---------+------+-------------------------+-------------+------------+--------------------+------------+----------------+--------+------------+------------+------+-----------+------------+
|         1 | JOAO    | M    | JOAOA@IG.COM            | 76567587887 |          2 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |          1 |          3 | CEL  | 87866896  |          1 |
|         1 | JOAO    | M    | JOAOA@IG.COM            | 76567587887 |          2 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |          1 |          5 | RES  | 99667587  |          1 |
|         1 | JOAO    | M    | JOAOA@IG.COM            | 76567587887 |          2 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |          1 |          8 | COM  | 66687899  |          1 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM          | 5464553466  |          4 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     |          2 |          4 | COM  | 54768899  |          2 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM          | 5464553466  |          4 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     |          2 |         10 | CEL  | 88687909  |          2 |
|         3 | ANA     | F    | ANA@IG.COM              | 456545678   |          3 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     |          3 |          6 | CEL  | 78989765  |          3 |
|         3 | ANA     | F    | ANA@IG.COM              | 456545678   |          3 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     |          3 |          7 | CEL  | 99766676  |          3 |
|         4 | CLARA   | F    | NULL                    | 5687766856  |          1 | RUA ANTONIO SA     | CENTRO     | B. HORIZONTE   | MG     |          4 |       NULL | NULL | NULL      |       NULL |
|         5 | JORGE   | M    | JORGE@IG.COM            | 8756547688  |          6 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |          5 |          1 | CEL  | 78458743  |          5 |
|         5 | JORGE   | M    | JORGE@IG.COM            | 8756547688  |          6 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |          5 |          2 | RES  | 56576876  |          5 |
|         5 | JORGE   | M    | JORGE@IG.COM            | 8756547688  |          6 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |          5 |          9 | RES  | 89986668  |          5 |
|         6 | CELIA   | F    | JCELIA@IG.COM           | 5767876889  |          5 | RUA DO OUVIDOR     | FLAMENGO   | RIO DE JANEIRO | RJ     |          6 |       NULL | NULL | NULL      |       NULL |
|         7 | ADRIANO | M    | ADRIANO.GIT@HOTMAIL.COM | 89456974258 |          7 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          7 |       NULL | NULL | NULL      |       NULL |
|         8 | NEIDE   | F    | NEIDE@HOTMAIL.COM       | 58790025415 |          8 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          8 |         28 | CEL  | 999179868 |          8 |
|         9 | LAURA   | F    | LAURA@GMAIL.COM         | 25100569845 |          9 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          9 |         12 | RES  | 68976565  |          9 |
|         9 | LAURA   | F    | LAURA@GMAIL.COM         | 25100569845 |          9 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          9 |         13 | CEL  | 99656675  |          9 |
|        10 | FLAVIO  | M    | FLAVIO@IG.COM           | 4657765     |         12 | RUA MAIA LACERDA   | ESTACIO    | RIO DE JANEIRO | RJ     |         10 |       NULL | NULL | NULL      |       NULL |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM         | 7687567     |         13 | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |         11 |         14 | CEL  | 33567765  |         11 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM         | 7687567     |         13 | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |         11 |         15 | CEL  | 88668786  |         11 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM         | 7687567     |         13 | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |         11 |         16 | COM  | 55689654  |         11 |
|        12 | GIOVANA | F    | NULL                    | 0876655     |         14 | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     |         12 |         17 | COM  | 88687979  |         12 |
|        13 | KARLA   | F    | KARLA@GMAIL.COM         | 545676778   |         15 | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     |         13 |         18 | COM  | 88965676  |         13 |
|        14 | DANIELE | F    | DANIELE@GMAIL.COM       | 43536789    |         16 | RUA CASTRO ALVES   | LEBLON     | RIO DE JANEIRO | RJ     |         14 |       NULL | NULL | NULL      |       NULL |
|        15 | LORENA  | F    | NULL                    | 774557887   |         17 | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     |         15 |         19 | CEL  | 89966809  |         15 |
|        16 | EDUARDO | M    | NULL                    | 54376457    |         18 | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     |         16 |         20 | COM  | 88679978  |         16 |
|        17 | ANTONIO | M    | ANTONIO@IG.COM          | 12436767    |         19 | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     |         17 |         21 | CEL  | 99655768  |         17 |
|        18 | ANTONIO | M    | ANTONIO@UOL.COM         | 3423565     |         20 | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     |         18 |         22 | RES  | 89955665  |         18 |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM        | 32567763    |         21 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     |         19 |         23 | RES  | 77455786  |         19 |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM        | 32567763    |         21 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     |         19 |         24 | RES  | 89766554  |         19 |
|        20 | CARMEM  | F    | CARMEM@IG.COM           | 787832213   |         22 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         20 |         25 | RES  | 77755785  |         20 |
|        20 | CARMEM  | F    | CARMEM@IG.COM           | 787832213   |         22 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         20 |         26 | COM  | 44522578  |         20 |
|        21 | ADRIANA | F    | ADRIANA@GMAIL.COM       | 88556942    |         23 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         21 |         27 | COM  | 75524678  |         21 |
|        22 | JOICE   | F    | JOICE@GMAIL.COM         | 55412256    |       NULL | NULL               | NULL       | NULL           | NULL   |       NULL |       NULL | NULL | NULL      |       NULL |
+-----------+---------+------+-------------------------+-------------+------------+--------------------+------------+----------------+--------+------------+------------+------+-----------+------------+
*/


-- FULL JOIN (EXCLUSIVO): Retona todos os registros quando houver
-- correspondência na tabela à esquerda ou à direita, porém, não em ambas.

select * from cliente c
left join endereco e
on c.idcliente = e.id_cliente
left join telefone t
on c.idcliente = t.id_cliente
where e.id_cliente is null or t.id_cliente is null;

/*
+-----------+---------+------+-------------------------+-------------+------------+------------------+----------+----------------+--------+------------+------------+------+--------+------------+
| IDCLIENTE | NOME    | SEXO | EMAIL                   | CPF         | IDENDERECO | RUA              | BAIRRO   | CIDADE         | ESTADO | ID_CLIENTE | IDTELEFONE | TIPO | NUMERO | ID_CLIENTE |
+-----------+---------+------+-------------------------+-------------+------------+------------------+----------+----------------+--------+------------+------------+------+--------+------------+
|         4 | CLARA   | F    | NULL                    | 5687766856  |          1 | RUA ANTONIO SA   | CENTRO   | B. HORIZONTE   | MG     |          4 |       NULL | NULL | NULL   |       NULL |
|         6 | CELIA   | F    | JCELIA@IG.COM           | 5767876889  |          5 | RUA DO OUVIDOR   | FLAMENGO | RIO DE JANEIRO | RJ     |          6 |       NULL | NULL | NULL   |       NULL |
|         7 | ADRIANO | M    | ADRIANO.GIT@HOTMAIL.COM | 89456974258 |          7 | RUA JOSE AUGUSTO | ARUANA   | ARACAJU        | SE     |          7 |       NULL | NULL | NULL   |       NULL |
|        10 | FLAVIO  | M    | FLAVIO@IG.COM           | 4657765     |         12 | RUA MAIA LACERDA | ESTACIO  | RIO DE JANEIRO | RJ     |         10 |       NULL | NULL | NULL   |       NULL |
|        14 | DANIELE | F    | DANIELE@GMAIL.COM       | 43536789    |         16 | RUA CASTRO ALVES | LEBLON   | RIO DE JANEIRO | RJ     |         14 |       NULL | NULL | NULL   |       NULL |
|        22 | JOICE   | F    | JOICE@GMAIL.COM         | 55412256    |       NULL | NULL             | NULL     | NULL           | NULL   |       NULL |       NULL | NULL | NULL   |       NULL |
+-----------+---------+------+-------------------------+-------------+------------+------------------+----------+----------------+--------+------------+------------+------+--------+------------+
*/

select * from cliente c
left join endereco e
on c.idcliente = e.id_cliente
left join telefone t
on c.idcliente = t.id_cliente
where e.id_cliente is null and t.id_cliente is null;

/*
+-----------+-------+------+-----------------+----------+------------+------+--------+--------+--------+------------+------------+------+--------+------------+
| IDCLIENTE | NOME  | SEXO | EMAIL           | CPF      | IDENDERECO | RUA  | BAIRRO | CIDADE | ESTADO | ID_CLIENTE | IDTELEFONE | TIPO | NUMERO | ID_CLIENTE |
+-----------+-------+------+-----------------+----------+------------+------+--------+--------+--------+------------+------------+------+--------+------------+
|        22 | JOICE | F    | JOICE@GMAIL.COM | 55412256 |       NULL | NULL | NULL   | NULL   | NULL   |       NULL |       NULL | NULL | NULL   |       NULL |
+-----------+-------+------+-----------------+----------+------------+------+--------+--------+--------+------------+------------+------+--------+------------+
*/


-- RIGHT JOIN (INCLUSIVO): Retorna todos os registros da tabela à direita
-- junto dos registros correspondentes da tabela à esquerda.

select * from cliente c
right join endereco e
on c.idcliente = e.id_cliente
right join telefone t
on c.idcliente = t.id_cliente;

/*
+-----------+---------+------+-------------------+-------------+------------+--------------------+------------+----------------+--------+------------+------------+------+-----------+------------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | IDENDERECO | RUA                | BAIRRO     | CIDADE         | ESTADO | ID_CLIENTE | IDTELEFONE | TIPO | NUMERO    | ID_CLIENTE |
+-----------+---------+------+-------------------+-------------+------------+--------------------+------------+----------------+--------+------------+------------+------+-----------+------------+
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |          6 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |          5 |          1 | CEL  | 78458743  |          5 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |          6 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |          5 |          2 | RES  | 56576876  |          5 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 |          2 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |          1 |          3 | CEL  | 87866896  |          1 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  |          4 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     |          2 |          4 | COM  | 54768899  |          2 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 |          2 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |          1 |          5 | RES  | 99667587  |          1 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   |          3 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     |          3 |          6 | CEL  | 78989765  |          3 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   |          3 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     |          3 |          7 | CEL  | 99766676  |          3 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 |          2 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |          1 |          8 | COM  | 66687899  |          1 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |          6 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |          5 |          9 | RES  | 89986668  |          5 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  |          4 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     |          2 |         10 | CEL  | 88687909  |          2 |
|      NULL | NULL    | NULL | NULL              | NULL        |       NULL | NULL               | NULL       | NULL           | NULL   |       NULL |         11 | CEL  | 88687909  |       NULL |
|         9 | LAURA   | F    | LAURA@GMAIL.COM   | 25100569845 |          9 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          9 |         12 | RES  | 68976565  |          9 |
|         9 | LAURA   | F    | LAURA@GMAIL.COM   | 25100569845 |          9 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          9 |         13 | CEL  | 99656675  |          9 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |         13 | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |         11 |         14 | CEL  | 33567765  |         11 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |         13 | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |         11 |         15 | CEL  | 88668786  |         11 |
|        11 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |         13 | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |         11 |         16 | COM  | 55689654  |         11 |
|        12 | GIOVANA | F    | NULL              | 0876655     |         14 | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     |         12 |         17 | COM  | 88687979  |         12 |
|        13 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778   |         15 | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     |         13 |         18 | COM  | 88965676  |         13 |
|        15 | LORENA  | F    | NULL              | 774557887   |         17 | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     |         15 |         19 | CEL  | 89966809  |         15 |
|        16 | EDUARDO | M    | NULL              | 54376457    |         18 | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     |         16 |         20 | COM  | 88679978  |         16 |
|        17 | ANTONIO | M    | ANTONIO@IG.COM    | 12436767    |         19 | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     |         17 |         21 | CEL  | 99655768  |         17 |
|        18 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     |         20 | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     |         18 |         22 | RES  | 89955665  |         18 |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    |         21 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     |         19 |         23 | RES  | 77455786  |         19 |
|        19 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    |         21 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     |         19 |         24 | RES  | 89766554  |         19 |
|        20 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   |         22 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         20 |         25 | RES  | 77755785  |         20 |
|        20 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   |         22 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         20 |         26 | COM  | 44522578  |         20 |
|        21 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    |         23 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         21 |         27 | COM  | 75524678  |         21 |
|         8 | NEIDE   | F    | NEIDE@HOTMAIL.COM | 58790025415 |          8 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     |          8 |         28 | CEL  | 999179868 |          8 |
+-----------+---------+------+-------------------+-------------+------------+--------------------+------------+----------------+--------+------------+------------+------+-----------+------------+
*/


select * from cliente c
right join endereco e
on c.idcliente = e.id_cliente
right join telefone t
on c.idcliente = t.id_cliente
where e.id_cliente is null or t.id_cliente is null;

/*
+-----------+------+------+-------+------+------------+------+--------+--------+--------+------------+------------+------+----------+------------+
| IDCLIENTE | NOME | SEXO | EMAIL | CPF  | IDENDERECO | RUA  | BAIRRO | CIDADE | ESTADO | ID_CLIENTE | IDTELEFONE | TIPO | NUMERO   | ID_CLIENTE |
+-----------+------+------+-------+------+------------+------+--------+--------+--------+------------+------------+------+----------+------------+
|      NULL | NULL | NULL | NULL  | NULL |       NULL | NULL | NULL   | NULL   | NULL   |       NULL |         11 | CEL  | 88687909 |       NULL |
+-----------+------+------+-------+------+------------+------+--------+--------+--------+------------+------------+------+----------+------------+
*/


select * from cliente c
right join endereco e
on c.idcliente = e.id_cliente
right join telefone t
on c.idcliente = t.id_cliente
where e.id_cliente is null and t.id_cliente is null;

/*
+-----------+------+------+-------+------+------------+------+--------+--------+--------+------------+------------+------+----------+------------+
| IDCLIENTE | NOME | SEXO | EMAIL | CPF  | IDENDERECO | RUA  | BAIRRO | CIDADE | ESTADO | ID_CLIENTE | IDTELEFONE | TIPO | NUMERO   | ID_CLIENTE |
+-----------+------+------+-------+------+------------+------+--------+--------+--------+------------+------------+------+----------+------------+
|      NULL | NULL | NULL | NULL  | NULL |       NULL | NULL | NULL   | NULL   | NULL   |       NULL |         11 | CEL  | 88687909 |       NULL |
+-----------+------+------+-------+------+------------+------+--------+--------+--------+------------+------------+------+----------+------------+
*/


select c.nome, c.sexo, c.email, c.cpf, e.rua, e.bairro, e.cidade, e.estado, t.tipo, t.numero from cliente c
inner join endereco e
on c.idcliente = e.id_cliente
inner join telefone t
on c.idcliente = t.id_cliente;

/*
+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
| nome    | sexo | email             | cpf         | rua                | bairro     | cidade         | estado | tipo | numero    |
+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
| JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 87866896  |
| JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 99667587  |
| JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 66687899  |
| ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 78989765  |
| ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 99766676  |
| CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 54768899  |
| CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 88687909  |
| JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | CEL  | 78458743  |
| JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 56576876  |
| JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 89986668  |
| NEIDE   | F    | NEIDE@HOTMAIL.COM | 58790025415 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     | CEL  | 999179868 |
| LAURA   | F    | LAURA@GMAIL.COM   | 25100569845 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     | RES  | 68976565  |
| LAURA   | F    | LAURA@GMAIL.COM   | 25100569845 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     | CEL  | 99656675  |
| ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765  |
| ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786  |
| ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654  |
| GIOVANA | F    | NULL              | 0876655     | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979  |
| KARLA   | F    | KARLA@GMAIL.COM   | 545676778   | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676  |
| LORENA  | F    | NULL              | 774557887   | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809  |
| EDUARDO | M    | NULL              | 54376457    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978  |
| ANTONIO | M    | ANTONIO@IG.COM    | 12436767    | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768  |
| ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665  |
| ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786  |
| ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554  |
| CARMEM  | F    | CARMEM@IG.COM     | 787832213   | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785  |
| CARMEM  | F    | CARMEM@IG.COM     | 787832213   | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578  |
| ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 75524678  |
+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
*/


select c.nome, c.sexo, c.email, c.cpf, e.rua, e.bairro, e.cidade, e.estado, t.tipo, t.numero from cliente c
left join endereco e
on c.idcliente = e.id_cliente
left join telefone t
on c.idcliente = t.id_cliente;

/*
+---------+------+-------------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
| nome    | sexo | email                   | cpf         | rua                | bairro     | cidade         | estado | tipo | numero    |
+---------+------+-------------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
| JOAO    | M    | JOAOA@IG.COM            | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 87866896  |
| JOAO    | M    | JOAOA@IG.COM            | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 99667587  |
| JOAO    | M    | JOAOA@IG.COM            | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 66687899  |
| CARLOS  | M    | CARLOSA@IG.COM          | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 54768899  |
| CARLOS  | M    | CARLOSA@IG.COM          | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 88687909  |
| ANA     | F    | ANA@IG.COM              | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 78989765  |
| ANA     | F    | ANA@IG.COM              | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 99766676  |
| CLARA   | F    | NULL                    | 5687766856  | RUA ANTONIO SA     | CENTRO     | B. HORIZONTE   | MG     | NULL | NULL      |
| JORGE   | M    | JORGE@IG.COM            | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | CEL  | 78458743  |
| JORGE   | M    | JORGE@IG.COM            | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 56576876  |
| JORGE   | M    | JORGE@IG.COM            | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 89986668  |
| CELIA   | F    | JCELIA@IG.COM           | 5767876889  | RUA DO OUVIDOR     | FLAMENGO   | RIO DE JANEIRO | RJ     | NULL | NULL      |
| ADRIANO | M    | ADRIANO.GIT@HOTMAIL.COM | 89456974258 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     | NULL | NULL      |
| NEIDE   | F    | NEIDE@HOTMAIL.COM       | 58790025415 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     | CEL  | 999179868 |
| LAURA   | F    | LAURA@GMAIL.COM         | 25100569845 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     | RES  | 68976565  |
| LAURA   | F    | LAURA@GMAIL.COM         | 25100569845 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     | CEL  | 99656675  |
| FLAVIO  | M    | FLAVIO@IG.COM           | 4657765     | RUA MAIA LACERDA   | ESTACIO    | RIO DE JANEIRO | RJ     | NULL | NULL      |
| ANDRE   | M    | ANDRE@GLOBO.COM         | 7687567     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765  |
| ANDRE   | M    | ANDRE@GLOBO.COM         | 7687567     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786  |
| ANDRE   | M    | ANDRE@GLOBO.COM         | 7687567     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654  |
| GIOVANA | F    | NULL                    | 0876655     | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979  |
| KARLA   | F    | KARLA@GMAIL.COM         | 545676778   | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676  |
| DANIELE | F    | DANIELE@GMAIL.COM       | 43536789    | RUA CASTRO ALVES   | LEBLON     | RIO DE JANEIRO | RJ     | NULL | NULL      |
| LORENA  | F    | NULL                    | 774557887   | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809  |
| EDUARDO | M    | NULL                    | 54376457    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978  |
| ANTONIO | M    | ANTONIO@IG.COM          | 12436767    | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768  |
| ANTONIO | M    | ANTONIO@UOL.COM         | 3423565     | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665  |
| ELAINE  | F    | ELAINE@GLOBO.COM        | 32567763    | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786  |
| ELAINE  | F    | ELAINE@GLOBO.COM        | 32567763    | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554  |
| CARMEM  | F    | CARMEM@IG.COM           | 787832213   | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785  |
| CARMEM  | F    | CARMEM@IG.COM           | 787832213   | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578  |
| ADRIANA | F    | ADRIANA@GMAIL.COM       | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 75524678  |
| JOICE   | F    | JOICE@GMAIL.COM         | 55412256    | NULL               | NULL       | NULL           | NULL   | NULL | NULL      |
+---------+------+-------------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
*/


select c.nome, c.sexo, c.email, c.cpf, e.rua, e.bairro, e.cidade, e.estado, t.tipo, t.numero from cliente c
right join endereco e
on c.idcliente = e.id_cliente
right join telefone t
on c.idcliente = t.id_cliente;

/*
+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
| nome    | sexo | email             | cpf         | rua                | bairro     | cidade         | estado | tipo | numero    |
+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
| JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | CEL  | 78458743  |
| JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 56576876  |
| JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 87866896  |
| CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 54768899  |
| JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 99667587  |
| ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 78989765  |
| ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 99766676  |
| JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 66687899  |
| JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 89986668  |
| CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 88687909  |
| NULL    | NULL | NULL              | NULL        | NULL               | NULL       | NULL           | NULL   | CEL  | 88687909  |
| LAURA   | F    | LAURA@GMAIL.COM   | 25100569845 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     | RES  | 68976565  |
| LAURA   | F    | LAURA@GMAIL.COM   | 25100569845 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     | CEL  | 99656675  |
| ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765  |
| ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786  |
| ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654  |
| GIOVANA | F    | NULL              | 0876655     | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979  |
| KARLA   | F    | KARLA@GMAIL.COM   | 545676778   | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676  |
| LORENA  | F    | NULL              | 774557887   | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809  |
| EDUARDO | M    | NULL              | 54376457    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978  |
| ANTONIO | M    | ANTONIO@IG.COM    | 12436767    | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768  |
| ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665  |
| ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786  |
| ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554  |
| CARMEM  | F    | CARMEM@IG.COM     | 787832213   | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785  |
| CARMEM  | F    | CARMEM@IG.COM     | 787832213   | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578  |
| ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 75524678  |
| NEIDE   | F    | NEIDE@HOTMAIL.COM | 58790025415 | RUA JOSE AUGUSTO   | ARUANA     | ARACAJU        | SE     | CEL  | 999179868 |
+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
*/

