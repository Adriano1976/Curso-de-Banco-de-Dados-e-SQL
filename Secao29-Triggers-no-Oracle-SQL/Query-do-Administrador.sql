CREATE TABLE AUDITORIA(
	DATA_LOGIN DATE,
	LOGIN VARCHAR2(30)
);


CREATE TABLE USUARIOS(
	IDUSUARIO INT PRIMARY KEY,
	NOME VARCHAR2(30),
	EMAIL VARCHAR2(30),
	SALARIO NUMBER(10,2)
);


CREATE TABLE BKP_USER(
	IDBKP_USER INT PRIMARY KEY,
	NOME VARCHAR2(30),
	EMAIL VARCHAR2(30),
	SALARIO NUMBER(10,2)
);


-- CRIANDO UM PROCEDIMENTO(PROCEDURE) ANÔNIMO COLETIVA

CREATE OR REPLACE PROCEDURE BONUS(P_IDALUNO ALUNO.IDALUNO%TYPE, P_PERCENT NUMBER)
AS 
	BEGIN
		UPDATE ALUNO SET SALARIO = SALARIO + (SALARIO * (P_PERCENT / 100))
		WHERE P_IDALUNO = P_IDALUNO;
	END;
/


-- CRIANDO UM PROCEDIMENTO(PROCEDURE) ANÔNIMO INDIVIDUAL

CREATE OR REPLACE PROCEDURE AUMENTO(P_IDALUNO ALUNO.IDALUNO%TYPE, P_PERCENT NUMBER)
AS 
	BEGIN
		UPDATE ALUNO SET SALARIO = SALARIO + (SALARIO * (P_PERCENT / 100))
		WHERE P_IDALUNO = ALUNO.IDALUNO;
	END;
/


-- PRIMEIRO ETAPA: CRIA UM PROCEDIMENTO PARA QUE POSSA ENTRAR EM AÇÃO CASO SEJA CHAMADO

CREATE OR REPLACE PROCEDURE LOGPROC IS
BEGIN
	INSERT INTO AUDITORIA(DATA_LOGIN,LOGIN) VALUES(SYSDATE,USER);
END LOGPROC;
/


-- AS TRIGGERS DEVEM TER O TAMANHO MAXIMO DE 32K.
-- NÃO EXECUTAM COMANDOS DE DTL - COMMIT, ROLLBACK E SAVEPOINTS.


-- TRIGGER ERRADA - VALIDANDO O AUMENTO DO SALÁRIO

CREATE OR REPLACE TRIGGER CHECK_SALARIO
BEFORE INSERT OR UPDATE ON ALUNO  
FOR EACH ROW
BEGIN
	IF :NEW.SALARIO < 2000 THEN
		RAISE_APPLICATION_ERROR(-2000, 'VALOR INCORRETO')
	END IF;
END;
/


-- TRIGGER CORRETA - VALIDANDO O AUMENTO DO SALÁRIO

CREATE OR REPLACE TRIGGER CHECK_SALARIO
BEFORE INSERT OR UPDATE ON ALUNO  
FOR EACH ROW
BEGIN
	IF :NEW.SALARIO < 2000 THEN
		RAISE_APPLICATION_ERROR(-2000, 'VALOR INCORRETO');
	END IF;
END;
/


-- TRIGGER DE EVENTOS ------------------------------------------------------------


-- SEGUNDA ETAPA: CRIA UM GATILHO OU SINAL PARA QUE POSSA CHAMAR UMA AÇÃO SE
-- O SINAL OU GATILHO SEJA DADO.

CREATE OR REPLACE TRIGGER LOGTRIGGER
AFTER LOGON ON DATABASE
CALL LOGPROC
/



-- FAZENDO BECKUP DOS REGISTROS ANTES DE SER DELETADO USANDO TRIGGERS --------------

CREATE OR REPLACE TRIGGER LOG_USUARIO
BEFORE DELETE ON USUARIOS
FOR EACH ROW
BEGIN
	INSERT INTO BKP_USER VALUES(:OLD.IDUSUARIO,:OLD.NOME,:OLD.EMAIL,:OLD.SALARIO);
END;
/


CREATE OR REPLACE TRIGGER FALHA_LOGON
AFTER SERVERERROR
ON DATABASE
BEGIN
  IF (IS_SERVERERROR(1017)) THEN
    INSERT INTO AUDITORIA(DATA_LOGIN,LOGIN) 
    VALUES(SYSDATE,'ORA-1017');
  END IF;
END FALHA_LOGON;
/


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

SELECT * FROM ALUNO;
SELECT * FROM ALUNO;
SELECT * FROM AUDITORIA;
SELECT * FROM BKP_USER;

SELECT TRIGGER_NAME, TRIGGER_BODY FROM USER_TRIGGERS;

DELETE FROM USUARIOS WHERE IDUSUARIO = 1;
DELETE FROM USUARIOS WHERE IDUSUARIO = 8;
DELETE FROM USUARIOS WHERE IDUSUARIO = 20;


