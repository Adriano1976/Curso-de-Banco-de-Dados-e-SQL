/* CADASTRE UM ENDERECO PARA CADA CLIENTE */

INSERT INTO ENDERECO VALUES(NULL,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',9);
INSERT INTO ENDERECO VALUES(NULL,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',10);
INSERT INTO ENDERECO VALUES(NULL,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',11);
INSERT INTO ENDERECO VALUES(NULL,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',12);
INSERT INTO ENDERECO VALUES(NULL,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',13);
INSERT INTO ENDERECO VALUES(NULL,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',14);
INSERT INTO ENDERECO VALUES(NULL,'AV CAPITAO ANTUNES','CENTRO','CURITIBA','PR',15);
INSERT INTO ENDERECO VALUES(NULL,'AV CARLOS BARROSO','JARDINS','SAO PAULO','SP',16);
INSERT INTO ENDERECO VALUES(NULL,'ALAMEDA SAMPAIO','BOM RETIRO','CURITIBA','PR',17);
INSERT INTO ENDERECO VALUES(NULL,'RUA DA LAPA','LAPA','SAO PAULO','SP',18);
INSERT INTO ENDERECO VALUES(NULL,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',19);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',20);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',21);

/* CONFERINDO OS DADOS INSERIDOS NA TABELA ENDERECO */

SELECT * FROM ENDERECO;

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
