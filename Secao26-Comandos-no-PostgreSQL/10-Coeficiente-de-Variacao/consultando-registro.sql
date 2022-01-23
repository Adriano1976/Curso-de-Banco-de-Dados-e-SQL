select maquina as "Maquina",
	count(qtd) as "Quantidade",
	sum(qtd) as "Total",
	avg(qtd) as "Media",
	max(qtd) as "Maximo",
	min(qtd) as "Minimo",
	max(qtd) - min(qtd) as "Amplitude Total",
	var_pop(qtd) as "Variancia",
	stddev_pop(qtd) as "Desvio Padrao",
	(stddev_pop(qtd) / avg(qtd)) * 100 as "Coeficiente de Variacao"
	from maquinas
	group by maquina
	order by 1;

/*
"Maquina 01"	32	495.90	15.4968750000000000	35.00	0.00	35.00	123.6221777343750000	11.1185510627228312	71.74705263301685791500
"Maquina 02"	32	573.40	17.9187500000000000	43.00	14.50	28.50	67.5658984375000000		8.2198478354225025	45.87288642021626787600
"Maquina 03"	32	510.70	15.9593750000000000	45.00	10.00	35.00	45.9699121093750000		6.7801115115737588	42.48356537504607041300
*/


select maquina as "Maquina",
	count(qtd) as "Quantidade",
	sum(qtd) as "Total",
	round(avg(qtd), 2) as "Media",
	max(qtd) as "Maximo",
	min(qtd) as "Minimo",
	max(qtd) - min(qtd) as "Amplitude Total",
	round(var_pop(qtd), 2) as "Variancia",
	round(stddev_pop(qtd), 2) as "Desvio Padrao",
	round((stddev_pop(qtd) / avg(qtd)) * 100, 2) as "Coeficiente de Variacao"
	from maquinas
	group by maquina
	order by 1;

/*
"Maquina 01"	32	495.90	15.50	35.00	0.00	35.00	123.62	11.12	71.75
"Maquina 02"	32	573.40	17.92	43.00	14.50	28.50	67.57	8.22	45.87
"Maquina 03"	32	510.70	15.96	45.00	10.00	35.00	45.97	6.78	42.48
*/


delete from maquinas where dia = 11 or dia = 12;

select maquina as "Maquina",
	count(qtd) as "Quantidade",
	sum(qtd) as "Total",
	round(avg(qtd), 2) as "Media",
	max(qtd) as "Maximo",
	min(qtd) as "Minimo",
	max(qtd) - min(qtd) as "Amplitude Total",
	round(var_pop(qtd), 2) as "Variancia",
	round(stddev_pop(qtd), 2) as "Desvio Padrao",
	round((stddev_pop(qtd) / avg(qtd)) * 100, 2) as "Coeficiente de Variacao"
	from maquinas
	group by maquina
	order by 1;

/*
"Maquina 01"	30	450.00	15.00	35.00	0.00	35.00	124.60	11.16	74.42
"Maquina 02"	30	534.00	17.80	43.00	14.50	28.50	70.61	8.40	47.21
"Maquina 03"	30	450.00	15.00	25.00	10.00	15.00	20.00	4.47	29.81
*/