-- ANALIZANDO OS ERROS COMETIDO DURANDO A CRIAÇÃO DOS PROCEDIMENTOS, GATILHOS E INSEÇÃO DOS REGISTROS

CREATE OR REPLACE PROCEDURE BONUS(P_IDALUNO, ALUNO.IDALUNO%TYPE, P_PERCENT NUMBER)
AS 
	BEGIN
		UPDATE ALUNO SET SALARIO = SALARIO + (SALARIO * (P_PERCENT / 100))
		WHERE P_IDALUNO = P_IDALUNO
	END;
/

/*
LINE/COL  ERROR
--------- -------------------------------------------------------------
1/26      PLS-00103: Encontrado o símbolo "," quando um dos seguintes símbolos era esperado:     in out <um identificador>    <um identificador delimitado por aspas duplas> ... longo    duplo ref char tempo timestamp interval data binário    national caractere nchar 
1/58      PLS-00103: Encontrado o símbolo "NUMBER" quando um dos seguintes símbolos era esperado:     . ( ) , * @ % & = - + < / > at in é mod lembrete not rem =>    <um expoente (**)> <> ou != ou ~= >= <= <> e ou como like2    like4 likec entre || multiset membro submultiset 
Erros: verifique o log do compilador
*/


CREATE OR REPLACE PROCEDURE BONUS(P_IDALUNO ALUNO.IDALUNO%TYPE, P_PERCENT NUMBER)
AS 
	BEGIN
		UPDATE ALUNO SET SALARIO = SALARIO + (SALARIO * (P_PERCENT / 100))
		WHERE P_IDALUNO = P_IDALUNO
	END;
/

/*
LINE/COL  ERROR
--------- -------------------------------------------------------------
4/3       PL/SQL: SQL Statement ignored
6/2       PL/SQL: ORA-00933: comando SQL não encerrado adequadamente
7/0       PLS-00103: Encontrado o símbolo "end-of-file" quando um dos seguintes símbolos era esperado:     ( começar case declare end exception sair for goto if loop    mod nulo pragma raise retornar selecionar atualizar while com    <um identificador>    <um identificador delimitado por aspas duplas>    <uma variável de ligação> << continuar fechar atual    deletar fetch lock insert aberto rollback savepoint set sql    executar commit forall intercalar pipe expurgar 
Erros: verifique o log do compilador
*/


CREATE OR REPLACE PROCEDURE BONUS(P_IDALUNO ALUNO.ID%TYPE, P_PERCENT NUMBER)
AS 
	BEGIN
		UPDATE ALUNO SET SALARIO = SALARIO + (SALARIO * (P_PERCENT / 100))
		WHERE P_IDALUNO = P_IDALUNO;
	END;
/

/*
LINE/COL  ERROR
--------- -------------------------------------------------------------
0/0       PL/SQL: Compilation unit analysis terminated
1/33      PLS-00302: o componente 'ID' deve ser declarado
Erros: verifique o log do compilador
*/


CREATE OR REPLACE TRIGGER CHECK_SALARIO
BEFORE INSERT OR UPDATE ON ALUNO  
FOR EACH ROW
BEGIN
	IF :NEW.SALARIO > 200 THEN
		RAISE_APPLICATION_ERROR(-2000, 'VALOR INCORRETO')
	END IF;
END;
/

/*

Trigger CHECK_SALARIO compilado

LINE/COL  ERROR
--------- -------------------------------------------------------------
4/2       PLS-00103: Encontrado o símbolo "END" quando um dos seguintes símbolos era esperado:     := . ( % ; O símbolo ";" foi substituído por "END" para continuar. 
Erros: verifique o log do compilador

*/



SHOW ERRORS;

/*
SP2-0158: opção MOSTRAR desconhecida "ERROS"  

Erros para TRIGGER SYSTEM.CHECK_SALARIO:

LINE/COL ERROR
-------- -----------------------------------------------------------------
4/2      PLS-00103: Encontrado o símbolo "END" quando um dos seguintes símbolos era esperado:
         := . ( % ;
         O símbolo ";" foi substituído por "END" para continuar.
*/


INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Kelly Geovanne','geovakellyk@gmail.com'100.00);

/*

Erro a partir da linha : 44 no comando -
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Kelly Geovanne','geovakellyk@gmail.com'100.00)
Erro na Linha de Comandos : 44 Coluna : 87
Relatório de erros -
Erro de SQL: ORA-00917: vírgula não encontrada
00917. 00000 -  "missing comma"
*Cause:    
*Action:

*/



INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Mayara Gama','mayaragama@gmail.com',310.20);
INSERT INTO ALUNO VALUES(SEQ_EXEMPLO.NEXTVAL, 'Kelly Geovanne','geovakellyk@gmail.com'100.00);

/*

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




