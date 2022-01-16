SELECT CONTA,
SUM(CASE WHEN(DEB_CRED = 'C') THEN VALOR END) -
SUM(CASE WHEN(DEB_CRED = 'D') THEN VALOR END) AS 'SALDO'
FROM LANCAMENTO_CONTABIL
GROUP BY CONTA 
ORDER BY CONTA
GO  

/*
CONTA       SALDO
----------- -----------
1           -84729627
2           -211283772
3           276029296
4           183831802
5           -40245078
6           44790349
11          302112
13          94169827
17          131540482
19          139399682
20          -93078940
25          -3266007
33          -7513982
Aviso: o valor nulo é eliminado por uma agregação ou outra operação SET.
*/

------------------------------------------------------------------------------

SELECT CONTA ,SUM(TOTAL) AS 'SALDO'
FROM (SELECT CONTA, TOTAL = CASE
    WHEN DEB_CRED = 'D' THEN VALOR * -1
    WHEN DEB_CRED = 'C' THEN VALOR
    END
    FROM LANCAMENTO_CONTABIL) AS SALDO
GROUP BY CONTA
ORDER BY 1
GO

/*
CONTA       SALDO
----------- -----------
1           -84729627
2           -211283772
3           276029296
4           183831802
5           -40245078
6           44790349
11          302112
13          94169827
17          131540482
19          139399682
20          -93078940
25          -3266007
33          -7513982
*/

------------------------------------------------------------------------------

SELECT CONTA,
SUM(CASE WHEN DEB_CRED = 'C' THEN VALOR END) AS 'CREDITO',
SUM(CASE WHEN DEB_CRED = 'D' THEN VALOR END) AS 'DEBITO',
SUM(CASE WHEN DEB_CRED = 'C' THEN VALOR END) -
SUM(CASE WHEN DEB_CRED = 'D' THEN VALOR END) AS 'SALDO'
FROM LANCAMENTO_CONTABIL
GROUP BY CONTA  
ORDER BY CONTA 
GO 

/*
CONTA       CREDITO     DEBITO      SALDO
----------- ----------- ----------- -----------
1           66088295    150817922   -84729627
2           353373760   564657532   -211283772
3           861285653   585256357   276029296
4           331214866   147383064   183831802
5           55965647    96210725    -40245078
6           140460498   95670149    44790349
11          1290781     988669      302112
13          95666113    1496286     94169827
17          140841290   9300808     131540482
19          140396573   996891      139399682
20          47746233    140825173   -93078940
25          45765199    49031206    -3266007
33          1303114     8817096     -7513982
Aviso: o valor nulo é eliminado por uma agregação ou outra operação SET.

(13 linha(s) afetadas)
*/
