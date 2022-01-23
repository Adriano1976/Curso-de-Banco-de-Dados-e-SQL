/* CLAUSULA AMBIGUA */

SELECT NOME, TIPO, NUMERO, BAIRRO, UF 
FROM ALUNO  
INNER JOIN TELEFONE
ON IDALUNO = ID_ALUNO
INNER JOIN ENDERECO  
ON IDALUNO = ID_ALUNO
GO 

-- Mensagem 209, Nível 16, Estado 1, Linha 8
-- Nome da coluna 'ID_ALUNO' ambíguo.


-- Nessa primeira opção, esse comando SÓ trás os alunos que TEM TELEFONE.

SELECT A.NOME, T.TIPO, T.NUMERO, E.BAIRRO, E.UF 
FROM ALUNO A  
INNER JOIN TELEFONE T
ON A.IDALUNO = T.ID_ALUNO
INNER JOIN ENDERECO E  
ON A.IDALUNO = E.ID_ALUNO
GO 


/*
NOME                           TIPO NUMERO     BAIRRO                         UF
------------------------------ ---- ---------- ------------------------------ ----
ANDRE                          CEL  7897889    FLAMENGO                       RJ
ANDRE                          RES  4385444    FLAMENGO                       RJ
ANA                            COM  4353754    MORUMBI                        SP
ANA                            CEL  7544556    MORUMBI                        SP
JOAO                           RES  4325014    CENTRO                         SP
ANDREIA                        COM  4344354    FLAMENGO                       RJ
ANDREIA                        CEL  2344676    FLAMENGO                       RJ
ANAKARLA                       CEL  7899909    MORUMBI                        SP
ANAKARLA                       RES  4465444    MORUMBI                        SP
AMANDA                         CEL  6889889    FLAMENGO                       RJ
AMANDA                         RES  4324004    FLAMENGO                       RJ
AMANDA                         COM  4345354    FLAMENGO                       RJ
ADRIANO                        CEL  2444556    MORUMBI                        SP
JHONATA                        RES  8825444    CENTRO                         SP
JHONATA                        COM  4354454    CENTRO                         SP
JHONATA                        CEL  2311556    CENTRO      
*/


-- INNER JOIN: Retorna os registros que tenham correspondência em ambas as tabelas.

SELECT NOME, SEXO, NASCIMENTO, EMAIL, BAIRRO, UF, TIPO, NUMERO FROM ALUNO A
INNER JOIN ENDERECO E 
ON A.IDALUNO = E.ID_ALUNO
INNER JOIN TELEFONE T 
ON A.IDALUNO = T.ID_ALUNO
GO

/*
NOME                           SEXO NASCIMENTO EMAIL                          BAIRRO                         UF   TIPO NUMERO
------------------------------ ---- ---------- ------------------------------ ------------------------------ ---- ---- ----------
ANDRE                          M    1981-12-09 ANDRE@IG.COM                   FLAMENGO                       RJ   CEL  7897889
ANDRE                          M    1981-12-09 ANDRE@IG.COM                   FLAMENGO                       RJ   RES  4385444
ANA                            F    1978-03-09 ANA@IG.COM                     MORUMBI                        SP   COM  4353754
ANA                            F    1978-03-09 ANA@IG.COM                     MORUMBI                        SP   CEL  7544556
JOAO                           M    2002-11-09 JOAO@IG.COM                    CENTRO                         SP   RES  4325014
ANDREIA                        F    1985-12-09 ANDREIA@IG.COM                 FLAMENGO                       RJ   COM  4344354
ANDREIA                        F    1985-12-09 ANDREIA@IG.COM                 FLAMENGO                       RJ   CEL  2344676
ANAKARLA                       F    1979-03-09 ANAKARLA@IG.COM                MORUMBI                        SP   CEL  7899909
ANAKARLA                       F    1979-03-09 ANAKARLA@IG.COM                MORUMBI                        SP   RES  4465444
AMANDA                         F    1981-12-09 AMANDA@IG.COM                  FLAMENGO                       RJ   CEL  6889889
AMANDA                         F    1981-12-09 AMANDA@IG.COM                  FLAMENGO                       RJ   RES  4324004
AMANDA                         F    1981-12-09 AMANDA@IG.COM                  FLAMENGO                       RJ   COM  4345354
ADRIANO                        M    1976-03-09 ADRIANO@IG.COM                 MORUMBI                        SP   CEL  2444556
JHONATA                        M    2000-11-09 JHONATA@IG.COM                 CENTRO                         SP   RES  8825444
JHONATA                        M    2000-11-09 JHONATA@IG.COM                 CENTRO                         SP   COM  4354454
JHONATA                        M    2000-11-09 JHONATA@IG.COM                 CENTRO                         SP   CEL  2311556

*/

