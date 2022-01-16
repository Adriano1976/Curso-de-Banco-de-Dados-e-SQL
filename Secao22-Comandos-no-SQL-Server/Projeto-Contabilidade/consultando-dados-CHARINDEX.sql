-- CRIAR UMA QUERY QUE TRAGA O NUMERO DA CONTA E SALDO DEVEDOR(1) OU CREDOR(0).
-- SE O NUMERO FOR 1, SIGNIFICA QUE É VERDADEIRO.
-- SE O NUMERO FOR 0, SIGNIFICA QUE É FALSO.

SELECT CONTA, VALOR, DEB_CRED,
CHARINDEX('D',DEB_CRED) AS 'DEBITO',
CHARINDEX('C',DEB_CRED) AS 'CREDITO'
FROM LANCAMENTO_CONTABIL
GO

/*
CONTA       VALOR       DEB_CRED DEBITO      CREDITO
----------- ----------- -------- ----------- -----------
1           9584        D        1           0
1           46545       D        1           0
1           4654        D        1           0
1           45646556    D        1           0
1           46545       D        1           0
1           9554        D        1           0
1           478945      D        1           0
1           9568        D        1           0
1           5784        D        1           0
2           6456145     D        1           0
2           46545       D        1           0
2           47986465    D        1           0
2           478945      D        1           0
2           9568        D        1           0
2           5784        D        1           0
2           48          D        1           0
2           478946      D        1           0
2           7156        D        1           0
2           4111        C        0           1
1           4111        C        0           1
1           4111        C        0           1
1           4111        C        0           1
1           478651      C        0           1
1           4111        C        0           1
1           4111        C        0           1
1           4111        C        0           1
1           4111        C        0           1
1           787464      C        0           1
1           4111        C        0           1
1           4111        C        0           1
1           4111        C        0           1
1           8796541     C        0           1
4           4111        C        0           1
4           4111        C        0           1
4           4111        C        0           1
4           4111        C        0           1
4           4111        C        0           1
4           45646556    C        0           1
4           46545       C        0           1
4           47986465    C        0           1 continua.....
*/

-------------------------------------------------------------------------------

-- CRIAR UMA QUERY QUE TRAGA O NUMERO DA CONTA E SALDO DEVEDOR(1) OU CREDOR(0).
-- E MOSTRE O RESULTADO DO MULTIPLICADOR.
-- SE O NUMERO FOR 1, SIGNIFICA QUE É VERDADEIRO.
-- SE O NUMERO FOR 0, SIGNIFICA QUE É FALSO.

SELECT CONTA, VALOR, DEB_CRED,
CHARINDEX('D',DEB_CRED) AS 'DEBITO',
CHARINDEX('C',DEB_CRED) AS 'CREDITO',
CHARINDEX('C',DEB_CRED) * 2 - 1 AS 'MULTIPLICADOR'
FROM LANCAMENTO_CONTABIL
GO 

/*
CONTA       VALOR       DEB_CRED DEBITO      CREDITO     MULTIPLICADOR
----------- ----------- -------- ----------- ----------- -------------
1           9584        D        1           0           -1
1           46545       D        1           0           -1
1           4654        D        1           0           -1
1           45646556    D        1           0           -1
1           46545       D        1           0           -1
1           9554        D        1           0           -1
1           478946      D        1           0           -1
1           7156        D        1           0           -1
2           4111        D        1           0           -1
2           6456145     D        1           0           -1
2           46545       D        1           0           -1
2           47986465    D        1           0           -1
2           478945      D        1           0           -1
2           9568        D        1           0           -1
2           5784        D        1           0           -1
2           48          D        1           0           -1
2           478946      D        1           0           -1
2           7156        D        1           0           -1
2           4111        C        0           1           1
1           4111        C        0           1           1
1           4111        C        0           1           1
1           4111        C        0           1           1
1           478651      C        0           1           1
1           4111        C        0           1           1
1           4111        C        0           1           1
1           4111        C        0           1           1
1           4111        C        0           1           1
1           787464      C        0           1           1
1           4111        C        0           1           1
1           4111        C        0           1           1
1           4111        C        0           1           1
1           8796541     C        0           1           1
1           4111        C        0           1           1
4           4111        C        0           1           1
4           45646556    C        0           1           1
4           46545       C        0           1           1
4           47986465    C        0           1           1 continua ....
*/

-- RESOLUCAO DO PROFESSOR ----------------------------------------------------

SELECT CONTA, DEB_CRED,
SUM(VALOR * (CHARINDEX('C',DEB_CRED) * 2 - 1)) AS 'SALDO'
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
*/

