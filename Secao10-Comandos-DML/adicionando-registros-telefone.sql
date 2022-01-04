/* CADASTRE TELEFONES PARA OS CLIENTES */

INSERT INTO TELEFONE VALUES(NULL,'RES','68976565',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99656675',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','33567765',11);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88668786',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','55689654',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','88687979',12);
INSERT INTO TELEFONE VALUES(NULL,'COM','88965676',13);
INSERT INTO TELEFONE VALUES(NULL,'CEL','89966809',15);
INSERT INTO TELEFONE VALUES(NULL,'COM','88679978',16);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99655768',17);
INSERT INTO TELEFONE VALUES(NULL,'RES','89955665',18);
INSERT INTO TELEFONE VALUES(NULL,'RES','77455786',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','89766554',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','77755785',20);
INSERT INTO TELEFONE VALUES(NULL,'COM','44522578',20);
INSERT INTO TELEFONE VALUES(NULL,'COM','75524678',21);

/* CONFERINDO OS DADOS INSERIDOS NA TABELA TELEFONE */

SELECT * FROM TELEFONE;

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