SELECT NOME, SEXO, NASCIMENTO, EMAIL, BAIRRO, UF, TIPO, NUMERO FROM ALUNO A
INNER JOIN ENDERECO E 
ON A.IDALUNO = E.ID_ALUNO
INNER JOIN TELEFONE T 
ON A.IDALUNO = T.ID_ALUNO
WHERE E.ID_ALUNO IS NULL OR T.ID_ALUNO IS NULL
GO

/*
NOME                           SEXO NASCIMENTO EMAIL                          BAIRRO                         UF   TIPO NUMERO
------------------------------ ---- ---------- ------------------------------ ------------------------------ ---- ---- ----------

(0 linha(s) afetadas)
*/


SELECT NOME, SEXO, NASCIMENTO, EMAIL, BAIRRO, UF, TIPO, NUMERO FROM ALUNO A
INNER JOIN ENDERECO E 
ON A.IDALUNO = E.ID_ALUNO
INNER JOIN TELEFONE T 
ON A.IDALUNO = T.ID_ALUNO
WHERE E.ID_ALUNO IS NULL AND T.ID_ALUNO IS NULL
GO

/*
NOME                           SEXO NASCIMENTO EMAIL                          BAIRRO                         UF   TIPO NUMERO
------------------------------ ---- ---------- ------------------------------ ------------------------------ ---- ---- ----------

(0 linha(s) afetadas)
*/


SELECT NOME, SEXO, NASCIMENTO, EMAIL, BAIRRO, UF, TIPO, NUMERO FROM ALUNO A
LEFT JOIN ENDERECO E 
ON A.IDALUNO = E.ID_ALUNO
LEFT JOIN TELEFONE T 
ON A.IDALUNO = T.ID_ALUNO
GO

/*
NOME                           SEXO NASCIMENTO EMAIL                          BAIRRO                         UF   TIPO NUMERO
------------------------------ ---- ---------- ------------------------------ ------------------------------ ---- ---- ----------
ANDRE                          M    1981-12-09 ANDRE@IG.COM                   FLAMENGO                       RJ   CEL  7897889
ANDRE                          M    1981-12-09 ANDRE@IG.COM                   FLAMENGO                       RJ   RES  4385444
ANA                            F    1978-03-09 ANA@IG.COM                     MORUMBI                        SP   COM  4353754
ANA                            F    1978-03-09 ANA@IG.COM                     MORUMBI                        SP   CEL  7544556
RUI                            M    1951-07-09 RUI@IG.COM                     NULL                           NULL CEL  7899589
JOAO                           M    2002-11-09 JOAO@IG.COM                    CENTRO                         SP   RES  4325014
ANDREIA                        F    1985-12-09 ANDREIA@IG.COM                 FLAMENGO                       RJ   COM  4344354
ANDREIA                        F    1985-12-09 ANDREIA@IG.COM                 FLAMENGO                       RJ   CEL  2344676
ANAKARLA                       F    1979-03-09 ANAKARLA@IG.COM                MORUMBI                        SP   CEL  7899909
ANAKARLA                       F    1979-03-09 ANAKARLA@IG.COM                MORUMBI                        SP   RES  4465444
ROBERVAL                       M    1981-07-09 ROBERVAL@IG.COM                NULL                           NULL COM  4353654
JOANETE                        F    2001-10-09 JOANETE@IG.COM                 CENTRO                         SP   NULL NULL
AMANDA                         F    1981-12-09 AMANDA@IG.COM                  FLAMENGO                       RJ   CEL  6889889
AMANDA                         F    1981-12-09 AMANDA@IG.COM                  FLAMENGO                       RJ   RES  4324004
AMANDA                         F    1981-12-09 AMANDA@IG.COM                  FLAMENGO                       RJ   COM  4345354
ADRIANO                        M    1976-03-09 ADRIANO@IG.COM                 MORUMBI                        SP   CEL  2444556
RAFAEL                         M    1991-07-09 RAFAEL@IG.COM                  NULL                           NULL CEL  7895589
JHONATA                        M    2000-11-09 JHONATA@IG.COM                 CENTRO                         SP   RES  8825444
JHONATA                        M    2000-11-09 JHONATA@IG.COM                 CENTRO                         SP   COM  4354454
JHONATA                        M    2000-11-09 JHONATA@IG.COM                 CENTRO                         SP   CEL  2311556

*/


