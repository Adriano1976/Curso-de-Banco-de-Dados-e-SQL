-- USUARIO DO BANCO DE DADOS

SHOW USER;

/*
USER é "SYSTEM"
*/



-- TABELA DUMMY - IDIOTA

SELECT 1 + 1 AS "SOMA" FROM DUAL -- FAÇAM DESSA FORMA

/*
      SOMA
----------
         2
*/


-- TO_CHAR - Converte valores em texto, o || serve para concatenar strings

SELECT 'R$ ' || TO_CHAR(12.7+13.5) AS PRECO FROM DUAL;

/*
PRECO  
-------
R$ 26,2
*/


-- TO_CHAR - Pode se também converter datas

SELECT TO_CHAR(SYSDATE,'DD/MM/YYYY HH24:MI:SS D DY DAY') AS HOJE FROM DUAL;

/*
HOJE                                                                                   
---------------------------------------------------------------------------------------
29/01/2022 00:20:35 7 SÁB SÁBADO 
*/


 -- TO_DATE - Converte texto em Data-Hora

 SELECT TO_DATE('21/08/2013 14:30:00', 'DD/MM/YYYY HH24:MI:SS') AS DIA FROM DUAL;

/*
DIA     
--------
21/08/13
*/


--  TO_NUMBER - Converte texto em número

SELECT TO_NUMBER('34,47') AS VALOR FROM DUAL;

/*

     VALOR
----------
     34,47

*/


-- INITCAP - Deixa o primeiro caracter da string em maiúsculo

SELECT INITCAP('DANIEL ATILIO') AS NOME FROM DUAL;

/*
NOME         
-------------
Daniel Atilio
*/


-- LOWER - Deixa todos os caracteres da string em minúsculo

SELECT LOWER('DANIEL ATILIO') AS NOME FROM DUAL;

/*
NOME         
-------------
daniel atilio
*/


--  UPPER - Deixa todos os caracteres da string em maiúsculo

SELECT UPPER('Daniel Atilio') AS APELIDO FROM DUAL;

/*
APELIDO      
-------------
DANIEL ATILIO
*/


-- Abaixo um exemplo utilizando traço

SELECT LPAD(' Daniel',8,'-') AS NOME FROM DUAL;

/*
NOME    
--------
- Daniel
*/


-- RPAD - Adiciona caracteres a direita com um tamanho definido, 
-- ou quebra a string atual com um tamanho pré-determinado

SELECT RPAD('Daniel',3) AS APELIDO FROM DUAL;

/*
APE
---
Dan
*/


--  LTRIM - Retira espaços da esquerda da string

SELECT LTRIM('    Daniel    ') AS NOME FROM DUAL;

/*
NOME      
----------
Daniel   
*/


-- RTRIM - Retira espaços da direita da string

SELECT RTRIM('    Daniel    ') AS NOME FROM DUAL;

/*
NOME      
----------
    Daniel
*/


--  TRIM - Retira espaços da esquerda e da direita da string

SELECT TRIM('    Daniel    ') AS NOME FROM DUAL; 

/*
NOME  
------
Daniel
*/


-- SUBSTR - Pega uma parte da string, uma substring, através da posição 
-- inicial e do total de caracteres

SELECT SUBSTR('Daniel Atilio',8,6) AS SOBRENOME FROM DUAL;

/*
SOBREN
------
Atilio
*/


-- INSTR - Retorna a posição da substring procurada, conforme posição inicial 
-- e o número de vezes encontrado

SELECT INSTR('DANIEL ATILIO','I',1,2) AS NOME FROM DUAL;

/*
      NOME
----------
        10
*/



--  REPLACE - Troca uma parte da string por outra

SELECT REPLACE('DANIEL ATILIO','ATILIO','HUDSON') AS NOME FROM DUAL;

/*
NOME         
-------------
DANIEL HUDSON
*/



--  TRANSLATE - Traduz uma String, conforme caracteres buscados e suas respectivas conversões

