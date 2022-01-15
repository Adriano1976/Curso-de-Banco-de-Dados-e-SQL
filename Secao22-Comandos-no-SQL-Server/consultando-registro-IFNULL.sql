-- Nessa segunda opção, esse comando trás TODOS OS ALUNOS, que tem ou não telefone
-- e usando alguns critérios IFNULL.

SELECT  
A.NOME, 
ISNULL(T.TIPO, 'SEM') AS "TIPO", 
ISNULL(T.NUMERO,'NUMERO') AS "TELEFONE", 
E.BAIRRO, 
E.UF
FROM ALUNO A LEFT JOIN TELEFONE T
ON A.IDALUNO = T.ID_ALUNO
INNER JOIN ENDERECO E
ON A.IDALUNO = E.ID_ALUNO
GO

/*
NOME                           TIPO TELEFONE   BAIRRO                         UF
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
JOANETE                        SEM  NUMERO     CENTRO                         SP
AMANDA                         CEL  6889889    FLAMENGO                       RJ
AMANDA                         RES  4324004    FLAMENGO                       RJ
AMANDA                         COM  4345354    FLAMENGO                       RJ
ADRIANO                        CEL  2444556    MORUMBI                        SP
JHONATA                        RES  8825444    CENTRO                         SP
JHONATA                        COM  4354454    CENTRO                         SP
JHONATA                        CEL  2311556    CENTRO 
*/