SELECT NOME, SEXO, NASCIMENTO, EMAIL, BAIRRO, UF, TIPO, NUMERO FROM ALUNO A
LEFT JOIN ENDERECO E 
ON A.IDALUNO = E.ID_ALUNO
LEFT JOIN TELEFONE T 
ON A.IDALUNO = T.ID_ALUNO
WHERE E.ID_ALUNO IS NULL OR T.ID_ALUNO IS NULL
GO

/*
NOME                           SEXO NASCIMENTO EMAIL                          BAIRRO                         UF   TIPO NUMERO
------------------------------ ---- ---------- ------------------------------ ------------------------------ ---- ---- ----------
RUI                            M    1951-07-09 RUI@IG.COM                     NULL                           NULL CEL  7899589
ROBERVAL                       M    1981-07-09 ROBERVAL@IG.COM                NULL                           NULL COM  4353654
JOANETE                        F    2001-10-09 JOANETE@IG.COM                 CENTRO                         SP   NULL NULL
RAFAEL                         M    1991-07-09 RAFAEL@IG.COM                  NULL                           NULL CEL  7895589
*/


SELECT NOME, SEXO, NASCIMENTO, EMAIL, BAIRRO, UF, TIPO, NUMERO FROM ALUNO A
LEFT JOIN ENDERECO E 
ON A.IDALUNO = E.ID_ALUNO
LEFT JOIN TELEFONE T 
ON A.IDALUNO = T.ID_ALUNO
WHERE E.ID_ALUNO IS NULL AND T.ID_ALUNO IS NULL
GO 

/*
NOME                           SEXO NASCIMENTO EMAIL                          BAIRRO                         UF   TIPO NUMERO
------------------------------ ---- ---------- ------------------------------ ------------------------------ ---- ---- ----------

(0 linha(s) afetadas)
*/


SELECT NOME, SEXO, NASCIMENTO, EMAIL, BAIRRO, UF, TIPO, NUMERO FROM ALUNO A
RIGHT JOIN ENDERECO E 
ON A.IDALUNO = E.ID_ALUNO
RIGHT JOIN TELEFONE T 
ON A.IDALUNO = T.ID_ALUNO
GO

