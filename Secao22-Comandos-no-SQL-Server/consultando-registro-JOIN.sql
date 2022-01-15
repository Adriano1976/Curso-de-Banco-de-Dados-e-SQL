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
