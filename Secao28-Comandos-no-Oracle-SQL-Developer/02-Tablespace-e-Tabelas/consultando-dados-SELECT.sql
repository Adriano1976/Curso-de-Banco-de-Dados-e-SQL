/*
ARMAZENAMENTO:
- LÓGICO -> TABLESPACES -> SEGMENTOS (OBJETIVOS) -> EXTENSÕES (ESPAÇO) -> BLOCOS (DO SISTEMA OPERACIONAL).
- FISICO -> DATAFILES
*/

/* NÃO PODEMOS DETERMINAR EM QUAL ARQUIVO FÍSICO UM OBJETO FICARÁ. */

CREATE TABLE cursos(
	IDCURSO INT PRIMARY KEY,
	NOME VARCHAR2(30),
	CARGA INT
)TABLESPACE USERS;

/* Table CURSOS criado. */


CREATE TABLE TESTE(
	IDTESTE INT,
	NOME VARCHAR2(30)
);

/* Table TESTE criado. */



/* Dicionario de dados */

SELECT TABLE_NAME, TABLESPACE_NAME
FROM USER_TABLES
WHERE TABLE_NAME = 'CURSOS';

/*
TABLE_NAME                     TABLESPACE_NAME               
------------------------------ ------------------------------
CURSOS                         USERS 
*/


SELECT TABLE_NAME, TABLESPACE_NAME
FROM USER_TABLES
WHERE TABLE_NAME = 'TESTE';

/*
TABLE_NAME                     TABLESPACE_NAME               
------------------------------ ------------------------------
TESTE                          SYSTEM   
*/



/*
-- TODO OBJETO É CRIADO POR PADRÃO NA TABLESPACE USERS EXCETO QUANDO
SE ESTÁ LOGADO COM O USUÁRIO SYSTEM - ESTÃO O OBJETO SERÁ CRIADO NA 
TABLESPACE SYSTEM.
*/

SELECT SEGMENT_NAME, SEGMENT_TYPE, TABLESPACE_NAME, BYTES, BLOCKS, EXTENTS
FROM USER_SEGMENTS
WHERE SEGMENT_NAME = 'CURSOS';

/*
SEGMENT_NAME                   SEGMENT_TYPE       TABLESPACE_NAME                     BYTES     BLOCKS    EXTENTS
------------------------------ ------------------ ------------------------------ ---------- ---------- ----------
CURSOS                         TABLE              USERS                               65536          8          1
*/