/*
NOME                           SEXO NASCIMENTO EMAIL                          BAIRRO                         UF   TIPO NUMERO
------------------------------ ---- ---------- ------------------------------ ------------------------------ ---- ---- ----------
ANDRE                          M    1981-12-09 ANDRE@IG.COM                   FLAMENGO                       RJ   CEL  7897889
ANDRE                          M    1981-12-09 ANDRE@IG.COM                   FLAMENGO                       RJ   RES  4385444
ANA                            F    1978-03-09 ANA@IG.COM                     MORUMBI                        SP   COM  4353754
ANA                            F    1978-03-09 ANA@IG.COM                     MORUMBI                        SP   CEL  7544556
NULL                           NULL NULL       NULL                           NULL                           NULL CEL  7899589
JOAO                           M    2002-11-09 JOAO@IG.COM                    CENTRO                         SP   RES  4325014
ANDREIA                        F    1985-12-09 ANDREIA@IG.COM                 FLAMENGO                       RJ   COM  4344354
ANDREIA                        F    1985-12-09 ANDREIA@IG.COM                 FLAMENGO                       RJ   CEL  2344676
ANAKARLA                       F    1979-03-09 ANAKARLA@IG.COM                MORUMBI                        SP   CEL  7899909
ANAKARLA                       F    1979-03-09 ANAKARLA@IG.COM                MORUMBI                        SP   RES  4465444
NULL                           NULL NULL       NULL                           NULL                           NULL COM  4353654
AMANDA                         F    1981-12-09 AMANDA@IG.COM                  FLAMENGO                       RJ   CEL  6889889
AMANDA                         F    1981-12-09 AMANDA@IG.COM                  FLAMENGO                       RJ   RES  4324004
AMANDA                         F    1981-12-09 AMANDA@IG.COM                  FLAMENGO                       RJ   COM  4345354
ADRIANO                        M    1976-03-09 ADRIANO@IG.COM                 MORUMBI                        SP   CEL  2444556
NULL                           NULL NULL       NULL                           NULL                           NULL CEL  7895589
JHONATA                        M    2000-11-09 JHONATA@IG.COM                 CENTRO                         SP   RES  8825444
JHONATA                        M    2000-11-09 JHONATA@IG.COM                 CENTRO                         SP   COM  4354454
JHONATA                        M    2000-11-09 JHONATA@IG.COM                 CENTRO                         SP   CEL  2311556

(19 linha(s) afetadas)
*/


SELECT NOME, SEXO, NASCIMENTO, EMAIL, BAIRRO, UF, TIPO, NUMERO FROM ALUNO A
RIGHT JOIN ENDERECO E 
ON A.IDALUNO = E.ID_ALUNO
RIGHT JOIN TELEFONE T 
ON A.IDALUNO = T.ID_ALUNO
WHERE E.ID_ALUNO IS NULL OR T.ID_ALUNO IS NULL
GO

/*
NOME                           SEXO NASCIMENTO EMAIL                          BAIRRO                         UF   TIPO NUMERO
------------------------------ ---- ---------- ------------------------------ ------------------------------ ---- ---- ----------
NULL                           NULL NULL       NULL                           NULL                           NULL CEL  7899589
NULL                           NULL NULL       NULL                           NULL                           NULL COM  4353654
NULL                           NULL NULL       NULL                           NULL                           NULL CEL  7895589

(3 linha(s) afetadas)
*/


SELECT NOME, SEXO, NASCIMENTO, EMAIL, BAIRRO, UF, TIPO, NUMERO FROM ALUNO A
RIGHT JOIN ENDERECO E 
ON A.IDALUNO = E.ID_ALUNO
RIGHT JOIN TELEFONE T 
ON A.IDALUNO = T.ID_ALUNO
WHERE E.ID_ALUNO IS NULL AND T.ID_ALUNO IS NULL
GO

/*
NOME                           SEXO NASCIMENTO EMAIL                          BAIRRO                         UF   TIPO NUMERO
------------------------------ ---- ---------- ------------------------------ ------------------------------ ---- ---- ----------

(0 linha(s) afetadas)
*/


SELECT NOME, SEXO, NASCIMENTO, EMAIL, BAIRRO, UF, TIPO, NUMERO FROM ALUNO A
FULL JOIN ENDERECO E 
ON A.IDALUNO = E.ID_ALUNO
FULL JOIN TELEFONE T 
ON A.IDALUNO = T.ID_ALUNO
GO

