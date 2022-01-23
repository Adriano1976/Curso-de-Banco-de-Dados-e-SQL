EXEC TELEFONE 'CEL'
GO 

/*
NOME                           NUMERO
------------------------------ ----------
ANTONIO                        9878208   
DANIEL                         9755890   
DANIEL                         9347029   
CLEIDE                         9998679   
ADRIANO                        9875008   
DANIELLE                       9865890   
DANIELLE                       9347889   
CLESIA                         9004579   
ALBERTO                        9845008   
DIEGO                          9775890   
DIEGO                          9341289   
LAURA                          9014679   

(12 linha(s) afetadas)

*/


EXEC TELEFONE 'COM'
GO  

/*
NOME                           NUMERO
------------------------------ ----------
ANTONIO                        8757459   
CLEIDE                         4598689   
DANIEL                         2098258   
ADRIANO                        7557909   
CLESIA                         2932689   
DANIELLE                       5098978   
ALBERTO                        8757659   
NEIDE                          2238689   
DIEGO                          2090078   

(9 linha(s) afetadas)
*/


EXEC TELEFONE 'RES'
GO  

/*
NOME                           NUMERO
------------------------------ ----------
DIEGO                          3290078   

(1 linha(s) afetadas)
*/


-- EXECUCAO DA PROC COM PARAMETRO DE SAIDA.
-- TRANSACTION SQL -> LINGUAGEM QUE O SQL SERVER TRABALHA.

DECLARE @SAIDA INT
EXEC GETTIPO @TIPO = 'CEL', @CONTADOR = @SAIDA OUTPUT
SELECT @SAIDA AS 'QUANTIDADE DE CELULAR'
GO  

/*
QUANTIDADE DE CELULAR
---------------------
12

(1 linha(s) afetadas)
*/


DECLARE @SAIDA INT
EXEC GETTIPO 'CEL', @SAIDA OUTPUT
SELECT @SAIDA AS 'QUANTIDADE DE CELULAR'
GO  

/*
QUANTIDADE DE CELULAR
---------------------
12

(1 linha(s) afetadas)
*/
