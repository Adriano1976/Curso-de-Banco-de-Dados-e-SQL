
SELECT NOME,
CONCAT(	DAY	(NASCIMENTO),'/',
	MONTH (NASCIMENTO),'/',
	YEAR (NASCIMENTO)) AS 'NASCIMENTO'
FROM ALUNO  
GO   


/*
<<<<<<< HEAD
NOME                           NASCIMENTO
------------------------------ --------------------------------------
ANDRE                          9/12/1981
ANA                            9/3/1978
RUI                            9/7/1951
JOAO                           9/11/2002
ANDREIA                        9/12/1985
ANAKARLA                       9/3/1979
ROBERVAL                       9/7/1981
JOANETE                        9/10/2001
AMANDA                         9/12/1981
ADRIANO                        9/3/1976
RAFAEL                         9/7/1991
JHONATA                        9/11/2000
=======
NOME		NASCIMENTO

ANDRE		9/12/1981
ANA		9/3/1978
RUI		9/7/1951
JOAO		9/11/2002
ANDREIA		9/12/1985
ANAKARLA	9/3/1979
ROBERVAL	9/7/1981
JOANETE		9/10/2001
AMANDA		9/12/1981
ADRIANO		9/3/1976
RAFAEL		9/7/1991
JHONATA		9/11/2000
>>>>>>> 0393c35ae249c1b20b0738ebe0dff61abf9a7fa3
*/

