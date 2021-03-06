CREATE TABLE PRODUTOS(
	IDPRODUTO INT IDENTITY,
	NOME VARCHAR(50) NOT NULL,
	CATEGORIA VARCHAR(30) NOT NULL,
	PRECO NUMERIC(10,2) NOT NULL,
	CONSTRAINT PK_IDPRODUTO PRIMARY KEY (IDPRODUTO)
)
GO  

CREATE TABLE HISTORICO(
	IDOPERACAO INT IDENTITY,
	PRODUTO VARCHAR(50) NOT NULL,
	CATEGORIA VARCHAR(30) NOT NULL,
	PRECOANTIGO NUMERIC(10,2) NOT NULL,
	PRECONOVO NUMERIC(10,2) NOT NULL,
	DATA DATETIME,
	USUARIO VARCHAR(30),
	MENSAGEM VARCHAR(100),
	CONSTRAINT PK_IDOPERACAO PRIMARY KEY (IDOPERACAO)
)
GO 

