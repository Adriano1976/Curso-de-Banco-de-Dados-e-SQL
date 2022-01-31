
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