SELECT NOME, TIPO, NUMERO
FROM CLIENTE
INNER JOIN TELEFONE
ON IDCLIENTE = ID_CLIENTE;

/*
+---------+------+----------+
| NOME    | TIPO | NUMERO   |
+---------+------+----------+
| RICARDO | CEL  | 88665645 |
| RICARDO | COM  | 75454675 |
| CLARA   | CEL  | 37834334 |
| CLARA   | RES  | 67465656 |
| JULIO   | RES  | 77543546 |
| ANA     | CEL  | 76765455 |
+---------+------+----------+
*/

SELECT NOME, NOMETIME
FROM JOGADOR
INNER JOIN TIMES
ON IDJOGADOR = ID_JOGADOR;

/*
+----------+----------+
| NOME     | NOMETIME |
+----------+----------+
| GUERRERO | FLAMENGO |
| BRANCO   | FLAMENGO |
| ZICO     | FLAMENGO |
| RAMÁRIO  | FLAMENGO |
| PELÉ     | FLAMENGO |
+----------+----------+
*/