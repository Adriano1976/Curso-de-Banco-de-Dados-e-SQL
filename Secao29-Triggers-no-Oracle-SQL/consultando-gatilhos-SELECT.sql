
SELECT TRIGGER_NAME, TRIGGER_BODY
FROM USER_TRIGGERS;

/*
TRIGGER_NAME                   TRIGGER_BODY                                                                    
------------------------------ ----------------------------------------------------------
CHECK_SALARIO                  BEGIN                                                                           
                               	IF :NEW.SALARIO < 2000 THEN                                                     
                               		RAISE_APPLICATION_ERROR(-2000, 'VALOR INCOR                                     

REPCATLOGTRIG                  BEGIN                                                                           
                                 sys.dbms_alert.signal('repcatlog_alert', '');                                 
                               END;                                                                            

DEF$_PROPAGATOR_TRIG           DECLARE                                                                         
                                 prop_count  NUMBER;                                                           
                               BEGIN                                                                           

TRIGGER_NAME                   TRIGGER_BODY                                                                    
------------------------------ ----------------------------------------------------------
                                 SELECT count(*) into prop_count                                               
                                   FROM s                                                                      

*/


-- FALHA DE LOGON ------------------------------------------------
-- 1004 default username featue not supported
-- 1005 passwrd nulo
-- 1045 privilegio insuficiente

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

/*
Trigger FALHA_LOGON compilado
*/
