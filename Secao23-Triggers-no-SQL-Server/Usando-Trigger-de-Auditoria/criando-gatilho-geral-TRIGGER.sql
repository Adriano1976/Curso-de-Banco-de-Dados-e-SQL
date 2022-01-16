CREATE TRIGGER TRG_ATUALIZA_PRODUTO
ON DBO.PRODUTOS 
FOR UPDATE
AS  
		-- CRIANDO AS VARIAVEIS

		DECLARE @IDPRODUTO INT
		DECLARE @PRODUTO VARCHAR(50)
		DECLARE @CATEGORIA VARCHAR(30)
		DECLARE @PRECO NUMERIC(10,2)
		DECLARE @PRECONOVO NUMERIC(10,2)
		DECLARE @DATA DATETIME
		DECLARE @USUARIO VARCHAR(30)
		DECLARE @ACAO VARCHAR(100)

		-- VALORES VINDOS DE TABELAS SÃO INSERIDOS COM O COMANDO SELECT.

		SELECT @IDPRODUTO = IDPRODUTO FROM INSERTED
		SELECT @PRODUTO = NOME FROM INSERTED
		SELECT @CATEGORIA = CATEGORIA FROM INSERTED
		SELECT @PRECO = PRECO FROM DELETED
		SELECT @PRECONOVO = PRECO FROM INSERTED

		-- VALORES VINDOS DE FUNCOES OU LITERAIS, DEVEM SER INSERIDOS COM O COMANDO SET.

		SET @DATA = GETDATE()
		SET @USUARIO = SUSER_NAME()
		SET @ACAO = 'VALOR INSERIDO PELA TRIGGER TRG_ATUALIZA_PRODUTO'

		-- INSERINDO OS VALORES NA TABELA HISTORICO

		INSERT INTO HISTORICO
		(PRODUTO,CATEGORIA,PRECOANTIGO,PRECONOVO,DATA,USUARIO,MENSAGEM)
		VALUES
		(@PRODUTO,@CATEGORIA,@PRECO,@PRECONOVO,@DATA,@USUARIO,@ACAO)

		PRINT 'TRIGGER EXECUTADA COM SUCESSO'
GO  

