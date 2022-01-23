/* Consultas / Pesquisas: */

/* Selecionando relação total entre as tabelas: "CLIENTE", "TELEFONE" "MARCA", "CARRO", 
"CARRO_COR", "COR". Trazendo as colunas: NOME, SEXO, TIPO, NUMERO, PLACA, MARCA, MODELO, COR.
- Tendo ou não telefone e afins.*/

SELECT C.NOME AS "CLIENTE",
   C.SEXO,
   IFNULL(T.TIPO,'*SEM TIPO*') AS "TIPO",
   IFNULL(T.NUMERO,'*SEM TELEFONE*') AS "TELEFONE",
   CAR.PLACA,
   M.MARCA,
   CAR.MODELO,
   COR AS "CORES"
FROM MARCA M 
INNER JOIN CARRO CAR
ON M.IDMARCA = CAR.ID_MARCA
INNER JOIN CARRO_COR CARCOR
ON CAR.IDCARRO = CARCOR.ID_CARRO
INNER JOIN COR
ON COR.IDCOR = CARCOR.ID_COR
INNER JOIN CLIENTE C
ON CAR.IDCARRO = C.ID_CARRO
LEFT JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

/*
+------------------+------+------------+----------------+----------+------------+--------+----------+
| CLIENTE          | SEXO | TIPO       | TELEFONE       | PLACA    | MARCA      | MODELO | CORES    |
+------------------+------+------------+----------------+----------+------------+--------+----------+
| NEIDE FERREIRA   | F    | CEL        | 79998960514    | BBJ-8495 | FIAT       | UNO    | PRETO    |
| NEIDE FERREIRA   | F    | CEL        | 79998960514    | BBJ-8495 | FIAT       | UNO    | BRANCO   |
| NEIDE FERREIRA   | F    | RES        | 7932548547     | BBJ-8495 | FIAT       | UNO    | PRETO    |
| NEIDE FERREIRA   | F    | RES        | 7932548547     | BBJ-8495 | FIAT       | UNO    | BRANCO   |
| LAURA BEATRIZ    | F    | CEL        | 79978560514    | XIA-1137 | FIAT       | ARGO   | PRETO    |
| LAURA BEATRIZ    | F    | CEL        | 79978560514    | XIA-1137 | FIAT       | ARGO   | BRANCO   |
| DANIEL AMARAL    | M    | CEL        | 79977960514    | GTB-7780 | FIAT       | CRONOS | PRETO    |
| DANIEL AMARAL    | M    | CEL        | 79977960514    | GTB-7780 | FIAT       | CRONOS | LARANJA  |
| DANIEL AMARAL    | M    | COM        | 7932564578     | GTB-7780 | FIAT       | CRONOS | PRETO    |
| DANIEL AMARAL    | M    | COM        | 7932564578     | GTB-7780 | FIAT       | CRONOS | LARANJA  |
| MARIA JOSÉ       | F    | COM        | 7932514578     | XXX-6666 | FORD       | FUSION | PRETO    |
| MARIA JOSÉ       | F    | COM        | 7932514578     | XXX-6666 | FORD       | FUSION | VERMELHO |
| MARIA JOSÉ       | F    | CEL        | 79998000514    | XXX-6666 | FORD       | FUSION | PRETO    |
| MARIA JOSÉ       | F    | CEL        | 79998000514    | XXX-6666 | FORD       | FUSION | VERMELHO |
| MAURICIO PEREIRA | M    | CEL        | 79998999914    | CUU-2424 | FORD       | KA     | PRETO    |
| MAURICIO PEREIRA | M    | CEL        | 79998999914    | CUU-2424 | FORD       | KA     | ANIL     |
| CARLOS PEREIRA   | M    | CEL        | 79998369514    | IYQ-7943 | NISSAN     | MARCH  | PRETO    |
| CARLOS PEREIRA   | M    | CEL        | 79998369514    | IYQ-7943 | NISSAN     | MARCH  | VERDE    |
| CARLOS PEREIRA   | M    | RES        | 7932784512     | IYQ-7943 | NISSAN     | MARCH  | PRETO    |
| CARLOS PEREIRA   | M    | RES        | 7932784512     | IYQ-7943 | NISSAN     | MARCH  | VERDE    |
| BRUNA LIMA       | F    | *SEM TIPO* | *SEM TELEFONE* | NNN-8711 | TOYOTA     | COROLA | CINZA    |
| GABRIEL PASSOS   | M    | CEL        | 79994578514    | AFT-6973 | TOYOTA     | CAMRY  | VIOLETA  |
| MARCOS GONZAGA   | M    | CEL        | 79978960514    | GHO-3187 | VOLKSWAGEN | GOL    | PRETO    |
+------------------+------+------------+----------------+----------+------------+--------+----------+
*/