
SELECT * FROM LOCACAO;

/*
1	"2018-01-08 00:00:00"			23	3	100
2	"2018-01-02 00:00:00"			56	1	400
3	"2018-02-07 00:00:00"			23	3	400
4	"2018-02-02 00:00:00"			43	1	500
5	"2018-02-02 00:00:00"			23	2	100
6	"2018-03-07 00:00:00"			76	3	700
7	"2018-03-02 00:00:00"			45	1	700
8	"2018-04-08 00:00:00"			89	3	100
9	"2018-04-02 00:00:00"			23	3	800
10	"2018-05-07 00:00:00"			23	3	500
11	"2018-05-02 00:00:00"			38	3	800
12	"2018-01-10 00:00:00"			56	1	100
13	"2018-06-12 00:00:00"			23	3	400
14	"2018-01-02 00:00:00"			56	2	300
15	"2018-04-10 00:00:00"			76	3	300
16	"2018-01-09 00:00:00"			32	2	400
17	"2018-08-02 00:00:00"			89	3	100
18	"2018-01-02 00:00:00"			23	1	200
19	"2018-08-09 00:00:00"			45	3	300
20	"2018-01-12 00:00:00"			89	1	400
21	"2018-09-07 00:00:00"			23	3	1000
22	"2018-01-12 00:00:00"			21	3	1000
23	"2018-01-02 00:00:00"			34	2	100
24	"2018-09-08 00:00:00"			67	1	1000
25	"2018-01-02 00:00:00"			76	3	1000
26	"2018-01-02 00:00:00"			66	3	200
27	"2018-09-12 00:00:00"			90	1	400
28	"2018-03-02 00:00:00"			23	3	100
29	"2018-01-12 00:00:00"			65	5	1000
30	"2018-03-08 00:00:00"			43	1	1000
31	"2018-01-02 00:00:00"			27	31	200
32	"2022-01-25 15:23:17.404857"	100	7	300
33	"2022-01-25 15:39:30.219619"	500	1	200
34	"2022-01-25 15:39:30.219619"	800	6	500
*/


SELECT * FROM RELATORIO_LOCADORA;

