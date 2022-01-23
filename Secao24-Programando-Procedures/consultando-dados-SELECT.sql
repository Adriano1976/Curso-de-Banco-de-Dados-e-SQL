SELECT @@IDENTITY AS 'ULTIMO ID INSERIDO'
GO  

/*
ULTIMO ID INSERIDO
---------------------------------------
22
*/


SELECT * FROM PESSOA
GO  

/*
IDPESSOA    NOME                           SEXO NASCIMENTO
----------- ------------------------------ ---- ----------
1           ANTONIO                        M    1981-02-13
2           DANIEL                         M    1985-03-18
3           CLEIDE                         F    1979-10-13
4           MAFRA                          M    1981-02-13
5           ADRIANO                        M    1979-10-12
6           DANIELLE                       F    1985-03-18
7           CLESIA                         F    1980-10-14
8           MAFALDA                        F    1988-03-13
9           ALBERTO                        M    1971-02-19
10          DIEGO                          M    1987-03-15
11          NEIDE                          F    1967-01-21
12          LAURA                          F    2005-12-05

(12 linha(s) afetadas)
*/



SELECT * FROM TELEFONE
GO 

/*
IDTELEFONE  TIPO NUMERO     ID_PESSOA
----------- ---- ---------- -----------
1           CEL  9878208    1
2           COM  8757459    1
3           CEL  9755890    2
4           CEL  9347029    2
5           COM  4598689    3
6           COM  2098258    2
7           CEL  9998679    3
8           CEL  9875008    5
9           COM  7557909    5
10          CEL  9865890    6
11          CEL  9347889    6
12          COM  2932689    7
13          COM  5098978    6
14          CEL  9004579    7
15          CEL  9845008    9
16          COM  8757659    9
17          CEL  9775890    10
18          CEL  9341289    10
19          COM  2238689    11
20          COM  2090078    10
21          CEL  9014679    12
22          RES  3290078    10
*/



SELECT NOME, NUMERO
FROM PESSOA INNER JOIN TELEFONE
ON IDPESSOA = ID_PESSOA
GO  

/*
NOME                           NUMERO
------------------------------ ----------
ANTONIO                        9878208   
ANTONIO                        8757459   
DANIEL                         9755890   
DANIEL                         9347029   
CLEIDE                         4598689   
DANIEL                         2098258   
CLEIDE                         9998679   
ADRIANO                        9875008   
ADRIANO                        7557909   
DANIELLE                       9865890   
DANIELLE                       9347889   
CLESIA                         2932689   
DANIELLE                       5098978   
CLESIA                         9004579   
ALBERTO                        9845008   
ALBERTO                        8757659   
DIEGO                          9775890   
DIEGO                          9341289   
NEIDE                          2238689   
DIEGO                          2090078   
LAURA                          9014679   
DIEGO                          3290078   

(21 linha(s) afetadas)
*/



SELECT NOME, SEXO, NASCIMENTO, TIPO, NUMERO
FROM PESSOA INNER JOIN TELEFONE
ON IDPESSOA = ID_PESSOA
GO 

/*
NOME                           SEXO NASCIMENTO TIPO NUMERO
------------------------------ ---- ---------- ---- ----------
ANTONIO                        M    1981-02-13 CEL  9878208   
ANTONIO                        M    1981-02-13 COM  8757459   
DANIEL                         M    1985-03-18 CEL  9755890   
DANIEL                         M    1985-03-18 CEL  9347029   
CLEIDE                         F    1979-10-13 COM  4598689   
DANIEL                         M    1985-03-18 COM  2098258   
CLEIDE                         F    1979-10-13 CEL  9998679   
ADRIANO                        M    1979-10-12 CEL  9875008   
ADRIANO                        M    1979-10-12 COM  7557909   
DANIELLE                       F    1985-03-18 CEL  9865890   
DANIELLE                       F    1985-03-18 CEL  9347889   
CLESIA                         F    1980-10-14 COM  2932689   
DANIELLE                       F    1985-03-18 COM  5098978   
CLESIA                         F    1980-10-14 CEL  9004579   
ALBERTO                        M    1971-02-19 CEL  9845008   
ALBERTO                        M    1971-02-19 COM  8757659   
DIEGO                          M    1987-03-15 CEL  9775890   
DIEGO                          M    1987-03-15 CEL  9341289   
NEIDE                          F    1967-01-21 COM  2238689   
DIEGO                          M    1987-03-15 COM  2090078   
LAURA                          F    2005-12-05 CEL  9014679   
DIEGO                          M    1987-03-15 RES  3290078   

(21 linha(s) afetadas)
*/



SELECT NOME, SEXO, CONVERT(VARCHAR,NASCIMENTO,103) AS 'NASCIMENTO', TIPO, NUMERO
FROM PESSOA INNER JOIN TELEFONE
ON IDPESSOA = ID_PESSOA
GO

