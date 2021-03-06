DECLARE
	@VAR_CONT_FORD INT,
	@VAR_CONT_FIAT INT
BEGIN
	-- METODO 1 - O SELECT PRECISA RETORNAR UMA SIMPLES COLUNA E UM SO RESULTADO.

	SET @VAR_CONT_FORD = (SELECT COUNT(*) FROM CARROS WHERE FABRICANTE = 'FORD')
	PRINT 'QUANTIDADE FORD: ' + CAST(@VAR_CONT_FORD AS VARCHAR)

	-- METODO 2

	SELECT @VAR_CONT_FIAT = COUNT(*) FROM CARROS WHERE FABRICANTE = 'FIAT'
	PRINT 'QUANTIDADE FIAT: ' + CONVERT(VARCHAR, @VAR_CONT_FIAT)

END  
GO  

/*
QUANTIDADE FORD: 3
QUANTIDADE FIAT: 3
*/


-- BLOCOS IF E ELSE - PROCEDURES

DECLARE
	@NUMERO INT = 2022 -- DINAMICO
BEGIN
	IF @NUMERO = 2022 -- EXPRESSAO BOOLEANA - TRUE
		PRINT 'O VALOR É VERDADEIRO'
	ELSE
		PRINT 'O VALOR É FALSO'
END
GO 

/*
O VALOR É VERDADEIRO
*/



DECLARE
	@CONTADOR INT
BEGIN
	SELECT 
	CASE 
		WHEN FABRICANTE = 'FIAT' THEN 'FAIXA 1'
		WHEN FABRICANTE = 'CHEVROLET' THEN 'FAIXA 2'
		ELSE 'OUTRAS FAIXAS'
	END AS 'INFORMACOES', 
	* 
	FROM CARROS		
END  
GO  

/*
INFORMACOES        CARRO                FABRICANTE
------------------ -------------------- ------------------
OUTRAS FAIXAS      KA                   FORD
OUTRAS FAIXAS      FIESTA               FORD
OUTRAS FAIXAS      PRISMA               FORD
OUTRAS FAIXAS      CLIO                 RENAULT
OUTRAS FAIXAS      SANDERO              RENAULT
FAIXA 2            CHEVETE              CHEVROLET
FAIXA 2            OMEGA                CHEVROLET
FAIXA 1            PALIO                FIAT
FAIXA 1            DOBLO                FIAT
FAIXA 1            UNO                  FIAT
OUTRAS FAIXAS      GOL                  VOLKSWAGEN

(11 linha(s) afetadas)
*/