/*
1	"KILL BILL I"				"AVENTURA"	"2018-01-08 00:00:00"	3	23
2	"UM SONHO DE LIBERDADE"		"DRAMA"		"2018-01-02 00:00:00"	1	56
3	"UM SONHO DE LIBERDADE"		"DRAMA"		"2018-02-07 00:00:00"	3	23
4	"OS BAD BOYS"				"AÇÃO"		"2018-02-02 00:00:00"	1	43
5	"KILL BILL I"				"AVENTURA"	"2018-02-02 00:00:00"	2	23
6	"CADILLAC RECORDS"			"DRAMA"		"2018-03-07 00:00:00"	3	76
7	"CADILLAC RECORDS"			"DRAMA"		"2018-03-02 00:00:00"	1	45
8	"KILL BILL I"				"AVENTURA"	"2018-04-08 00:00:00"	3	89
9	"O HOBBIT"					"FANTASIA"	"2018-04-02 00:00:00"	3	23
10	"OS BAD BOYS"				"AÇÃO"		"2018-05-07 00:00:00"	3	23
11	"O HOBBIT"					"FANTASIA"	"2018-05-02 00:00:00"	3	38
12	"KILL BILL I"				"AVENTURA"	"2018-01-10 00:00:00"	1	56
13	"UM SONHO DE LIBERDADE"		"DRAMA"		"2018-06-12 00:00:00"	3	23
14	"SENHOR DOS ANEIS"			"FANTASIA"	"2018-01-02 00:00:00"	2	56
15	"SENHOR DOS ANEIS"			"FANTASIA"	"2018-04-10 00:00:00"	3	76
16	"UM SONHO DE LIBERDADE"		"DRAMA"		"2018-01-09 00:00:00"	2	32
17	"KILL BILL I"				"AVENTURA"	"2018-08-02 00:00:00"	3	89
18	"DRACULA"					"SUSPENSE"	"2018-01-02 00:00:00"	1	23
19	"SENHOR DOS ANEIS"			"FANTASIA"	"2018-08-09 00:00:00"	3	45
20	"UM SONHO DE LIBERDADE"		"DRAMA"		"2018-01-12 00:00:00"	1	89
21	"CORRIDA MORTAL"			"AÇÃO"		"2018-09-07 00:00:00"	3	23
22	"CORRIDA MORTAL"			"AÇÃO"		"2018-01-12 00:00:00"	3	21
23	"KILL BILL I"				"AVENTURA"	"2018-01-02 00:00:00"	2	34
24	"CORRIDA MORTAL"			"AÇÃO"		"2018-09-08 00:00:00"	1	67
25	"CORRIDA MORTAL"			"AÇÃO"		"2018-01-02 00:00:00"	3	76
26	"DRACULA"					"SUSPENSE"	"2018-01-02 00:00:00"	3	66
27	"UM SONHO DE LIBERDADE"		"DRAMA"		"2018-09-12 00:00:00"	1	90
28	"KILL BILL I"				"AVENTURA"	"2018-03-02 00:00:00"	3	23
29	"CORRIDA MORTAL"			"AÇÃO"		"2018-01-12 00:00:00"	5	65
30	"CORRIDA MORTAL"			"AÇÃO"		"2018-03-08 00:00:00"	1	43
31	"DRACULA"					"SUSPENSE"	"2018-01-02 00:00:00"			31	27
32	"SENHOR DOS ANEIS"			"FANTASIA"	"2022-01-25 15:23:17.404857"	7	100
33	"DRACULA"					"SUSPENSE"	"2022-01-25 15:39:30.219619"	1	500
34	"OS BAD BOYS"				"AÇÃO"		"2022-01-25 15:39:30.219619"	6	800
*/


DELETE FROM LOCACAO 
WHERE IDLOCACAO = 1;

/*
DELETE 1

Query returned successfully in 184 msec.
*/


SELECT * FROM LOCACAO;

/*
2	"2018-01-02 00:00:00"	56	1	400
3	"2018-02-07 00:00:00"	23	3	400
4	"2018-02-02 00:00:00"	43	1	500
5	"2018-02-02 00:00:00"	23	2	100
6	"2018-03-07 00:00:00"	76	3	700
7	"2018-03-02 00:00:00"	45	1	700
8	"2018-04-08 00:00:00"	89	3	100
9	"2018-04-02 00:00:00"	23	3	800
10	"2018-05-07 00:00:00"	23	3	500
11	"2018-05-02 00:00:00"	38	3	800
12	"2018-01-10 00:00:00"	56	1	100
13	"2018-06-12 00:00:00"	23	3	400
14	"2018-01-02 00:00:00"	56	2	300
15	"2018-04-10 00:00:00"	76	3	300
16	"2018-01-09 00:00:00"	32	2	400
17	"2018-08-02 00:00:00"	89	3	100
18	"2018-01-02 00:00:00"	23	1	200
19	"2018-08-09 00:00:00"	45	3	300
20	"2018-01-12 00:00:00"	89	1	400
21	"2018-09-07 00:00:00"	23	3	1000
22	"2018-01-12 00:00:00"	21	3	1000
23	"2018-01-02 00:00:00"	34	2	100
24	"2018-09-08 00:00:00"	67	1	1000
25	"2018-01-02 00:00:00"	76	3	1000
26	"2018-01-02 00:00:00"	66	3	200
27	"2018-09-12 00:00:00"	90	1	400
28	"2018-03-02 00:00:00"	23	3	100
29	"2018-01-12 00:00:00"	65	5	1000
30	"2018-03-08 00:00:00"	43	1	1000
31	"2018-01-02 00:00:00"	27	31	200
32	"2022-01-25 15:23:17.404857"	100	7	300
33	"2022-01-25 15:39:30.219619"	500	1	200
34	"2022-01-25 15:39:30.219619"	800	6	500
*/