SELECT TRANSLATE('DANIEL ATILIO', 'AIOED', '4103 >') AS TRADUCAO FROM DUAL;

/*
TRADUCAO     
-------------
 4N13L 4T1L10
*/



-- LENGTH - Retorna o tamanho da String

SELECT LENGTH('DANIEL ATILIO') AS TAMANHO FROM DUAL;

/*
   TAMANHO
----------
        13
*/



--  ABS - Retorna o valor absoluto do número

SELECT ABS(-37.42) AS ABSOLUTO FROM DUAL;

/*
  ABSOLUTO
----------
     37,42
*/



--  CEIL - Retorna o maior número inteiro através de um número passado

SELECT CEIL(5.99) AS INTEIRO FROM DUAL;

/*
   INTEIRO
----------
         6
*/



-- Também é possível utilizar com números negativos

SELECT CEIL(-5.30) AS INTEIRO FROM DUAL;

/*
   INTEIRO
----------
        -5
*/



-- FLOOR - Retorna o menor número inteiro através de um número passado

SELECT FLOOR(5.99) AS INTEIRO FROM DUAL;

/*
   INTEIRO
----------
         5
*/



--  MOD - Retorna o resto de uma divisão

SELECT MOD(15,4) AS RESTO FROM DUAL;

/*
     RESTO
----------
         3
*/



-- TRUNC - Retorna um valor truncado com casas decimais

SELECT TRUNC(125.8154, 2) AS VALOR FROM DUAL;

/*
     VALOR
----------
    125,81
*/



-- SYSDATE - Retorna o dia atual

SELECT SYSDATE AS HOJE FROM DUAL;

/*
HOJE    
--------
29/01/22
*/



--  POWER - Retorna um valor em sua potencia, por exemplo 2 elevado a 5

SELECT POWER(2,5) AS POTENCIA FROM DUAL;

/*
  POTENCIA
----------
        32
*/



-- SQRT - Retorna a raíz quadrada de um valor

SELECT SQRT(144) AS RAIZ FROM DUAL;

/*
      RAIZ
----------
        12
*/



--  ROUND - Retorna um valor arredondado, conforme casas decimais passadas por referência

SELECT ROUND(15.194,1) AS ARREDONDADO FROM DUAL;

/*
ARREDONDADO
-----------
       15,2
*/



-- Abaixo um exemplo com duas casas decimais

SELECT ROUND(15.194,2) AS ARREDONDADO FROM DUAL;

/*
ARREDONDADO
-----------
      15,19
*/



--  LAST_DAY - Retorna o último dia do mês corrente

SELECT LAST_DAY(SYSDATE) AS ULTIMO_DIA FROM DUAL;

/*
ULTIMO_D
--------
31/01/22
*/



-- NEXT_DAY - Retorna o próxima dia conforme parâmetros (por exemplo, a próxima terça-feira)

SELECT NEXT_DAY('22-AGO-2013','TERCA-FEIRA') AS PROXIMO_DIA FROM DUAL;

/*
PROXIMO_
--------
27/08/13
*/



-- ADD_MONTHS - Retorna a data somando um número de meses

SELECT ADD_MONTHS(SYSDATE,2) AS DOIS_MESES FROM DUAL;

/*
DOIS_MES
--------
29/03/22
*/



--  MONTHS_BETWEEN - Retorna a quantidade de meses entre duas datas

SELECT MONTHS_BETWEEN ('22/08/2021', '22/12/2013' ) AS ENTRE FROM DUAL;

/*
     ENTRE
----------
        92
*/



-- DECODE - Semelhante ao IF/ELSE, onde é testado um bloco de código, 
-- os possíveis resultados, e as strings que serão mostradas

SELECT DECODE(TRUNC(10 / 5), 0, ' 0/5 = 0',1, ' 5/5 = 1', 2, '10/5 = 2', 'OUTRO') AS RESULTADO FROM DUAL;

