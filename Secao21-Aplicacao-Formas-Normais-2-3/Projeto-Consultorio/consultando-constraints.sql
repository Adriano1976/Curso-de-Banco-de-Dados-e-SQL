SHOW DATABASES;

/*
+--------------------+
| Database           |
+--------------------+
| academia           |
| backup             |
| biblioteca         |
| cadastro_aluno     |
| cadastro_cliente   |
| colaboradores      |
| colegio            |
| comercio           |
| consultorio        |
| conta_bancaria     |
| cursores           |
| cursos             |
| escola             |
| faculdade_unitech  |
| information_schema |
| livraria           |
| livraria_2         |
| loja               |
| mercearia          |
| mysql              |
| oficina            |
| performance_schema |
| projeto            |
| projeto_02         |
| rede_social        |
| sys                |
| top_uniformes      |
| unitech            |
| usuario            |
+--------------------+
*/

USE INFORMATION_SCHEMA;

-- Database changed

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

SELECT * FROM TABLE_CONSTRAINTS
WHERE TABLE_NAME = 'CONSULTA';

/*
+--------------------+-------------------+----------------------+--------------+------------+-----------------+----------+
| CONSTRAINT_CATALOG | CONSTRAINT_SCHEMA | CONSTRAINT_NAME      | TABLE_SCHEMA | TABLE_NAME | CONSTRAINT_TYPE | ENFORCED |
+--------------------+-------------------+----------------------+--------------+------------+-----------------+----------+
| def                | consultorio       | PRIMARY              | consultorio  | consulta   | PRIMARY KEY     | YES      |
| def                | consultorio       | FK_CONSULTA_HOSPITAL | consultorio  | consulta   | FOREIGN KEY     | YES      |
| def                | consultorio       | FK_CONSULTA_MEDICO   | consultorio  | consulta   | FOREIGN KEY     | YES      |
| def                | consultorio       | FK_CONSULTA_PACIENTE | consultorio  | consulta   | FOREIGN KEY     | YES      |
*/

SELECT * FROM TABLE_CONSTRAINTS
WHERE TABLE_NAME = 'INTERNACAO';

/*
+--------------------+-------------------+------------------------+--------------+------------+-----------------+----------+
| CONSTRAINT_CATALOG | CONSTRAINT_SCHEMA | CONSTRAINT_NAME        | TABLE_SCHEMA | TABLE_NAME | CONSTRAINT_TYPE | ENFORCED |
+--------------------+-------------------+------------------------+--------------+------------+-----------------+----------+
| def                | consultorio       | ID_CONSULTA            | consultorio  | internacao | UNIQUE          | YES      |
| def                | consultorio       | PRIMARY                | consultorio  | internacao | PRIMARY KEY     | YES      |
| def                | consultorio       | FK_INTERNACAO_CONSULTA | consultorio  | internacao | FOREIGN KEY     | YES      |
+--------------------+-------------------+------------------------+--------------+------------+-----------------+----------+
*/

SELECT * FROM TABLE_CONSTRAINTS
WHERE TABLE_NAME = 'PACIENTE';

/*
+--------------------+-------------------+-----------------+--------------+------------+-----------------+----------+
| CONSTRAINT_CATALOG | CONSTRAINT_SCHEMA | CONSTRAINT_NAME | TABLE_SCHEMA | TABLE_NAME | CONSTRAINT_TYPE | ENFORCED |
+--------------------+-------------------+-----------------+--------------+------------+-----------------+----------+
| def                | consultorio       | EMAIL           | consultorio  | paciente   | UNIQUE          | YES      |
| def                | consultorio       | PRIMARY         | consultorio  | paciente   | PRIMARY KEY     | YES      |
+--------------------+-------------------+-----------------+--------------+------------+-----------------+----------+
*/

SELECT * FROM TABLE_CONSTRAINTS
WHERE TABLE_NAME = 'MEDICO';

/*
+--------------------+-------------------+-----------------+--------------+------------+-----------------+----------+
| CONSTRAINT_CATALOG | CONSTRAINT_SCHEMA | CONSTRAINT_NAME | TABLE_SCHEMA | TABLE_NAME | CONSTRAINT_TYPE | ENFORCED |
+--------------------+-------------------+-----------------+--------------+------------+-----------------+----------+
| def                | consultorio       | PRIMARY         | consultorio  | medico     | PRIMARY KEY     | YES      |
+--------------------+-------------------+-----------------+--------------+------------+-----------------+----------+
*/

SELECT * FROM TABLE_CONSTRAINTS
WHERE TABLE_NAME = 'HOSPITAL';

/*
+--------------------+-------------------+-----------------+--------------+------------+-----------------+----------+
| CONSTRAINT_CATALOG | CONSTRAINT_SCHEMA | CONSTRAINT_NAME | TABLE_SCHEMA | TABLE_NAME | CONSTRAINT_TYPE | ENFORCED |
+--------------------+-------------------+-----------------+--------------+------------+-----------------+----------+
| def                | consultorio       | PRIMARY         | consultorio  | hospital   | PRIMARY KEY     | YES      |
+--------------------+-------------------+-----------------+--------------+------------+-----------------+----------+
*/
