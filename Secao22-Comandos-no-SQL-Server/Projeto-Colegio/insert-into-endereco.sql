-- ENTERING DATA INTO THE ADDRESS TABLE.

INSERT INTO ENDERECO VALUES('FLAMENGO','RJ',1)
INSERT INTO ENDERECO VALUES('MORUMBI','SP',2)
INSERT INTO ENDERECO VALUES('CENTRO','MG',3)
INSERT INTO ENDERECO VALUES('CENTRO','SP',4)
INSERT INTO ENDERECO VALUES('FLAMENGO','RJ',5)
INSERT INTO ENDERECO VALUES('MORUMBI','SP',6)
INSERT INTO ENDERECO VALUES('CENTRO','MG',7)
INSERT INTO ENDERECO VALUES('CENTRO','SP',8)
INSERT INTO ENDERECO VALUES('FLAMENGO','RJ',9)
INSERT INTO ENDERECO VALUES('MORUMBI','SP',10)
INSERT INTO ENDERECO VALUES('CENTRO','MG',11)
INSERT INTO ENDERECO VALUES('CENTRO','SP',12)
GO

-- CHECKING IF THE DATA HAVE BEEN ENTERED CORRECTLY IN THE ADDRESS TABLE.

SELECT * FROM ENDERECO
GO 

/*
IDENDERECO  BAIRRO                         UF   ID_ALUNO
----------- ------------------------------ ---- -----------
100         FLAMENGO                       RJ   1
110         MORUMBI                        SP   2
130         CENTRO                         SP   4
140         FLAMENGO                       RJ   5
150         MORUMBI                        SP   6
170         CENTRO                         SP   8
180         FLAMENGO                       RJ   9
190         MORUMBI                        SP   10
210         CENTRO                         SP   12
*/