-- CHARINDEX - RETORNA UM INTEIRO
-- CONTAGEM DEFAULT - INICIA EM 01

SELECT NOME, CHARINDEX('A',NOME) AS INDICE
FROM ALUNO  
GO  

/*
NOME                           INDICE
------------------------------ -----------
ANDRE                          1
ANA                            1
RUI                            0
JOAO                           3
ANDREIA                        1
ANAKARLA                       1
ROBERVAL                       7
JOANETE                        3
AMANDA                         1
ADRIANO                        1
RAFAEL                         2
JHONATA                        5
*/

SELECT NOME, SEXO, NASCIMENTO, CHARINDEX('F',SEXO) AS INDICE
FROM ALUNO  
GO  

/*
NOME                           SEXO NASCIMENTO INDICE
------------------------------ ---- ---------- -----------
ANDRE                          M    1981-12-09 0
ANA                            F    1978-03-09 1
RUI                            M    1951-07-09 0
JOAO                           M    2002-11-09 0
ANDREIA                        F    1985-12-09 1
ANAKARLA                       F    1979-03-09 1
ROBERVAL                       M    1981-07-09 0
JOANETE                        F    2001-10-09 1
AMANDA                         F    1981-12-09 1
ADRIANO                        M    1976-03-09 0
RAFAEL                         M    1991-07-09 0
JHONATA                        M    2000-11-09 0
*/

SELECT NOME, SEXO, NASCIMENTO, CHARINDEX('1976',NASCIMENTO) AS INDICE
FROM ALUNO  
GO  

/*
NOME                           SEXO NASCIMENTO INDICE
------------------------------ ---- ---------- -----------
ANDRE                          M    1981-12-09 0
ANA                            F    1978-03-09 1
RUI                            M    1951-07-09 0
JOAO                           M    2002-11-09 0
ANDREIA                        F    1985-12-09 1
ANAKARLA                       F    1979-03-09 1
ROBERVAL                       M    1981-07-09 0
JOANETE                        F    2001-10-09 1
AMANDA                         F    1981-12-09 1
ADRIANO                        M    1976-03-09 0
RAFAEL                         M    1991-07-09 0
JHONATA                        M    2000-11-09 0
*/

SELECT NOME, CHARINDEX('A',NOME,2) AS INDICE
FROM ALUNO  
GO

/*
NOME                           INDICE
------------------------------ -----------
ANDRE                          0
ANA                            3
RUI                            0
JOAO                           3
ANDREIA                        7
ANAKARLA                       3
ROBERVAL                       7
JOANETE                        3
AMANDA                         3
ADRIANO                        5
RAFAEL                         2
JHONATA                        5
*/

SELECT BAIRRO, CHARINDEX('CENTRO',BAIRRO) AS INDICE
FROM ENDERECO  
GO

/*
BAIRRO                         INDICE
------------------------------ -----------
FLAMENGO                       0
MORUMBI                        0
CENTRO                         1
FLAMENGO                       0
MORUMBI                        0
CENTRO                         1
FLAMENGO                       0
MORUMBI                        0
CENTRO                         1

*/

SELECT BAIRRO, UF, CHARINDEX('SP',UF) AS INDICE
FROM ENDERECO  
GO

/*
BAIRRO                         UF   INDICE
------------------------------ ---- -----------
FLAMENGO                       RJ   0
MORUMBI                        SP   1
CENTRO                         SP   1
FLAMENGO                       RJ   0
MORUMBI                        SP   1
CENTRO                         SP   1
FLAMENGO                       RJ   0
MORUMBI                        SP   1
CENTRO                         SP   1
*/

SELECT UF, CHARINDEX('SP',UF) AS INDICE
FROM ENDERECO  
GO

/*
UF   INDICE
---- -----------
RJ   0
SP   1
SP   1
RJ   0
SP   1
SP   1
RJ   0
SP   1
SP   1
*/

SELECT TIPO, CHARINDEX('CEL',TIPO) AS INDICE
FROM TELEFONE 
GO

/*
TIPO INDICE
---- -----------
CEL  1
RES  0
COM  0
CEL  1
CEL  1
RES  0
COM  0
CEL  1
CEL  1
RES  0
COM  0
CEL  1
RES  0
COM  0
CEL  1
CEL  1
RES  0
COM  0
CEL  1
*/