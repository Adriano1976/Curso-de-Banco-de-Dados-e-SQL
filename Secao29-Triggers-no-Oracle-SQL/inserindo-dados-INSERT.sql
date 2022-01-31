INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Oliver Galvao','Olivertinpp@gmail.com',2400.00);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Marcos Barbosa','marcosbarbosa@gmail.com',2352.55);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Mayara Gama','mayaragama@gmail.com',310.20);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Kelly Geovanne','geovakellyk@gmail.com'100.00);

/*

1 linha inserido.


1 linha inserido.

Erro a partir da linha : 43 no comando -
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Mayara Gama','mayaragama@gmail.com',310.20)
Relatório de erros -
ORA-21000: o argumento do número de erro para raise_application_error de -2000 está fora da faixa
ORA-06512: em "SYSTEM.CHECK_SALARIO", line 3
ORA-04088: erro durante a execução do gatilho 'SYSTEM.CHECK_SALARIO'


Erro a partir da linha : 44 no comando -
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Kelly Geovanne','geovakellyk@gmail.com',100.00)
Relatório de erros -
ORA-21000: o argumento do número de erro para raise_application_error de -2000 está fora da faixa
ORA-06512: em "SYSTEM.CHECK_SALARIO", line 3
ORA-04088: erro durante a execução do gatilho 'SYSTEM.CHECK_SALARIO'

*/

INSERT INTO USUARIOS VALUES(1, 'Joao Marcelo','joao@gmail.com',1200.00);
INSERT INTO USUARIOS VALUES(2, 'Mariana Santos','mariana@gmail.com',2500.00);
INSERT INTO USUARIOS VALUES(3, 'Carlos Eduardo','carlo@gmail.com',2010.00);
INSERT INTO USUARIOS VALUES(4, 'Adriano Santos','adrianosantos@gmail',1500.50);
INSERT INTO USUARIOS VALUES(5, 'Neide Ferreira','neidefferreira@hotmail.com',4050.00);
INSERT INTO USUARIOS VALUES(6, 'Laura Beatriz','laura_bee@gmail.com',2210.50);
INSERT INTO USUARIOS VALUES(7, 'Maria Ester','ester@gmail.com',2200.00);
INSERT INTO USUARIOS VALUES(8, 'Sergio Fonseca','folsong9@hotmail.com',1950.22);
INSERT INTO USUARIOS VALUES(9, 'Rubens Prado','Rubensprado@hotmail.com',1500.55);
INSERT INTO USUARIOS VALUES(10, 'Maria Jose','mariaj@gmail.com',2230.10);
INSERT INTO USUARIOS VALUES(11, 'Carla Balbino','carlabal@gmail.com',1099.55);
INSERT INTO USUARIOS VALUES(12, 'Cristovao Ramos','Cristovaoramos@gmail.com',1500.22);
INSERT INTO USUARIOS VALUES(13, 'Beatriz Ramos','beatrizramos@gmail.com',2100.00);
INSERT INTO USUARIOS VALUES(14, 'Diego Balbino','diegobalbino@hotmail.com',2000.00);
INSERT INTO USUARIOS VALUES(15, 'Maria da Graças','mariagraca@gmail.com',2100.10);
INSERT INTO USUARIOS VALUES(16, 'Cristiane Brota','brotacrish@gmail.com',2200.00);
INSERT INTO USUARIOS VALUES(17, 'Messias Bolsonaro','bolsonaro@gmail.com',2200.22);
INSERT INTO USUARIOS VALUES(18, 'Joao Carlos','carlosjoao@gmail.com',2210.00);
INSERT INTO USUARIOS VALUES(19, 'Raulino Galvao','raustinpp@gmail.com',2400.00);
INSERT INTO USUARIOS VALUES(20, 'Mayara Barbosa','mayarabarbosa@gmail.com',2352.55);
INSERT INTO USUARIOS VALUES(21, 'Cassius Gama','cassiusgama@gmail.com',3100.20);
INSERT INTO USUARIOS VALUES(22, 'Karla Geovanne','geovannek@gmail.com',1000.00);

