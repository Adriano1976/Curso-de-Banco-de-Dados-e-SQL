-- BULK INSERT - IMPORTACAO DE ARQUIVOS

CREATE DATABASE CONTABILIDADE
GO  


USE CONTABILIDADE
GO  


CREATE TABLE LANCAMENTO_CONTABIL(
	CONTA INT,
	VALOR INT,
	DEB_CRED CHAR(1)
) 
GO



SP_HELP LANCAMENTO_CONTABIL
GO  

/*
Name                                                                                                                             Owner                                                                                                                            Type                            Created_datetime
-------------------------------------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------- ------------------------------- -----------------------
LANCAMENTO_CONTABIL                                                                                                              dbo                                                                                                                              user table                      2022-01-15 14:29:32.667

 
 
Column_name                                                                                                                      Type                                                                                                                             Computed                            Length      Prec  Scale Nullable                            TrimTrailingBlanks                  FixedLenNullInSource                Collation
-------------------------------------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------- ----------------------------------- ----------- ----- ----- ----------------------------------- ----------------------------------- ----------------------------------- --------------------------------------------------------------------------------------------------------------------------------
CONTA                                                                                                                            int                                                                                                                              no                                  4           10    0     yes                                 (n/a)                               (n/a)                               NULL
VALOR                                                                                                                            int                                                                                                                              no                                  4           10    0     yes                                 (n/a)                               (n/a)                               NULL
DEB_CRED                                                                                                                         char                                                                                                                             no                                  1                       yes                                 no                                  yes                                 Latin1_General_CI_AS

 
Identity                                                                                                                         Seed                                    Increment                               Not For Replication
-------------------------------------------------------------------------------------------------------------------------------- --------------------------------------- --------------------------------------- -------------------
No identity column defined.                                                                                                      NULL                                    NULL                                    NULL

 
RowGuidCol
--------------------------------------------------------------------------------------------------------------------------------
No rowguidcol column defined.

 
Data_located_on_filegroup
--------------------------------------------------------------------------------------------------------------------------------
GA_CONT_GERAL

 
O objeto 'LANCAMENTO_CONTABIL' não tem nenhum índice, ou você não tem permissões.
 
Nenhuma restrição foi definida no objeto 'LANCAMENTO_CONTABIL', ou você não tem permissões.
 
Nenhuma chave estrangeira faz referência à tabela 'LANCAMENTO_CONTABIL', ou você não tem permissões em tabelas de referência.
Nenhuma exibição com tabela de referência de associação a esquema 'LANCAMENTO_CONTABIL'.

*/ 

