-- RESULTADO ANTES DA FORMATAÇÃO

SELECT SEGMENT_NAME, SEGMENT_TYPE, TABLESPACE_NAME, BYTES, BLOCKS, EXTENTS
FROM USER_SEGMENTS
WHERE SEGMENT_NAME;

/*
LOGMNR_ERROR$                                                                     TABLE              SYSAUX                              65536          8          1
LOGMNR_RESTART_CKPT$                                                              TABLE              SYSAUX                              65536          8          1

SEGMENT_NAME                                                                      SEGMENT_TYPE       TABLESPACE_NAME                     BYTES     BLOCKS    EXTENTS
--------------------------------------------------------------------------------- ------------------ ------------------------------ ---------- ---------- ----------
LOGMNR_INTEGRATED_SPILL$                                                          TABLE              SYSAUX                              65536          8          1
LOGMNR_FILTER$                                                                    TABLE              SYSAUX                              65536          8          1
LOGMNR_SESSION_ACTIONS$                                                           TABLE              SYSAUX                              65536          8          1
LOGMNR_PARAMETER$                                                                 TABLE              SYSTEM                              65536          8          1
LOGMNR_SESSION$                                                                   TABLE              SYSTEM                              65536          8          1
MVIEW$_ADV_WORKLOAD                                                               TABLE              SYSTEM                              65536          8          1
MVIEW$_ADV_BASETABLE                                                              TABLE              SYSTEM                              65536          8          1
MVIEW$_ADV_SQLDEPEND                                                              TABLE              SYSTEM                              65536          8          1
MVIEW$_ADV_PRETTY                                                                 TABLE              SYSTEM                              65536          8          1
MVIEW$_ADV_TEMP                                                                   TABLE              SYSTEM                              65536          8          1
MVIEW$_ADV_FILTER                                                                 TABLE              SYSTEM                              65536          8          1

SEGMENT_NAME                                                                      SEGMENT_TYPE       TABLESPACE_NAME                     BYTES     BLOCKS    EXTENTS
--------------------------------------------------------------------------------- ------------------ ------------------------------ ---------- ---------- ----------
MVIEW$_ADV_LOG                                                                    TABLE              SYSTEM                              65536          8          1
MVIEW$_ADV_FILTERINSTANCE                                                         TABLE              SYSTEM                              65536          8          1
MVIEW$_ADV_LEVEL                                                                  TABLE              SYSTEM                              65536          8          1
MVIEW$_ADV_ROLLUP                                                                 TABLE              SYSTEM                              65536          8          1
MVIEW$_ADV_AJG                                                                    TABLE              SYSTEM                              65536          8          1
MVIEW$_ADV_FJG                                                                    TABLE              SYSTEM                              65536          8          1
MVIEW$_ADV_GC                                                                     TABLE              SYSTEM                              65536          8          1
MVIEW$_ADV_CLIQUE                                                                 TABLE              SYSTEM                              65536          8          1
MVIEW$_ADV_ELIGIBLE                                                               TABLE              SYSTEM                              65536          8          1
MVIEW$_ADV_OUTPUT                                                                 TABLE              SYSTEM                              65536          8          1
MVIEW$_ADV_EXCEPTIONS                                                             TABLE              SYSTEM                              65536          8          1

SEGMENT_NAME                                                                      SEGMENT_TYPE       TABLESPACE_NAME                     BYTES     BLOCKS    EXTENTS
--------------------------------------------------------------------------------- ------------------ ------------------------------ ---------- ---------- ----------

etc... (397 linhas selecionadas não mostradas.) 
*/


-- FORMATANDO AS COLUNAS TABLESPACE_NAME, SEGMENT_NAME E SEGMENT_TYPE

COLUMN TABLESPACE_NAME FORMAT A10;
COLUMN SEGMENT_NAME FORMAT A10;
COLUMN SEGMENT_TYPE FORMAT A10;


-- RESULTADO DEPOIS DA FORMATAÇÃO

SELECT SEGMENT_NAME, SEGMENT_TYPE, TABLESPACE_NAME, BYTES, BLOCKS, EXTENTS
FROM USER_SEGMENTS
WHERE SEGMENT_NAME;

/*

SEGMENT_NA SEGMENT_TY TABLESPACE      BYTES     BLOCKS    EXTENTS
---------- ---------- ---------- ---------- ---------- ----------
LOGMNR_SES TABLE      SYSAUX          65536          8          1
SION_EVOLV                                                       
E$                                                               

LOGMNR_GLO TABLE      SYSAUX          65536          8          1
BAL$                                                             

LOGMNR_UID TABLE      SYSAUX          65536          8          1
$                                                                

LOGMNRC_DB TABLE      SYSAUX          65536          8          1

SEGMENT_NA SEGMENT_TY TABLESPACE      BYTES     BLOCKS    EXTENTS
---------- ---------- ---------- ---------- ---------- ----------
NAME_UID_M                                                       
AP                                                               

LOGMNR_LOG TABLE      SYSAUX          65536          8          1
$                                                                

LOGMNR_PRO TABLE      SYSAUX          65536          8          1
CESSED_LOG                                                       
$                                                                

LOGMNR_SPI TABLE      SYSAUX          65536          8          1

SEGMENT_NA SEGMENT_TY TABLESPACE      BYTES     BLOCKS    EXTENTS
---------- ---------- ---------- ---------- ---------- ----------
LL$                                                              

LOGMNR_AGE TABLE      SYSAUX          65536          8          1
_SPILL$                                                          

LOGMNR_RES TABLE      SYSAUX          65536          8          1
TART_CKPT_                                                       
TXINFO$                                                          

LOGMNR_ERR TABLE      SYSAUX          65536          8          1
OR$                                                              


SEGMENT_NA SEGMENT_TY TABLESPACE      BYTES     BLOCKS    EXTENTS
---------- ---------- ---------- ---------- ---------- ----------
LOGMNR_RES TABLE      SYSAUX          65536          8          1
TART_CKPT$                                                       

LOGMNR_INT TABLE      SYSAUX          65536          8          1
EGRATED_SP                                                       
ILL$                                                             

LOGMNR_FIL TABLE      SYSAUX          65536          8          1
TER$                                                             


SEGMENT_NA SEGMENT_TY TABLESPACE      BYTES     BLOCKS    EXTENTS
---------- ---------- ---------- ---------- ---------- ----------

etc... (397 linhas selecionadas não mostradas.) 
*/
