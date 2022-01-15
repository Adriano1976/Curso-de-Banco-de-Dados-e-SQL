SELECT * FROM ALUNO 
GO  

/*
IDALUNO     NOME                           SEXO NASCIMENTO EMAIL
----------- ------------------------------ ---- ---------- ------------------------------
1           ANDRE                          M    1981-12-09 ANDRE@IG.COM
2           ANA                            F    1978-03-09 ANA@IG.COM
3           RUI                            M    1951-07-09 RUI@IG.COM
4           JOAO                           M    2002-11-09 JOAO@IG.COM
5           ANDREIA                        F    1985-12-09 ANDREIA@IG.COM
6           ANAKARLA                       F    1979-03-09 ANAKARLA@IG.COM
7           ROBERVAL                       M    1981-07-09 ROBERVAL@IG.COM
8           JOANETE                        F    2001-10-09 JOANETE@IG.COM
9           AMANDA                         F    1981-12-09 AMANDA@IG.COM
10          ADRIANO                        M    1976-03-09 ADRIANO@IG.COM
11          RAFAEL                         M    1991-07-09 RAFAEL@IG.COM
12          JHONATA                        M    2000-11-09 JHONATA@IG.COM
*/

SELECT * FROM TELEFONE
GO  

/*
IDTELEFONE  TIPO NUMERO     ID_ALUNO
----------- ---- ---------- -----------
1           CEL  7897889    1
2           RES  4385444    1
3           COM  4353754    2
4           CEL  7544556    2
5           CEL  7899589    3
6           RES  4325014    4
7           COM  4344354    5
8           CEL  2344676    5
9           CEL  7899909    6
10          RES  4465444    6
11          COM  4353654    7
12          CEL  6889889    9
13          RES  4324004    9
14          COM  4345354    9
15          CEL  2444556    10
16          CEL  7895589    11
17          RES  8825444    12
18          COM  4354454    12
19          CEL  2311556    12
*/

SELECT * FROM ENDERECO
GO 

/*
IDENDERECO  BAIRRO                         UF   ID_ALUNO
----------- ------------------------------ ---- -----------
100         FLAMENGO                       RJ   1
110         MORUMBI                        SP   2
130         CENTRO                         SP   4
140         FLAMENGO                       RJ   5
150         MORUMBI                        SP   6
170         CENTRO                         SP   8
180         FLAMENGO                       RJ   9
190         MORUMBI                        SP   10
210         CENTRO                         SP   12
*/