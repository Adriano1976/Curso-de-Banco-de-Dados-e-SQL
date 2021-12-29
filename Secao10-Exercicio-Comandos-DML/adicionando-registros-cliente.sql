/* ADICIONANDO REGISTRO NA TABELA CLIENTE CRIADA ANTERIORMENTE */

INSERT INTO CLIENTE VALUES(NULL,'FLAVIO','M','FLAVIO@IG.COM','4657765');
INSERT INTO CLIENTE VALUES(NULL,'ANDRE','M','ANDRE@GLOBO.COM','7687567');
INSERT INTO CLIENTE VALUES(NULL,'GIOVANA','F',NULL,'0876655');
INSERT INTO CLIENTE VALUES(NULL,'KARLA','M','KARLA@GMAIL.COM','545676778');
INSERT INTO CLIENTE VALUES(NULL,'DANIELE','M','DANIELE@GMAIL.COM','43536789');
INSERT INTO CLIENTE VALUES(NULL,'LORENA','M',NULL,'774557887');
INSERT INTO CLIENTE VALUES(NULL,'EDUARDO','M',NULL,'54376457');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','F','ANTONIO@IG.COM','12436767');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','M','ANTONIO@UOL.COM','3423565');
INSERT INTO CLIENTE VALUES(NULL,'ELAINE','M','ELAINE@GLOBO.COM','32567763');
INSERT INTO CLIENTE VALUES(NULL,'CARMEM','M','CARMEM@IG.COM','787832213');
INSERT INTO CLIENTE VALUES(NULL,'ADRIANA','F','ADRIANA@GMAIL.COM','88556942');
INSERT INTO CLIENTE VALUES(NULL,'JOICE','F','JOICE@GMAIL.COM','55412256');

/* CONFERINDO OS DADOS INSERIDOS NA TABELA CLIENTE */

SELECT * FROM CLIENTE;

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