/*
NOME                           SEXO NASCIMENTO                     TIPO NUMERO
------------------------------ ---- ------------------------------ ---- ----------
ANTONIO                        M    13/02/1981                     CEL  9878208   
ANTONIO                        M    13/02/1981                     COM  8757459   
DANIEL                         M    18/03/1985                     CEL  9755890   
DANIEL                         M    18/03/1985                     CEL  9347029   
CLEIDE                         F    13/10/1979                     COM  4598689   
DANIEL                         M    18/03/1985                     COM  2098258   
CLEIDE                         F    13/10/1979                     CEL  9998679   
ADRIANO                        M    12/10/1979                     CEL  9875008   
ADRIANO                        M    12/10/1979                     COM  7557909   
DANIELLE                       F    18/03/1985                     CEL  9865890   
DANIELLE                       F    18/03/1985                     CEL  9347889   
CLESIA                         F    14/10/1980                     COM  2932689   
DANIELLE                       F    18/03/1985                     COM  5098978   
CLESIA                         F    14/10/1980                     CEL  9004579   
ALBERTO                        M    19/02/1971                     CEL  9845008   
ALBERTO                        M    19/02/1971                     COM  8757659   
DIEGO                          M    15/03/1987                     CEL  9775890   
DIEGO                          M    15/03/1987                     CEL  9341289   
NEIDE                          F    21/01/1967                     COM  2238689   
DIEGO                          M    15/03/1987                     COM  2090078   
LAURA                          F    05/12/2005                     CEL  9014679   
DIEGO                          M    15/03/1987                     RES  3290078  

(21 linha(s) afetadas)
*/



SELECT NOME, TIPO, NUMERO
FROM PESSOA INNER JOIN TELEFONE
ON IDPESSOA = ID_PESSOA
WHERE TIPO = 'CEL'
GO  

/*
NOME                           TIPO NUMERO
------------------------------ ---- ----------
ANTONIO                        CEL  9878208   
DANIEL                         CEL  9755890   
DANIEL                         CEL  9347029   
CLEIDE                         CEL  9998679   
ADRIANO                        CEL  9875008   
DANIELLE                       CEL  9865890   
DANIELLE                       CEL  9347889   
CLESIA                         CEL  9004579   
ALBERTO                        CEL  9845008   
DIEGO                          CEL  9775890   
DIEGO                          CEL  9341289   
LAURA                          CEL  9014679   

(12 linha(s) afetadas)
*/


SELECT NOME, TIPO, NUMERO
FROM PESSOA INNER JOIN TELEFONE
ON IDPESSOA = ID_PESSOA
WHERE TIPO = 'COM'
GO

/*
NOME                           TIPO NUMERO
------------------------------ ---- ----------
ANTONIO                        COM  8757459   
CLEIDE                         COM  4598689   
DANIEL                         COM  2098258   
ADRIANO                        COM  7557909   
CLESIA                         COM  2932689   
DANIELLE                       COM  5098978   
ALBERTO                        COM  8757659   
NEIDE                          COM  2238689   
DIEGO                          COM  2090078   

(9 linha(s) afetadas)
*/



SELECT NOME, TIPO, NUMERO
FROM PESSOA INNER JOIN TELEFONE
ON IDPESSOA = ID_PESSOA
WHERE TIPO = 'RES'
GO

/*
NOME                           TIPO NUMERO
------------------------------ ---- ----------
DIEGO                          RES  3290078   

(1 linha(s) afetadas)
*/



SELECT TIPO, COUNT(*) AS 'QUANTIDADE'
FROM TELEFONE
GROUP BY TIPO
GO 

/*
TIPO QUANTIDADE
---- -----------
CEL  12
COM  9
RES  1

(3 linha(s) afetadas)
*/ 



SELECT PESSOA. *, TELEFONE. *
FROM PESSOA INNER JOIN TELEFONE
ON IDPESSOA = ID_PESSOA
GO  

/*
IDPESSOA    NOME               SEXO NASCIMENTO IDTELEFONE  TIPO NUMERO     ID_PESSOA
----------- ------------------ ---- ---------- ----------- ---- ---------- -----------
1           ANTONIO            M    1981-02-13 1           CEL  9878208    1
1           ANTONIO            M    1981-02-13 2           COM  8757459    1
2           DANIEL             M    1985-03-18 3           CEL  9755890    2
2           DANIEL             M    1985-03-18 4           CEL  9347029    2
3           CLEIDE             F    1979-10-13 5           COM  4598689    3
2           DANIEL             M    1985-03-18 6           COM  2098258    2
3           CLEIDE             F    1979-10-13 7           CEL  9998679    3
5           ADRIANO            M    1979-10-12 8           CEL  9875008    5
5           ADRIANO            M    1979-10-12 9           COM  7557909    5
6           DANIELLE           F    1985-03-18 10          CEL  9865890    6
6           DANIELLE           F    1985-03-18 11          CEL  9347889    6
7           CLESIA             F    1980-10-14 12          COM  2932689    7
6           DANIELLE           F    1985-03-18 13          COM  5098978    6
7           CLESIA             F    1980-10-14 14          CEL  9004579    7
9           ALBERTO            M    1971-02-19 15          CEL  9845008    9
9           ALBERTO            M    1971-02-19 16          COM  8757659    9
10          DIEGO              M    1987-03-15 17          CEL  9775890    10
10          DIEGO              M    1987-03-15 18          CEL  9341289    10
11          NEIDE              F    1967-01-21 19          COM  2238689    11
10          DIEGO              M    1987-03-15 20          COM  2090078    10
12          LAURA              F    2005-12-05 21          CEL  9014679    12
10          DIEGO              M    1987-03-15 22          RES  3290078    10

(22 linha(s) afetadas)
*/