/*
RESULTADO 
----------
10/5 = 2
*/



-- NVL - Se a string estiver vazia, retorna um texto passado por parâmetro

SELECT NVL('','STRING VAZIA') AS RESULTADO FROM DUAL;

/*
RESULTADO   
------------
STRING VAZIA
*/



-- VERIFICANDO O AMBIENTE DO ORACLE DATABASE
-- SE ENCONTRAR B032, ENTÃO É DE 32 BITS
-- SE ENCONTRAR B047, ENTÃO É DE 64 BITS

SELECT METADATA FROM SYS.KOPM$;

/*
METADATA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
0000006001240F050B0C030C0C0504050D0609070805050505050F05050505050A050505050504050607080823472347081123081141B0470083036907D00300000000000000000000000000000000000000000000000000000000000000000000000000
*/



-- DICIONARIO DE DADOS

SELECT * FROM DICT;

/*
TABLE_NAME
------------------------------
COMMENTS                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
---------------------------------------------------------------------
USER_CONS_COLUMNS              
Information about accessible columns in constraint definitions                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             

ALL_CONS_COLUMNS               
Information about accessible columns in constraint definitions                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             

DBA_CONS_COLUMNS               
Information about accessible columns in constraint definitions                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             


TABLE_NAME
------------------------------
COMMENTS                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
---------------------------------------------------------------------
USER_LOG_GROUP_COLUMNS         
Information about columns in log group definitions                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         

ALL_LOG_GROUP_COLUMNS          
Information about columns in log group definitions                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         

DBA_LOG_GROUP_COLUMNS          
Information about columns in log group definitions                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         


TABLE_NAME
------------------------------
COMMENTS                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
----------------------------------------------------------------------
USER_LOBS                      
Description of the user's own LOBs contained in the user's own tables                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      

ALL_LOBS                       
Description of LOBs contained in tables accessible to the user                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             

DBA_LOBS                       
Description of LOBs contained in all tables ...                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
*/


-- UNICA / RAC
-- EU ESTOU UTILIZANDO PARALELISMO? 

SELECT PARALLEL FROM V$INSTANCE;

/*
PAR
---
NO
*/



-- ESTRUTURAS DE MEMORIA

SELECT COMPONENT, CURRENT_SIZE, MIN_SIZE, MAX_SIZE
FROM V$SGA_DYNAMIC_COMPONENTS;

/*
COMPONENT                                                        CURRENT_SIZE   MIN_SIZE   MAX_SIZE
---------------------------------------------------------------- ------------ ---------- ----------
shared pool                                                         184549376  184549376  184549376
large pool                                                            4194304    4194304    4194304
java pool                                                             4194304    4194304    4194304
streams pool                                                                0          0          0
DEFAULT buffer cache                                                436207616  436207616  436207616
KEEP buffer cache                                                           0          0          0
RECYCLE buffer cache                                                        0          0          0
DEFAULT 2K buffer cache                                                     0          0          0
DEFAULT 4K buffer cache                                                     0          0          0
DEFAULT 8K buffer cache                                                     0          0          0
DEFAULT 16K buffer cache                                                    0          0          0

COMPONENT                                                        CURRENT_SIZE   MIN_SIZE   MAX_SIZE
---------------------------------------------------------------- ------------ ---------- ----------
DEFAULT 32K buffer cache                                                    0          0          0
Shared IO Pool                                                              0          0          0
ASM Buffer Cache                                                            0          0          0

14 linhas selecionadas. 
*/



-- CONECTANDO A OUTRO BANCO DE DADOS

SQLPLUS SYSTEM/SENHA@NOMEDOBANCO2
ORACLE_SID=BANCO01



-- NOME DO BANCO DE DADOS

SELECT NAME FROM V$DATABASE;

/*
NAME     
---------
XE
*/


-- VERSAO DO BANCO DE DADOS

SELECT BANNER FROM V$VERSION;

