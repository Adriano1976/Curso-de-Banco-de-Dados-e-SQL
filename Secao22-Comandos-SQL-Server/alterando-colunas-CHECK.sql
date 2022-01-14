-- CREATING THE CHECK RELATIONSHIP BETWEEN STUDENT AND SEX.

ALTER TABLE ALUNO 
ADD CONSTRAINT CHECK_SEXO CHECK (SEXO IN('M','F'))
GO 

-- CREATING THE CHECK RELATIONSHIP BETWEEN ADDRESS AND UF.

ALTER TABLE ENDERECO
ADD CONSTRAINT CK_UF
CHECK (UF IN ('RJ','SE','SP','PE','CE','RS','AL'))
GO 

-- CREATING THE CHECK RELATIONSHIP BETWEEN TELEPHONE AND TYPE.

ALTER TABLE TELEFONE
ADD CONSTRAINT CK_TIPO 
CHECK (TIPO IN ('COM','RES','CEL'))
GO 


