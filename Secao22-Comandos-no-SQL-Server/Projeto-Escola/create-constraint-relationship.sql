-- CREATING THE RELATIONSHIP BETWEEN STUDENT AND ADDRESS.

ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_ALUNO
FOREIGN KEY (ID_ALUNO) REFERENCES ALUNO (IDALUNO)
GO 

-- CREATING THE RELATIONSHIP BETWEEN STUDENT AND TELEPHONE.

ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_TELEFONE
FOREIGN KEY (ID_ALUNO) REFERENCES ALUNO (IDALUNO)
GO 
