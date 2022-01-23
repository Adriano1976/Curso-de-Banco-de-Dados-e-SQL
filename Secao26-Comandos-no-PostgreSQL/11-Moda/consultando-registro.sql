select maquina, mode() within group (order by qtd) as "moda"
from maquinas
group by maquina;

/*
"Maquina 01"	1.00
"Maquina 02"	15.00
"Maquina 03"	15.00
*/


select maquina as "Maquina", mode() within group(order by qtd) as "moda"
from maquinas
group by maquina;

/*
"Maquina 01"	1.00
"Maquina 02"	15.00
"Maquina 03"	15.00
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
	round(median(qtd), 2) as "Mediana",
	round((stddev_pop(qtd) / avg(qtd)) * 100, 2) as "Coeficiente de Variacao",
	mode() within group (order by qtd) as "Moda"
	from maquinas
	group by maquina
	order by 1;

/*
"Maquina 01"	30	450.00	15.00	35.00	0.00	35.00	124.60	11.16	15.00	74.42	1.00
"Maquina 02"	30	534.00	17.80	43.00	14.50	28.50	70.61	8.40	15.00	47.21	15.00
"Maquina 03"	30	450.00	15.00	25.00	10.00	15.00	20.00	4.47	15.00	29.81	15.00
*/
