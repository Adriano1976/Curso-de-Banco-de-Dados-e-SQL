
BULK INSERT LANCAMENTO_CONTABIL
FROM 'C:\Users\ADRIANO\Downloads\contas.txt'
WITH
(
	FIRSTROW = 2,
	DATAFILETYPE = 'CHAR',
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n'
)
GO 


SELECT * FROM LANCAMENTO_CONTABIL
GO  


/*
CONTA       VALOR       DEB_CRED
----------- ----------- --------
1           9584        D
1           46545       D
1           4654        D
1           45646556    D
1           46545       D
1           9554        D
1           478945      D
1           9568        D
1           5784        D
1           48          D
1           478946      D
1           7156        D
2           4111        D
2           6456145     D
2           46545       D
2           47986465    D
2           478945      D
2           9568        D
2           5784        D
2           48          D
2           478946      D
2           7156        D
2           4111        C
1           4111        C
1           4111        C
1           4111        C
1           478651      C
1           4111        C
1           4111        C
1           4111        C
1           4111        C
1           787464      C
1           4111        C
1           4111        C
1           4111        C
1           8796541     C
1           4111        C
1           4111        C
1           4111        C
1           4111        C
4           4111        C
4           4111        C
4           4111        C
4           4111        C
4           4111        C
4           45646556    C
4           46545       C
4           47986465    C
4           45646556    D
1           46545       D
1           955444      D
1           478945      D
1           9568        D
1           5784        D
1           48          D
1           478946      D
1           7156        D
1           4111        D
1           9584        D
1           46545       D
1           4654        D
1           45646556    D
1           46545       D
1           9554        D
1           478945      D
1           9568        D
1           5784        D
1           48          C
1           478946      C
1           7156        C
1           4111        C
1           6456145     C
1           46545       C
1           47986465    C
1           478945      C
1           9568        C
1           5784        C
1           48          C
1           478946      C
1           7156        C
1           4111        C
1           4111        C
1           4111        D
1           4111        D
1           478651      D
1           4111        D
1           4111        D
1           4111        D
1           4111        D
1           787464      D
1           4111        D
1           4111        D
1           4111        D
1           8796541     D
1           4111        D
1           4111        D
1           4111        D
1           4111        D
1           4111        D
1           4111        D
1           4111        D
1           4111        D
1           4111        D
1           45646556    D
1           46545       D
5           47986465    D
5           45646556    D
5           46545       D
5           955444      D
5           478945      D
5           9568        D
5           5784        D
5           48          D
5           478946      D
5           7156        D
5           4111        D
5           46545       D
2           955444      D
2           478945      D
2           9568        D
2           5784        D
2           48          D
2           478946      D
2           7156        C
2           4111        C
2           46545       C
2           47986465    C
2           478945      C
2           9568        C
2           5784        C
2           48          C
2           478946      C
2           7156        C
2           4111        C
2           4111        C
2           4111        C
2           4111        C
2           4111        D
2           45646556    D
2           46545       D
2           47986465    D
2           45646556    D
2           46545       D
2           955444      D
6           478945      D
6           9568        D
6           5784        D
6           48          C
6           478946      C
6           7156        C
6           4111        C
6           9584        C
6           46545       C
6           4654        C
6           45646556    C
6           46545       C
6           9554        C
6           478945      C
6           9568        C
6           5784        C
6           48          C
6           46545       D
6           47986465    D
6           478945      D
6           9568        D
6           5784        D
2           48          D
2           478946      D
2           7156        D
2           4111        D
2           9584        D
2           46545       C
2           4654        C
2           45646556    C
2           46545       C
2           9554        C
2           478945      C
2           9568        C
2           5784        C
2           48          C
2           478946      C
2           7156        C
2           4111        C
2           6456145     C
2           46545       C
2           47986465    D
2           478945      D
2           9568        D
2           5784        D
2           48          D
2           478946      D
2           7156        D
2           4111        D
2           4111        D
2           4111        D
2           4111        C
2           478651      C
2           4111        C
2           4111        C
2           4111        C
2           4111        C
2           787464      C
2           4111        C
2           4111        C
2           4111        C
2           8796541     C
2           4111        C
2           4111        C
2           4111        C
2           4111        D
2           4111        D
2           4111        D
2           4111        D
2           4111        D
2           4111        D
2           45646556    D
2           46545       D
2           47986465    D
2           45646556    D
2           46545       C
2           955444      C
2           478945      C
2           9568        C
2           5784        C
2           48          C
2           478946      C
2           7156        C
2           4111        C
2           9584        C
2           46545       C
2           4654        C
2           45646556    C
2           46545       C
2           9554        D
2           478945      D
2           9568        D
2           5784        D
2           48          D
2           478946      D
2           7156        D
2           4111        D
2           6456145     D
2           46545       D
2           47986465    C
2           478945      C
2           9568        C
2           5784        C
2           48          C
2           478946      C
2           7156        C
2           4111        C
2           4111        C
2           4111        C
2           4111        C
2           478651      C
2           4111        C
2           4111        C
2           4111        D
2           4111        D
2           787464      D
2           4111        D
2           4111        D
2           4111        D
17          8796541     D
17          4111        D
17          4111        D
17          4111        D
17          4111        C
17          4111        C
17          4111        C
17          4111        C
17          4111        C
17          4111        C
17          45646556    C
17          46545       C
17          47986465    C
17          45646556    C
17          46545       C
17          955444      C
17          478945      C
17          9568        C
17          5784        D
17          48          D
17          478946      D
17          7156        D
2           4111        D
2           46545       D
2           955444      D
2           478945      D
2           9568        D
2           5784        D
2           48          C
2           478946      C
2           7156        C
2           4111        C
2           46545       C
2           47986465    C
20          478945      C
20          9568        C
20          5784        C
20          48          C
20          478946      C
20          7156        C
20          4111        C
20          4111        C
20          4111        D
20          4111        D
20          4111        D
20          45646556    D
20          46545       D
20          47986465    D
20          45646556    D
20          46545       D
20          955444      D
20          478945      D
20          9568        C
20          5784        C
20          48          C
20          478946      C
20          7156        C
20          4111        C
20          9584        C
20          46545       C
20          4654        C
20          45646556    C
20          46545       C
20          9554        C
20          478945      C
20          9568        C
20          5784        D
2           48          D
2           46545       D
2           47986465    D
2           478945      D
2           9568        D
2           5784        D
2           48          D
2           478946      D
2           7156        D
2           4111        C
2           9584        C
2           46545       C
2           4654        C
2           45646556    C
2           46545       C
2           9554        C
2           478945      C
2           9568        C
2           5784        C
2           48          C
2           478946      C
2           7156        C
2           4111        C
2           6456145     D
2           46545       D
2           47986465    D
2           478945      D
2           9568        D
2           5784        D
2           48          C
2           478946      C
2           7156        C
2           4111        C
2           4111        C
2           4111        C
2           4111        C
2           478651      C
2           4111        C
2           4111        C
2           4111        C
2           4111        C
2           787464      C
2           4111        C
2           4111        D
2           4111        D
2           8796541     D
2           4111        D
2           4111        D
2           4111        D
19          4111        D
19          4111        D
19          4111        D
19          4111        D
19          4111        C
19          4111        C
19          45646556    C
19          46545       C
19          47986465    C
19          45646556    C
19          46545       C
19          955444      C
19          478945      D
19          9568        D
19          5784        D
19          48          D
19          478946      D
19          7156        D
19          4111        C
19          9584        C
19          46545       C
2           4654        C
2           45646556    C
2           46545       C
2           9554        C
2           478945      C
2           9568        C
2           5784        C
2           48          C
2           478946      C
2           7156        C
2           4111        C
2           6456145     D
2           46545       D
2           47986465    D
2           478945      D
2           9568        D
2           5784        D
2           48          D
2           478946      D
2           7156        D
2           4111        D
2           4111        C
2           4111        C
2           4111        C
3           478651      C
3           4111        C
3           4111        C
3           4111        C
3           4111        C
3           787464      C
3           4111        C
3           4111        C
3           4111        C
3           8796541     C
3           4111        C
3           4111        C
3           4111        C
3           4111        C
3           4111        C
3           4111        C
3           4111        D
3           4111        D
3           4111        D
3           45646556    D
3           46545       D
3           47986465    D
3           45646556    D
3           46545       D
3           955444      D
3           478945      D
3           9568        C
3           5784        C
3           48          C
3           478946      C
3           7156        C
3           4111        C
3           46545       C
3           955444      C
3           478945      C
3           9568        C
3           5784        C
3           48          C
3           478946      C
3           7156        C
3           4111        D
3           46545       D
3           47986465    D
3           478945      D
3           9568        D
3           5784        D
3           48          D
3           478946      D
3           7156        D
3           4111        D
3           4111        C
3           4111        C
3           4111        C
3           4111        C
3           45646556    C
3           46545       C
3           47986465    C
3           45646556    C
3           46545       C
3           955444      C
3           478945      C
3           9568        C
3           5784        C
3           48          C
3           478946      D
3           7156        D
3           4111        D
3           9584        D
3           46545       D
3           4654        D
3           45646556    D
3           46545       D
3           9554        D
3           478945      D
3           9568        C
3           5784        C
3           48          C
3           46545       C
3           47986465    C
3           478945      C
3           9568        C
3           5784        C
3           48          C
3           478946      C
3           7156        C
3           4111        C
3           9584        C
3           46545       C
3           4654        D
3           45646556    D
3           46545       D
3           9554        D
3           478945      D
3           9568        D
3           5784        C
3           48          C
3           478946      C
3           7156        C
3           4111        C
3           6456145     C
3           46545       C
3           47986465    C
3           478945      C
3           9568        C
3           5784        C
3           48          C
3           478946      C
3           7156        C
3           4111        D
3           4111        D
3           4111        D
3           4111        D
3           478651      D
3           4111        D
3           4111        D
3           4111        D
3           4111        D
3           787464      D
3           4111        C
3           4111        C
3           4111        C
3           8796541     C
3           4111        C
3           4111        C
3           4111        C
3           4111        C
3           4111        D
3           4111        D
3           4111        D
3           4111        D
3           4111        D
3           45646556    D
3           46545       C
3           47986465    C
3           45646556    C
3           46545       C
3           955444      C
3           478945      C
3           9568        C
3           5784        C
3           48          C
3           478946      C
3           7156        C
3           4111        C
3           9584        C
3           46545       C
3           4654        C
3           45646556    C
3           46545       D
3           9554        D
3           478945      D
3           9568        D
3           5784        D
3           48          D
3           478946      D
3           7156        D
3           4111        D
3           6456145     D
3           46545       C
3           47986465    C
3           478945      C
3           9568        C
3           5784        C
3           48          C
3           478946      C
3           7156        C
3           4111        C
3           4111        C
3           4111        C
3           4111        C
3           478651      C
3           4111        C
3           4111        D
3           4111        D
3           4111        D
3           787464      D
3           4111        D
3           4111        D
3           4111        D
3           8796541     D
3           4111        D
3           4111        D
3           4111        C
3           4111        C
3           4111        C
3           4111        C
3           4111        C
3           4111        C
3           4111        C
3           45646556    C
3           46545       C
3           47986465    C
3           45646556    C
3           46545       C
3           955444      C
3           478945      C
3           9568        D
3           5784        D
3           48          D
3           478946      D
3           7156        D
3           4111        D
3           46545       D
3           955444      D
3           478945      D
3           9568        D
3           5784        C
3           48          C
3           478946      C
3           7156        C
3           4111        C
3           46545       C
3           47986465    C
3           478945      C
3           9568        C
3           5784        C
3           48          C
3           478946      C
3           7156        C
3           4111        C
3           4111        D
3           4111        D
3           4111        D
3           4111        D
3           45646556    D
3           46545       D
3           47986465    C
3           45646556    C
3           46545       C
3           955444      C
3           478945      C
3           9568        C
3           5784        C
3           48          C
3           478946      C
3           7156        C
3           4111        C
3           9584        C
3           46545       C
3           4654        C
3           45646556    D
3           46545       D
3           9554        D
3           478945      D
3           9568        D
3           5784        D
3           48          D
3           46545       D
3           47986465    D
3           478945      D
3           9568        C
3           5784        C
3           48          C
3           478946      C
3           7156        C
3           4111        C
3           9584        C
3           46545       C
3           4654        D
3           45646556    D
5           46545       D
5           9554        D
5           478945      D
5           9568        D
5           5784        C
5           48          C
5           478946      C
5           7156        C
5           4111        C
5           6456145     C
5           46545       C
5           47986465    C
5           478945      C
5           9568        C
5           5784        C
5           48          C
5           478946      C
5           7156        C
3           4111        C
3           4111        C
3           4111        D
3           4111        D
3           478651      D
3           4111        D
3           4111        D
3           4111        D
3           4111        D
3           787464      D
3           4111        D
3           4111        D
3           4111        C
3           8796541     C
3           4111        C
6           4111        C
6           4111        C
6           4111        C
6           4111        C
6           4111        C
6           4111        C
6           4111        C
6           4111        C
6           45646556    C
6           46545       C
6           47986465    C
6           45646556    D
6           46545       D
6           955444      D
3           478945      D
3           9568        D
3           5784        D
3           48          D
3           478946      D
3           7156        D
3           4111        D
3           9584        C
3           46545       C
3           4654        C
3           45646556    C
3           46545       C
3           9554        C
3           478945      C
3           9568        C
3           5784        C
3           48          C
3           478946      C
3           7156        C
3           4111        C
3           6456145     C
3           46545       D
3           47986465    D
11          478945      D
11          9568        D
11          5784        D
11          48          D
11          478946      D
11          7156        D
11          4111        D
11          4111        D
11          4111        C
11          4111        C
11          478651      C
11          4111        C
11          4111        C
11          4111        C
11          4111        C
11          787464      C
3           4111        C
3           4111        C
3           4111        C
3           8796541     C
3           4111        C
3           4111        C
3           4111        D
3           4111        D
3           4111        D
3           4111        D
3           4111        D
3           4111        D
3           4111        C
3           45646556    C
13          46545       C
13          47986465    C
13          45646556    C
13          46545       C
13          955444      C
13          478945      C
13          9568        C
13          5784        C
13          48          C
13          478946      C
13          7156        C
13          4111        C
13          46545       D
13          955444      D
13          478945      D
13          9568        D
13          5784        D
4           48          D
4           478946      D
4           7156        D
4           4111        D
4           46545       D
4           47986465    C
4           478945      C
4           9568        C
4           5784        C
4           48          C
4           478946      C
4           7156        C
4           4111        C
4           4111        D
4           4111        D
4           4111        D
4           4111        D
4           45646556    D
4           46545       D
4           47986465    C
4           45646556    C
4           46545       C
4           955444      C
4           478945      C
4           9568        C
4           5784        C
4           48          C
4           478946      C
25          7156        C
25          4111        C
25          9584        C
25          46545       C
25          4654        C
25          45646556    C
25          46545       C
25          9554        D
25          478945      D
25          9568        D
25          5784        D
25          48          D
25          46545       D
25          47986465    D
25          478945      D
25          9568        D
25          5784        D
25          48          C
4           478946      C
4           7156        C
4           4111        C
4           9584        C
4           46545       C
4           4654        C
4           45646556    C
4           46545       C
4           9554        C
4           478945      C
4           9568        C
4           5784        C
4           48          C
4           478946      D
4           7156        D
4           4111        D
4           6456145     D
4           46545       D
4           47986465    D
4           478945      D
4           9568        D
4           5784        D
4           48          D
4           478946      C
4           7156        C
4           4111        C
33          4111        C
33          4111        C
33          4111        C
33          478651      C
33          4111        C
33          4111        C
33          4111        C
33          4111        C
33          787464      C
33          4111        C
33          4111        C
33          4111        D
33          8796541     D
33          4111        D
33          4111        D
33          4111        D
33          4111        D
4           4111        D
4           4111        D
4           4111        D
4           4111        D
4           4111        C
4           45646556    C
4           46545       C

(897 linha(s) afetadas)


*/


