/* MAIS ALGUNS COMANDOS BASICOS - DELETANDO REGISTROS COM A CLAUSULA DELETE ------------------------ */

/* Obs 1.: Cuidado ao utilizar a clausula DELETE. Faca sempre um SELECT para conferir os dados. */
/* Obs 2.: Nunca se esqueça do WHERE ao utilizar o DELETE. Na maioria  dos casos, filtrar é necessario.*/

DELETE FROM CLIENTE; -- Nunca use esse comando sem antes seguir os seguntes passos:

SELECT * FROM CLIENTE WHERE NOME = 'ANA';

SELECT COUNT(*) FROM CLIENTE; -- TOTAL 6

SELECT COUNT(*) FROM CLIENTE WHERE NOME = 'ANA'; -- TOTAL A SER DELETADO SERA 1 CHAMADO 'ANA'

DELETE FROM CLIENTE WHERE NOME = 'ANA'; -- CLIENTE DELETADO CORRETAMENTE

SELECT COUNT(*) FROM CLIENTE; -- RESTANDO APENAS 5

INSERT INTO CLIENTE VALUES('CARLA','F','c.lopes@uol.com', '45638854', '784599658','RUA COPPER LEAF - WILLIAMSBURG - KITCHENER');

-- ATENCAO PARA ESSAS SUPER DICAS A SEGUIR:

-- Por que está ERRADO? Por que DELETA alem do que foi pedido, como mostrado nessa projecao.
-- OR traz todo mundo com pelo menos uma das duas condicoes.
SELECT * FROM CLIENTE WHERE NOME = 'CARLA' OR EMAIL = 'carla@terra.com.br'; 
DELETE FROM CLIENTE WHERE NOME = 'CARLA' OR EMAIL = 'carla@terra.com.br';

-- Por que está CORRETO? Por que DELETA SOMENTE o que foi pedido, como mostrado nessa projecao.
-- AND traz APENAS o registro que satisfaca as duas condicoes.
SELECT * FROM CLIENTE WHERE NOME = 'CARLA' AND EMAIL = 'carla@terra.com.br'; 
DELETE FROM CLIENTE WHERE NOME = 'CARLA' AND EMAIL = 'carla@terra.com.br'; 
