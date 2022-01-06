-- Retorna o horário atual. Repare que essa função não usa
-- colunas de tabelas, ela simplesmente apresenta o horário atual do sistema.

SELECT CURTIME() AS HORA_ATUAL;

/*
+------------+
| HORA_ATUAL |
+------------+
| 14:22:44   |
+------------+
*/