SELECT * FROM RELATORIO_LOCADORA;

/*
2	"UM SONHO DE LIBERDADE"		"DRAMA"		"2018-01-02 00:00:00"	1	56
3	"UM SONHO DE LIBERDADE"		"DRAMA"		"2018-02-07 00:00:00"	3	23
4	"OS BAD BOYS"				"AÇÃO"		"2018-02-02 00:00:00"	1	43
5	"KILL BILL I"				"AVENTURA"	"2018-02-02 00:00:00"	2	23
6	"CADILLAC RECORDS"			"DRAMA"		"2018-03-07 00:00:00"	3	76
7	"CADILLAC RECORDS"			"DRAMA"		"2018-03-02 00:00:00"	1	45
8	"KILL BILL I"				"AVENTURA"	"2018-04-08 00:00:00"	3	89
9	"O HOBBIT"					"FANTASIA"	"2018-04-02 00:00:00"	3	23
10	"OS BAD BOYS"				"AÇÃO"		"2018-05-07 00:00:00"	3	23
11	"O HOBBIT"					"FANTASIA"	"2018-05-02 00:00:00"	3	38
12	"KILL BILL I"				"AVENTURA"	"2018-01-10 00:00:00"	1	56
13	"UM SONHO DE LIBERDADE"		"DRAMA"		"2018-06-12 00:00:00"	3	23
14	"SENHOR DOS ANEIS"			"FANTASIA"	"2018-01-02 00:00:00"	2	56
15	"SENHOR DOS ANEIS"			"FANTASIA"	"2018-04-10 00:00:00"	3	76
16	"UM SONHO DE LIBERDADE"		"DRAMA"		"2018-01-09 00:00:00"	2	32
17	"KILL BILL I"				"AVENTURA"	"2018-08-02 00:00:00"	3	89
18	"DRACULA"					"SUSPENSE"	"2018-01-02 00:00:00"	1	23
19	"SENHOR DOS ANEIS"			"FANTASIA"	"2018-08-09 00:00:00"	3	45
20	"UM SONHO DE LIBERDADE"		"DRAMA"		"2018-01-12 00:00:00"	1	89
21	"CORRIDA MORTAL"			"AÇÃO"		"2018-09-07 00:00:00"	3	23
22	"CORRIDA MORTAL"			"AÇÃO"		"2018-01-12 00:00:00"	3	21
23	"KILL BILL I"				"AVENTURA"	"2018-01-02 00:00:00"	2	34
24	"CORRIDA MORTAL"			"AÇÃO"		"2018-09-08 00:00:00"	1	67
25	"CORRIDA MORTAL"			"AÇÃO"		"2018-01-02 00:00:00"	3	76
26	"DRACULA"					"SUSPENSE"	"2018-01-02 00:00:00"	3	66
27	"UM SONHO DE LIBERDADE"		"DRAMA"		"2018-09-12 00:00:00"	1	90
28	"KILL BILL I"				"AVENTURA"	"2018-03-02 00:00:00"	3	23
29	"CORRIDA MORTAL"			"AÇÃO"		"2018-01-12 00:00:00"	5	65
30	"CORRIDA MORTAL"			"AÇÃO"		"2018-03-08 00:00:00"	1	43
31	"DRACULA"					"SUSPENSE"	"2018-01-02 00:00:00"			31	27
32	"SENHOR DOS ANEIS"			"FANTASIA"	"2022-01-25 15:23:17.404857"	7	100
33	"DRACULA"					"SUSPENSE"	"2022-01-25 15:39:30.219619"	1	500
34	"OS BAD BOYS"				"AÇÃO"		"2022-01-25 15:39:30.219619"	6	800
*/
