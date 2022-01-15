-- DATEPART - POREM O RETORNO É UM INTEIRO

SELECT 
NOME, 
DATEPART (MONTH, NASCIMENTO) AS 'MES DE NASC.', 
DATENAME (MONTH, NASCIMENTO) AS 'MES DE NASC.'
FROM ALUNO  
GO  

/*
NOME                           MES DE NASC. MES DE NASC.
------------------------------ ------------ ------------------------------
ANDRE                          12           Dezembro
ANA                            3            Março
RUI                            7            Julho
JOAO                           11           Novembro
ANDREIA                        12           Dezembro
ANAKARLA                       3            Março
ROBERVAL                       7            Julho
JOANETE                        10           Outubro
AMANDA                         12           Dezembro
ADRIANO                        3            Março
RAFAEL                         7            Julho
JHONATA                        11           Novembro
*/

