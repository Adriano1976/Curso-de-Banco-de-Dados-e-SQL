CREATE TABLE ALUNO(
	IDALUNO INT PRIMARY KEY,
	NOME VARCHAR2(30),
	EMAIL VARCHAR2(30),
	SALARIO NUMBER(10,2)
);


CREATE TABLE ALUNO2(
	IDALUNO INT PRIMARY KEY,
	NOME VARCHAR2(30),
	EMAIL VARCHAR2(30),
	SALARIO NUMBER(10,2)
);

CREATE SEQUENCE SEQ_EXEMPLO;

INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Joao Marcelo','joao@gmail.com',1200.00);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Mariana Santos','mariana@gmail.com',2500.00);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Carlos Eduardo','carlo@gmail',2010.00);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Adriano Santos','adrianosantos@gmail',1500.50);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Neide Ferreira','neidefferreira@hotmail.com',4050.00);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Laura Beatriz','laura_bee@gmail.com',2210.50);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Maria Ester','ester@gmail.com',2200.00);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Sergio Fonseca','folsong9@hotmail.com',1950.22);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Rubens Prado','Rubensprado@hotmail.com',1500.55);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Maria Jose','mariaj@gmail.com',2230.10);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Carla Balbino','carlabal@gmail.com',1099.55);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Cristovao Ramos','Cristovaoramos@gmail.com',1500.22);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Beatriz Ramos','beatrizramos@gmail.com',2100.00);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Diego Balbino','diegobalbino@hotmail.com',2000.00);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Maria da Gra�as','mariagraca@gmail.com',2100.10);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Cristiane Brota','brotacrish@gmail.com',2200.00);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Messias Bolsonaro','bolsonaro@gmail.com',2200.22);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Joao Carlos','carlosjoao@gmail.com',2210.00);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Raulino Galvao','raustinpp@gmail.com',2400.00);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Mayara Barbosa','mayarabarbosa@gmail.com',2352.55);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Cassius Gama','cassiusgama@gmail.com',3100.20);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Karla Geovanne','geovannek@gmail.com',1000.00);


INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Joao Marcelo','joao@gmail.com',1200.00);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Mariana Santos','mariana@gmail.com',2500.00);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Carlos Eduardo','carlo@gmail',2010.00);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Adriano Santos','adrianosantos@gmail',1500.50);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Neide Ferreira','neidefferreira@hotmail.com',4050.00);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Laura Beatriz','laura_bee@gmail.com',2210.50);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Maria Ester','ester@gmail.com',2200.00);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Sergio Fonseca','folsong9@hotmail.com',1950.22);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Rubens Prado','Rubensprado@hotmail.com',1500.55);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Maria Jose','mariaj@gmail.com',2230.10);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Carla Balbino','carlabal@gmail.com',1099.55);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Cristovao Ramos','Cristovaoramos@gmail.com',1500.22);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Beatriz Ramos','beatrizramos@gmail.com',2100.00);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Diego Balbino','diegobalbino@hotmail.com',2000.00);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Maria da Gra�as','mariagraca@gmail.com',2100.10);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Cristiane Brota','brotacrish@gmail.com',2200.00);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Messias Bolsonaro','bolsonaro@gmail.com',2200.22);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Joao Carlos','carlosjoao@gmail.com',2210.00);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Raulino Galvao','raustinpp@gmail.com',2400.00);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Mayara Barbosa','mayarabarbosa@gmail.com',2352.55);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Cassius Gama','cassiusgama@gmail.com',3100.20);
INSERT INTO ALUNO2 VALUES(SEQ_EXEMPLO.NEXTVAL, 'Karla Geovanne','geovannek@gmail.com',1000.00);

SELECT * FROM ALUNO;

SELECT * FROM ALUNO2;

SELECT ROWID, IDALUNO, NOME, EMAIL FROM ALUNO;

SELECT ROWID, IDALUNO, NOME, EMAIL FROM ALUNO2;

SELECT ROWID, ROWNUM,IDALUNO, NOME, EMAIL FROM ALUNO;

SELECT ROWID, ROWNUM,IDALUNO, NOME, EMAIL FROM ALUNO2;

SELECT NOME, EMAIL FROM ALUNO WHERE ROWNUM < 5;

SELECT NOME, EMAIL FROM ALUNO2 WHERE ROWNUM <= 5;





