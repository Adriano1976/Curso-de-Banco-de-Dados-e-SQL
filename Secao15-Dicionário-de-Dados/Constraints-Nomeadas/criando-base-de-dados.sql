-- Criando uma base de dados para comportar as tabelas.

CREATE DATABASE PROJETO_02;

-- Verificando se a base de dados foi realmente criada e se encontra descrita.

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

-- Informando em qual base de dados será usada.

USE PROJETO_02;

-- Conferindo em qual base está sendo usada(Current database: projeto_02).

STATUS

/*
--------------
C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe  Ver 8.0.27 for Win64 on x86_64 (MySQL Community Server - GPL)

Connection id:          13
Current database:       projeto_02
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
Uptime:                 5 days 19 hours 30 min 51 sec

Threads: 2  Questions: 336  Slow queries: 1  Opens: 242  Flush tables: 3  Open tables: 155  Queries per second avg: 0.000
--------------
*/