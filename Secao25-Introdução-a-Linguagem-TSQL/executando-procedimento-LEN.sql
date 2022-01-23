
DECLARE
	@VAR_FRASE VARCHAR(40)
BEGIN
	SELECT @VAR_FRASE = 'o rato roeu a roupa do rei de roma'		
	SELECT LEN(@VAR_FRASE) AS [CONTADOR DE STRING]
END   
GO

/*
CONTADOR DE STRING
------------------
34

(1 linha(s) afetadas)
*/

