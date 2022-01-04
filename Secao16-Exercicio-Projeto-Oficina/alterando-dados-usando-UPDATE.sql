UPDATE CARRO
SET ID_MARCA = '1' -- FIAT
WHERE MODELO LIKE 'UNO' OR MODELO LIKE 'ARGO' OR MODELO LIKE 'CRONOS'; -- Feito - ok

UPDATE CARRO
SET ID_MARCA = '2' -- VOLKSWAGEN
WHERE MODELO LIKE 'GOL'; -- Feito - ok

UPDATE CARRO
SET ID_MARCA = '3' -- TOYOTA
WHERE MODELO LIKE 'COROLA' OR MODELO LIKE 'CAMRY'; -- Feito - ok

UPDATE CARRO
SET ID_MARCA = '4' -- FORD
WHERE MODELO LIKE 'FUSION' OR MODELO LIKE 'KA'; -- Feito - ok

UPDATE CARRO
SET ID_MARCA = '5' -- NISSAN
WHERE MODELO LIKE 'MARCH' OR MODELO LIKE 'VERSA'; -- Feito - ok

/* Verificação: */

SELECT CAR.IDCARRO, CAR.MODELO, MC.IDMARCA, MC.MARCA
FROM CARRO CAR
INNER JOIN MARCA MC
ON CAR.ID_MARCA = MC.IDMARCA
ORDER BY CAR.IDCARRO;

/*
+---------+--------+---------+------------+
| IDCARRO | MODELO | IDMARCA | MARCA      |
+---------+--------+---------+------------+
|       2 | UNO    |       1 | FIAT       |
|       3 | ARGO   |       1 | FIAT       |
|       4 | GOL    |       2 | VOLKSWAGEN |
|       5 | COROLA |       3 | TOYOTA     |
|       6 | FUSION |       4 | FORD       |
|       7 | MARCH  |       5 | NISSAN     |
|       8 | CRONOS |       1 | FIAT       |
|       9 | CAMRY  |       3 | TOYOTA     |
|      10 | KA     |       4 | FORD       |
|      11 | VERSA  |       5 | NISSAN     |
+---------+--------+---------+------------+
*/