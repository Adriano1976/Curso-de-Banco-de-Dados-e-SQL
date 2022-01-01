SHOW DATABASES;

/*
+--------------------+
| Database           |
+--------------------+
| academia           |
| biblioteca         |
| comercio           |
| exercicio          |
| faculdade_unitech  |
| information_schema |
| livraria           |
| livraria_2         |
| mercearia          |
| mysql              |
| performance_schema |
| projeto            |
| projeto_02         |
| sys                |
| top_uniformes      |
| unitech            |
+--------------------+
*/

USE INFORMATION_SCHEMA;

STATUS

/*
--------------
C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe  Ver 8.0.27 for Win64 on x86_64 (MySQL Community Server - GPL)

Connection id:          13
Current database:       information_schema
Current user:           root@localhost
SSL:                    Cipher in use is TLS_AES_256_GCM_SHA384
Using delimiter:        ;
Server version:         8.0.27 MySQL Community Server - GPL
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    utf8mb4
Db     characterset:    utf8mb3
Client characterset:    utf8mb4
Conn.  characterset:    utf8mb4
TCP port:               3306
Binary data as:         Hexadecimal
Uptime:                 5 days 20 hours 14 min 58 sec

Threads: 2  Questions: 358  Slow queries: 1  Opens: 264  Flush tables: 3  Open tables: 173  Queries per second avg: 0.000
--------------
*/

SHOW TABLES;

/*
+---------------------------------------+
| Tables_in_information_schema          |
+---------------------------------------+
| ADMINISTRABLE_ROLE_AUTHORIZATIONS     |
| APPLICABLE_ROLES                      |
| CHARACTER_SETS                        |
| CHECK_CONSTRAINTS                     |
| COLLATION_CHARACTER_SET_APPLICABILITY |
| COLLATIONS                            |
| COLUMN_PRIVILEGES                     |
| COLUMN_STATISTICS                     |
| COLUMNS                               |
| COLUMNS_EXTENSIONS                    |
| ENABLED_ROLES                         |
| ENGINES                               |
| EVENTS                                |
| FILES                                 |
| INNODB_BUFFER_PAGE                    |
| INNODB_BUFFER_PAGE_LRU                |
| INNODB_BUFFER_POOL_STATS              |
| INNODB_CACHED_INDEXES                 |
| INNODB_CMP                            |
| INNODB_CMP_PER_INDEX                  |
| INNODB_CMP_PER_INDEX_RESET            |
| INNODB_CMP_RESET                      |
| INNODB_CMPMEM                         |
| INNODB_CMPMEM_RESET                   |
| INNODB_COLUMNS                        |
| INNODB_DATAFILES                      |
| INNODB_FIELDS                         |
| INNODB_FOREIGN                        |
| INNODB_FOREIGN_COLS                   |
| INNODB_FT_BEING_DELETED               |
| INNODB_FT_CONFIG                      |
| INNODB_FT_DEFAULT_STOPWORD            |
| INNODB_FT_DELETED                     |
| INNODB_FT_INDEX_CACHE                 |
| INNODB_FT_INDEX_TABLE                 |
| INNODB_INDEXES                        |
| INNODB_METRICS                        |
| INNODB_SESSION_TEMP_TABLESPACES       |
| INNODB_TABLES                         |
| INNODB_TABLESPACES                    |
| INNODB_TABLESPACES_BRIEF              |
| INNODB_TABLESTATS                     |
| INNODB_TEMP_TABLE_INFO                |
| INNODB_TRX                            |
| INNODB_VIRTUAL                        |
| KEY_COLUMN_USAGE                      |
| KEYWORDS                              |
| OPTIMIZER_TRACE                       |
| PARAMETERS                            |
| PARTITIONS                            |
| PLUGINS                               |
| PROCESSLIST                           |
| PROFILING                             |
| REFERENTIAL_CONSTRAINTS               |
| RESOURCE_GROUPS                       |
| ROLE_COLUMN_GRANTS                    |
| ROLE_ROUTINE_GRANTS                   |
| ROLE_TABLE_GRANTS                     |
| ROUTINES                              |
| SCHEMA_PRIVILEGES                     |
| SCHEMATA                              |
| SCHEMATA_EXTENSIONS                   |
| ST_GEOMETRY_COLUMNS                   |
| ST_SPATIAL_REFERENCE_SYSTEMS          |
| ST_UNITS_OF_MEASURE                   |
| STATISTICS                            |
| TABLE_CONSTRAINTS                     |
| TABLE_CONSTRAINTS_EXTENSIONS          |
| TABLE_PRIVILEGES                      |
| TABLES                                |
| TABLES_EXTENSIONS                     |
| TABLESPACES                           |
| TABLESPACES_EXTENSIONS                |
| TRIGGERS                              |
| USER_ATTRIBUTES                       |
| USER_PRIVILEGES                       |
| VIEW_ROUTINE_USAGE                    |
| VIEW_TABLE_USAGE                      |
| VIEWS                                 |
+---------------------------------------+
*/

DESC TABLE_CONSTRAINTS;

/*
+--------------------+-------------+------+-----+---------+-------+
| Field              | Type        | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| CONSTRAINT_CATALOG | varchar(64) | YES  |     | NULL    |       |
| CONSTRAINT_SCHEMA  | varchar(64) | YES  |     | NULL    |       |
| CONSTRAINT_NAME    | varchar(64) | YES  |     | NULL    |       |
| TABLE_SCHEMA       | varchar(64) | YES  |     | NULL    |       |
| TABLE_NAME         | varchar(64) | YES  |     | NULL    |       |
| CONSTRAINT_TYPE    | varchar(11) | NO   |     |         |       |
| ENFORCED           | varchar(3)  | NO   |     |         |       |
+--------------------+-------------+------+-----+---------+-------+
*/

SELECT CONSTRAINT_SCHEMA AS "BANCO",
	   TABLE_NAME AS "TABELA",
	   CONSTRAINT_NAME AS "NOME REGRA",
	   CONSTRAINT_TYPE AS "TIPO"
	   FROM TABLE_CONSTRAINTS
	   WHERE CONSTRAINT_SCHEMA = 'COMERCIO';

/*
+----------+----------+---------------------+-------------+
| BANCO    | TABELA   | NOME REGRA          | TIPO        |
+----------+----------+---------------------+-------------+
| comercio | cliente  | CPF                 | UNIQUE      |
| comercio | cliente  | EMAIL               | UNIQUE      |
| comercio | cliente  | PRIMARY             | PRIMARY KEY |
| comercio | endereco | ID_CLIENTE          | UNIQUE      |
| comercio | endereco | PRIMARY             | PRIMARY KEY |
| comercio | endereco | endereco_ibfk_1     | FOREIGN KEY |
| comercio | produto  | PRIMARY             | PRIMARY KEY |
| comercio | telefone | PRIMARY             | PRIMARY KEY |
| comercio | telefone | FK_CLIENTE_TELEFONE | FOREIGN KEY |
| comercio | telefone | telefone_ibfk_1     | FOREIGN KEY |
+----------+----------+---------------------+-------------+
*/