/*
NOME                           SEXO NASCIMENTO EMAIL                          BAIRRO                         UF   TIPO NUMERO
------------------------------ ---- ---------- ------------------------------ ------------------------------ ---- ---- ----------
ANDRE                          M    1981-12-09 ANDRE@IG.COM                   FLAMENGO                       RJ   CEL  7897889
ANDRE                          M    1981-12-09 ANDRE@IG.COM                   FLAMENGO                       RJ   RES  4385444
ANA                            F    1978-03-09 ANA@IG.COM                     MORUMBI                        SP   COM  4353754
ANA                            F    1978-03-09 ANA@IG.COM                     MORUMBI                        SP   CEL  7544556
RUI                            M    1951-07-09 RUI@IG.COM                     NULL                           NULL CEL  7899589
JOAO                           M    2002-11-09 JOAO@IG.COM                    CENTRO                         SP   RES  4325014
ANDREIA                        F    1985-12-09 ANDREIA@IG.COM                 FLAMENGO                       RJ   COM  4344354
ANDREIA                        F    1985-12-09 ANDREIA@IG.COM                 FLAMENGO                       RJ   CEL  2344676
ANAKARLA                       F    1979-03-09 ANAKARLA@IG.COM                MORUMBI                        SP   CEL  7899909
ANAKARLA                       F    1979-03-09 ANAKARLA@IG.COM                MORUMBI                        SP   RES  4465444
ROBERVAL                       M    1981-07-09 ROBERVAL@IG.COM                NULL                           NULL COM  4353654
JOANETE                        F    2001-10-09 JOANETE@IG.COM                 CENTRO                         SP   NULL NULL
AMANDA                         F    1981-12-09 AMANDA@IG.COM                  FLAMENGO                       RJ   CEL  6889889
AMANDA                         F    1981-12-09 AMANDA@IG.COM                  FLAMENGO                       RJ   RES  4324004
AMANDA                         F    1981-12-09 AMANDA@IG.COM                  FLAMENGO                       RJ   COM  4345354
ADRIANO                        M    1976-03-09 ADRIANO@IG.COM                 MORUMBI                        SP   CEL  2444556
RAFAEL                         M    1991-07-09 RAFAEL@IG.COM                  NULL                           NULL CEL  7895589
JHONATA                        M    2000-11-09 JHONATA@IG.COM                 CENTRO                         SP   RES  8825444
JHONATA                        M    2000-11-09 JHONATA@IG.COM                 CENTRO                         SP   COM  4354454
JHONATA                        M    2000-11-09 JHONATA@IG.COM                 CENTRO                         SP   CEL  2311556

(20 linha(s) afetadas)
*/


SELECT NOME, SEXO, NASCIMENTO, EMAIL, BAIRRO, UF, TIPO, NUMERO FROM ALUNO A
FULL JOIN ENDERECO E 
ON A.IDALUNO = E.ID_ALUNO
FULL JOIN TELEFONE T 
ON A.IDALUNO = T.ID_ALUNO
WHERE E.ID_ALUNO IS NULL OR T.ID_ALUNO IS NULL
GO

/*
NOME                           SEXO NASCIMENTO EMAIL                          BAIRRO                         UF   TIPO NUMERO
------------------------------ ---- ---------- ------------------------------ ------------------------------ ---- ---- ----------
RUI                            M    1951-07-09 RUI@IG.COM                     NULL                           NULL CEL  7899589
ROBERVAL                       M    1981-07-09 ROBERVAL@IG.COM                NULL                           NULL COM  4353654
JOANETE                        F    2001-10-09 JOANETE@IG.COM                 CENTRO                         SP   NULL NULL
RAFAEL                         M    1991-07-09 RAFAEL@IG.COM                  NULL                           NULL CEL  7895589

(4 linha(s) afetadas)
*/


SELECT NOME, SEXO, NASCIMENTO, EMAIL, BAIRRO, UF, TIPO, NUMERO FROM ALUNO A
FULL JOIN ENDERECO E 
ON A.IDALUNO = E.ID_ALUNO
FULL JOIN TELEFONE T 
ON A.IDALUNO = T.ID_ALUNO
WHERE E.ID_ALUNO IS NULL AND T.ID_ALUNO IS NULL
GO

/*
NOME                           SEXO NASCIMENTO EMAIL                          BAIRRO                         UF   TIPO NUMERO
------------------------------ ---- ---------- ------------------------------ ------------------------------ ---- ---- ----------

(0 linha(s) afetadas)
*/
