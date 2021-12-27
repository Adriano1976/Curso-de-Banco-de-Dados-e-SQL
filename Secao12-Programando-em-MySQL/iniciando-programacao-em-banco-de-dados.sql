/* STORED PROCEDURES */

SELECT 'MAFRA';

-- Alterar o Delimiter é necessário para que o banco não pare no meio da leitura de um Procedure.

DELIMITER $

CREATE PROCEDURE NOME()
BEGIN

	QUALQUER PROGRAMACAO;

END
$

-- Alterar o Delimiter é necessário para que o banco não pare no meio da leitura de um Procedure.

DELIMITER $

CREATE PROCEDURE NOME_EMPRESA()
BEGIN
	
	SELECT 'UNIVERSIDADE DOS DADOS' AS EMPRESA;

END
$

/* CHAMANDO UMA PROCEDURE */


CALL NOME_EMPRESA()$

+------------------------+
| EMPRESA                |
+------------------------+
| UNIVERSIDADE DOS DADOS |
+------------------------+

DELIMITER ;

CALL NOME_EMPRESA();

+------------------------+
| EMPRESA                |
+------------------------+
| UNIVERSIDADE DOS DADOS |
+------------------------+

/* PROCEDURES COM PARAMETROS */

SELECT 10 + 10 AS CONTA;

+-------+
| CONTA |
+-------+
|    20 |
+-------+

DELIMITER $

CREATE PROCEDURE CONTA()
BEGIN
	
	SELECT 10 + 10 AS CONTA;

END
$

DELIMITER ;

CALL CONTA();

+-------+
| CONTA |
+-------+
|    20 |
+-------+

DROP PROCEDURE CONTA;

DELIMITER $

CREATE PROCEDURE CONTA(NUMERO1 INT, NUMERO2 INT)
BEGIN
	
	SELECT NUMERO1 + NUMERO2 AS CONTA;

END
$

CALL CONTA(100,50)$

+-------+
| CONTA |
+-------+
|   150 |
+-------+

CALL CONTA(345634,4354)$

+-------+
| CONTA |
+-------+
| 40059 |
+-------+

CALL CONTA(55654,56760)$

+--------+
| CONTA  |
+--------+
| 112414 |
+--------+

CALL CONTA(45646,6766)$

+-------+
| CONTA |
+-------+
| 52412 |
+-------+