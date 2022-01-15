-- https://docs.microsoft.com/en-us/sql/t-sql/functions/cast-and-convert-transact-sql?view=sql-server-2017

SELECT NOME,
CONVERT(VARCHAR, NASCIMENTO, 103) AS 'DATA NASC'
FROM ALUNO  
GO  

/*
NOME                           DATA NASC
------------------------------ ------------------------------
ANDRE                          09/12/1981
ANA                            09/03/1978
RUI                            09/07/1951
JOAO                           09/11/2002
ANDREIA                        09/12/1985
ANAKARLA                       09/03/1979
ROBERVAL                       09/07/1981
JOANETE                        09/10/2001
AMANDA                         09/12/1981
ADRIANO                        09/03/1976
RAFAEL                         09/07/1991
JHONATA                        09/11/2000
*/