/*
BANNER                                                                          
--------------------------------------------------------------------------------
Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production
PL/SQL Release 11.2.0.2.0 - Production
CORE	11.2.0.2.0	Production  
TNS for 64-bit Windows: Version 11.2.0.2.0 - Production
NLSRTL Version 11.2.0.2.0 - Production
*/



-- VERIFICAR PRIVILEGIOS DOS USUARIOS

SELECT * FROM USER_SYS_PRIVS;

/*
USERNAME                       PRIVILEGE                                ADM
------------------------------ ---------------------------------------- ---
SYSTEM                         GLOBAL QUERY REWRITE                     NO 
SYSTEM                         CREATE MATERIALIZED VIEW                 NO 
SYSTEM                         CREATE TABLE                             NO 
SYSTEM                         UNLIMITED TABLESPACE                     YES
SYSTEM                         SELECT ANY TABLE                         NO 
*/



-- TABELAS DO USUARIO

SELECT TABLE_NAME FROM USER_TABLES;

/*
TABLE_NAME                    
------------------------------
LOGMNR_PARAMETER$
LOGMNR_SESSION$
MVIEW$_ADV_WORKLOAD
MVIEW$_ADV_BASETABLE
MVIEW$_ADV_SQLDEPEND
MVIEW$_ADV_PRETTY
MVIEW$_ADV_TEMP
MVIEW$_ADV_FILTER
MVIEW$_ADV_LOG
MVIEW$_ADV_FILTERINSTANCE
MVIEW$_ADV_LEVEL

TABLE_NAME                    
------------------------------
MVIEW$_ADV_ROLLUP
MVIEW$_ADV_AJG
MVIEW$_ADV_FJG
MVIEW$_ADV_GC
MVIEW$_ADV_CLIQUE
MVIEW$_ADV_ELIGIBLE
MVIEW$_ADV_OUTPUT
MVIEW$_ADV_EXCEPTIONS
MVIEW$_ADV_PARAMETERS
MVIEW$_ADV_INFO
MVIEW$_ADV_JOURNAL

TABLE_NAME                    
------------------------------
MVIEW$_ADV_PLAN
AQ$_QUEUE_TABLES
AQ$_QUEUES
AQ$_SCHEDULES
AQ$_INTERNET_AGENTS
AQ$_INTERNET_AGENT_PRIVS
DEF$_ERROR
DEF$_DESTINATION
DEF$_CALLDEST
DEF$_DEFAULTDEST
DEF$_LOB

TABLE_NAME                    
------------------------------
DEF$_PROPAGATOR
DEF$_ORIGIN
DEF$_PUSHED_TRANSACTIONS
REPCAT$_REPCAT
REPCAT$_FLAVORS
REPCAT$_REPSCHEMA
REPCAT$_SNAPGROUP
REPCAT$_REPOBJECT
REPCAT$_REPCOLUMN
REPCAT$_KEY_COLUMNS
REPCAT$_GENERATED

TABLE_NAME                    
------------------------------
REPCAT$_REPPROP
REPCAT$_REPCATLOG
REPCAT$_DDL
REPCAT$_REPGROUP_PRIVS
REPCAT$_PRIORITY_GROUP
REPCAT$_PRIORITY
REPCAT$_COLUMN_GROUP
REPCAT$_GROUPED_COLUMN
REPCAT$_CONFLICT
REPCAT$_RESOLUTION_METHOD
REPCAT$_RESOLUTION

TABLE_NAME                    
------------------------------
REPCAT$_RESOLUTION_STATISTICS
REPCAT$_RESOL_STATS_CONTROL
REPCAT$_PARAMETER_COLUMN
REPCAT$_AUDIT_ATTRIBUTE
REPCAT$_AUDIT_COLUMN
REPCAT$_FLAVOR_OBJECTS
REPCAT$_TEMPLATE_STATUS
REPCAT$_TEMPLATE_TYPES
REPCAT$_REFRESH_TEMPLATES
REPCAT$_USER_AUTHORIZATIONS
REPCAT$_OBJECT_TYPES

TABLE_NAME                    
------------------------------
REPCAT$_TEMPLATE_REFGROUPS
REPCAT$_TEMPLATE_OBJECTS
REPCAT$_TEMPLATE_PARMS
REPCAT$_OBJECT_PARMS
REPCAT$_USER_PARM_VALUES
REPCAT$_TEMPLATE_SITES
REPCAT$_SITE_OBJECTS
REPCAT$_RUNTIME_PARMS
REPCAT$_TEMPLATE_TARGETS
REPCAT$_EXCEPTIONS
REPCAT$_INSTANTIATION_DDL

TABLE_NAME                    
------------------------------
REPCAT$_EXTENSION
REPCAT$_SITES_NEW
LOGSTDBY$PARAMETERS
LOGSTDBY$EVENTS
LOGSTDBY$APPLY_MILESTONE
LOGSTDBY$SCN
LOGSTDBY$FLASHBACK_SCN
LOGSTDBY$PLSQL
LOGSTDBY$SKIP_TRANSACTION
LOGSTDBY$SKIP
LOGSTDBY$SKIP_SUPPORT

TABLE_NAME                    
------------------------------
LOGSTDBY$HISTORY
LOGSTDBY$EDS_TABLES
DEF$_AQCALL
DEF$_AQERROR
SQLPLUS_PRODUCT_PROFILE
HELP
LOGMNR_GT_TAB_INCLUDE$
LOGMNR_GT_USER_INCLUDE$
LOGMNR_GT_XID_INCLUDE$
LOGMNRT_MDDL$
OL$

TABLE_NAME                    
------------------------------
OL$HINTS
OL$NODES
LOGMNR_DICTSTATE$
LOGMNRC_GTLO
LOGMNRC_GTCS
LOGMNRC_GSII
LOGMNRC_GSBA
LOGMNR_SEED$
LOGMNR_DICTIONARY$
LOGMNR_OBJ$
LOGMNR_TAB$

TABLE_NAME                    
------------------------------
LOGMNR_COL$
LOGMNR_ATTRCOL$
LOGMNR_TS$
LOGMNR_IND$
LOGMNR_USER$
LOGMNR_TABPART$
LOGMNR_TABSUBPART$
LOGMNR_TABCOMPART$
LOGMNR_TYPE$
LOGMNR_COLTYPE$
LOGMNR_ATTRIBUTE$

TABLE_NAME                    
------------------------------
LOGMNR_LOB$
LOGMNR_CDEF$
LOGMNR_CCOL$
LOGMNR_ICOL$
LOGMNR_LOBFRAG$
LOGMNR_INDPART$
LOGMNR_INDSUBPART$
LOGMNR_INDCOMPART$
LOGMNR_LOGMNR_BUILDLOG
LOGMNR_NTAB$
LOGMNR_OPQTYPE$

TABLE_NAME                    
------------------------------
LOGMNR_SUBCOLTYPE$
LOGMNR_KOPM$
LOGMNR_PROPS$
LOGMNR_ENC$
LOGMNR_REFCON$
LOGMNR_PARTOBJ$
LOGMNRP_CTAS_PART_MAP
LOGSTDBY$APPLY_PROGRESS
LOGMNR_INTEGRATED_SPILL$
LOGMNR_PROCESSED_LOG$
LOGMNR_UID$

TABLE_NAME                    
------------------------------
LOGMNRC_DBNAME_UID_MAP
LOGMNR_LOG$
LOGMNR_ERROR$
LOGMNR_RESTART_CKPT$
LOGMNR_GLOBAL$
LOGMNR_SESSION_EVOLVE$
LOGMNR_FILTER$
LOGMNR_AGE_SPILL$
LOGMNR_SPILL$
LOGMNR_RESTART_CKPT_TXINFO$
LOGMNR_SESSION_ACTIONS$

154 linhas selecionadas. 

*/

