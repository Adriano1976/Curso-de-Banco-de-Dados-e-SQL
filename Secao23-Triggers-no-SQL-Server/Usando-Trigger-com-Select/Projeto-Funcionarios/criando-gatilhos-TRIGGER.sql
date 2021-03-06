CREATE TRIGGER TRG_SALARIO
ON DBO.FUNCIONARIOS
FOR UPDATE AS
IF UPDATE(SALARIO)
BEGIN
	INSERT INTO HIST_SALARIO
	(IDFUNC, NOME, DEPARTAMENTO, CARGO, ANTI_SAL, NOVO_SAL, DATA)
	SELECT 
	D.IDFUNC, D.NOME, D.DEPARTAMENTO, D.CARGO, D.SALARIO, I.SALARIO, GETDATE()
	FROM DELETED D, INSERTED I  
	WHERE D.IDFUNC = I.IDFUNC
END  

GO 


CREATE TRIGGER TRG_SALARIO_NOME
ON DBO.FUNCIONARIOS
FOR UPDATE AS
IF UPDATE(SALARIO)
BEGIN
	INSERT INTO HIST_SALARIO
	SELECT D.IDFUNC, D.SALARIO, I.SALARIO, GETDATE(), E.NOME
	FROM DELETED D 
	JOIN INSERTED I ON D.IDFUNC = I.IDFUNC
	JOIN FUNCIONARIOS E ON D.IDFUNC = E.IDFUNC
END  
GO 


CREATE TRIGGER TRG_HIST_SALARIO
ON DBO.FUNCIONARIOS
FOR UPDATE AS
IF UPDATE(SALARIO)
BEGIN
	INSERT INTO HIST_SALARIO
	(IDFUNC, NOME, DEPARTAMENTO, CARGO, ANTI_SAL, NOVO_SAL, DATA, USUARIO)
	SELECT 
	D.IDFUNC, D.NOME, D.DEPARTAMENTO, D.CARGO, D.SALARIO, I.SALARIO, GETDATE(), SUSER_NAME()
	FROM DELETED D, INSERTED I  
	WHERE D.IDFUNC = I.IDFUNC
END  

GO 


CREATE TRIGGER TGR_RANGE
ON DBO.FUNCIONARIOS
FOR INSERT, UPDATE
AS 
	DECLARE @MINSAL MONEY
	DECLARE @MAXSAL MONEY
	DECLARE @ATUALSAL MONEY

	SELECT @MINSAL = MINSAL, @MAXSAL = MAXSAL
	FROM SALARIO_RANGE

	SELECT @ATUALSAL = I.SALARIO
	FROM INSERTED I 

	IF(@ATUALSAL < @MINSAL)
	BEGIN
		RAISERROR('SALARIO MENOR QUE O PISO', 16, 1)
		ROLLBACK TRANSACTION
	END

	IF(@ATUALSAL > @MINSAL)
	BEGIN
		RAISERROR('SALARIO MAIOR QUE O TETO', 16, 1)
		ROLLBACK TRANSACTION
	END 

GO  


