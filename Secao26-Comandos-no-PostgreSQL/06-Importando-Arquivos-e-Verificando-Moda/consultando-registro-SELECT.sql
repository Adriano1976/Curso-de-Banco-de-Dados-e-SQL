
select * from maquinas;

/*
"Maquina 01"	1	15.00
"Maquina 01"	2	25.00
"Maquina 01"	3	25.00
"Maquina 01"	4	1.00
"Maquina 01"	5	13.00
"Maquina 01"	6	20.00
"Maquina 01"	7	35.00
"Maquina 01"	8	0.00
"Maquina 01"	9	1.00
"Maquina 01"	10	15.00
"Maquina 02"	1	15.00
"Maquina 02"	2	15.50
"Maquina 02"	3	14.50
"Maquina 02"	4	15.00
"Maquina 02"	5	15.00
"Maquina 02"	6	43.00
"Maquina 02"	7	15.00
"Maquina 02"	8	14.90
"Maquina 02"	9	15.10
"Maquina 02"	10	15.00
"Maquina 03"	1	15.00
"Maquina 03"	2	25.00
"Maquina 03"	3	10.00
"Maquina 03"	4	10.00
"Maquina 03"	5	20.00
"Maquina 03"	6	15.00
"Maquina 03"	7	10.00
"Maquina 03"	8	15.00
"Maquina 03"	9	15.00
"Maquina 03"	10	15.00
"Maquina 01"	1	15.00
"Maquina 01"	2	25.00
"Maquina 01"	3	25.00
"Maquina 01"	4	1.00
"Maquina 01"	5	13.00
"Maquina 01"	6	20.00
"Maquina 01"	7	35.00
"Maquina 01"	8	0.00
"Maquina 01"	9	1.00
"Maquina 01"	10	15.00
"Maquina 02"	1	15.00
"Maquina 02"	2	15.50
"Maquina 02"	3	14.50
"Maquina 02"	4	15.00
"Maquina 02"	5	15.00
"Maquina 02"	6	43.00
"Maquina 02"	7	15.00
"Maquina 02"	8	14.90
"Maquina 02"	9	15.10
"Maquina 02"	10	15.00
"Maquina 03"	1	15.00
"Maquina 03"	2	25.00
"Maquina 03"	3	10.00
"Maquina 03"	4	10.00
"Maquina 03"	5	20.00
"Maquina 03"	6	15.00
"Maquina 03"	7	10.00
"Maquina 03"	8	15.00
"Maquina 03"	9	15.00
"Maquina 03"	10	15.00
"Maquina 01"	1	15.00
"Maquina 01"	2	25.00
"Maquina 01"	3	25.00
"Maquina 01"	4	1.00
"Maquina 01"	5	13.00
"Maquina 01"	6	20.00
"Maquina 01"	7	35.00
"Maquina 01"	8	0.00
"Maquina 01"	9	1.00
"Maquina 01"	10	15.00
"Maquina 02"	1	15.00
"Maquina 02"	2	15.50
"Maquina 02"	3	14.50
"Maquina 02"	4	15.00
"Maquina 02"	5	15.00
"Maquina 02"	6	43.00
"Maquina 02"	7	15.00
"Maquina 02"	8	14.90
"Maquina 02"	9	15.10
"Maquina 02"	10	15.00
"Maquina 03"	1	15.00
"Maquina 03"	2	25.00
"Maquina 03"	3	10.00
"Maquina 03"	4	10.00
"Maquina 03"	5	20.00
"Maquina 03"	6	15.00
"Maquina 03"	7	10.00
"Maquina 03"	8	15.00
"Maquina 03"	9	15.00
"Maquina 03"	10	15.00
*/


select maquina, dia, qtd 
from maquinas;

/*
"Maquina 01"	1	15.00
"Maquina 01"	2	25.00
"Maquina 01"	3	25.00
"Maquina 01"	4	1.00
"Maquina 01"	5	13.00
"Maquina 01"	6	20.00
"Maquina 01"	7	35.00
"Maquina 01"	8	0.00
"Maquina 01"	9	1.00
"Maquina 01"	10	15.00
"Maquina 02"	1	15.00
"Maquina 02"	2	15.50
"Maquina 02"	3	14.50
"Maquina 02"	4	15.00
"Maquina 02"	5	15.00
"Maquina 02"	6	43.00
"Maquina 02"	7	15.00
"Maquina 02"	8	14.90
"Maquina 02"	9	15.10
"Maquina 02"	10	15.00
"Maquina 03"	1	15.00
"Maquina 03"	2	25.00
"Maquina 03"	3	10.00
"Maquina 03"	4	10.00
"Maquina 03"	5	20.00
"Maquina 03"	6	15.00
"Maquina 03"	7	10.00
"Maquina 03"	8	15.00
"Maquina 03"	9	15.00
"Maquina 03"	10	15.00
"Maquina 01"	1	15.00
"Maquina 01"	2	25.00
"Maquina 01"	3	25.00
"Maquina 01"	4	1.00
"Maquina 01"	5	13.00
"Maquina 01"	6	20.00
"Maquina 01"	7	35.00
"Maquina 01"	8	0.00
"Maquina 01"	9	1.00
"Maquina 01"	10	15.00
"Maquina 02"	1	15.00
"Maquina 02"	2	15.50
"Maquina 02"	3	14.50
"Maquina 02"	4	15.00
"Maquina 02"	5	15.00
"Maquina 02"	6	43.00
"Maquina 02"	7	15.00
"Maquina 02"	8	14.90
"Maquina 02"	9	15.10
"Maquina 02"	10	15.00
"Maquina 03"	1	15.00
"Maquina 03"	2	25.00
"Maquina 03"	3	10.00
"Maquina 03"	4	10.00
"Maquina 03"	5	20.00
"Maquina 03"	6	15.00
"Maquina 03"	7	10.00
"Maquina 03"	8	15.00
"Maquina 03"	9	15.00
"Maquina 03"	10	15.00
"Maquina 01"	1	15.00
"Maquina 01"	2	25.00
"Maquina 01"	3	25.00
"Maquina 01"	4	1.00
"Maquina 01"	5	13.00
"Maquina 01"	6	20.00
"Maquina 01"	7	35.00
"Maquina 01"	8	0.00
"Maquina 01"	9	1.00
"Maquina 01"	10	15.00
"Maquina 02"	1	15.00
"Maquina 02"	2	15.50
"Maquina 02"	3	14.50
"Maquina 02"	4	15.00
"Maquina 02"	5	15.00
"Maquina 02"	6	43.00
"Maquina 02"	7	15.00
"Maquina 02"	8	14.90
"Maquina 02"	9	15.10
"Maquina 02"	10	15.00
"Maquina 03"	1	15.00
"Maquina 03"	2	25.00
"Maquina 03"	3	10.00
"Maquina 03"	4	10.00
"Maquina 03"	5	20.00
"Maquina 03"	6	15.00
"Maquina 03"	7	10.00
"Maquina 03"	8	15.00
"Maquina 03"	9	15.00
"Maquina 03"	10	15.00
*/