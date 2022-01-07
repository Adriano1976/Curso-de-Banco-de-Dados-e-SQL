-- Criando a base de dados REDE SOCIAL

CREATE DATABASE REDE_SOCIAL;

/*
Query OK, 1 row affected (0.61 sec)
*/

-- Conferindo se a base de dados REDE_SOCIAL foi criada.

SHOW DATABASES;

/*
+--------------------+
| Database           |
+--------------------+
| academia           |
| biblioteca         |
| colaboradores      |
| comercio           |
| escola             |
| faculdade_unitech  |
| information_schema |
| livraria           |
| livraria_2         |
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
+--------------------+
*/

-- Entrando na base de dados REDE_SOCIAL para criar as tabelas.

USE REDE_SOCIAL;

-- Conferindo se realmente está dentro da base de dados REDE_SOCIAL.

STATUS

/*
--------------
C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe  Ver 8.0.27 for Win64 on x86_64 (MySQL Community Server - GPL)

Connection id:          26
Current database:       rede_social
Current user:           root@localhost
SSL:                    Cipher in use is TLS_AES_256_GCM_SHA384
Using delimiter:        ;
Server version:         8.0.27 MySQL Community Server - GPL
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    utf8mb4
Db     characterset:    utf8mb4
Client characterset:    utf8mb4
Conn.  characterset:    utf8mb4
TCP port:               3306
Binary data as:         Hexadecimal
Uptime:                 12 days 1 hour 42 min 25 sec

Threads: 2  Questions: 1520  Slow queries: 1  Opens: 580  Flush tables: 3  Open tables: 388  Queries per second avg: 0.001
--------------
*/
