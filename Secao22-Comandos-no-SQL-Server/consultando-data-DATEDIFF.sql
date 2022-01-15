

-- DATEDIFF - CALCULA A DIFERENÇA ENTRE 2 DATAS.
-- FUNCAO GETDATE() TRAZ DIA E HORA.


SELECT NOME, DATEDIFF(DAY, NASCIMENTO, GETDATE()) 
FROM ALUNO
GO

/*
NOME                           
------------------------------ -----------
ANDRE                          14646
ANA                            16017
RUI                            25757
JOAO                           7006
ANDREIA                        13185
ANAKARLA                       15652
ROBERVAL                       14799
JOANETE                        7402
AMANDA                         14646
ADRIANO                        16747
RAFAEL                         11147
JHONATA                        7736
*/


SELECT NOME, (DATEDIFF (DAY, NASCIMENTO, GETDATE()) / 365) AS 'IDADE'
FROM ALUNO
GO

/*
NOME                           IDADE
------------------------------ -----------
ANDRE                          40
ANA                            43
RUI                            70
JOAO                           19
ANDREIA                        36
ANAKARLA                       42
ROBERVAL                       40
JOANETE                        20
AMANDA                         40
ADRIANO                        45
RAFAEL                         30
JHONATA                        21
*/

SELECT NOME, (DATEDIFF (MONTH, NASCIMENTO, GETDATE()) / 12) AS 'IDADE'
FROM ALUNO 
GO   

/*
NOME                           IDADE
------------------------------ -----------
ANDRE                          40
ANA                            43
RUI                            70
JOAO                           19
ANDREIA                        36
ANAKARLA                       42
ROBERVAL                       40
JOANETE                        20
AMANDA                         40
ADRIANO                        45
RAFAEL                         30
JHONATA                        21
*/

SELECT NOME, DATEDIFF (YEAR, NASCIMENTO, GETDATE()) AS 'IDADE'
FROM ALUNO
GO   

/*
NOME                           IDADE
------------------------------ -----------
ANDRE                          41
ANA                            44
RUI                            71
JOAO                           20
ANDREIA                        37
ANAKARLA                       43
ROBERVAL                       41
JOANETE                        21
AMANDA                         41
ADRIANO                        46
RAFAEL                         31
JHONATA                        22
*/

