-- Desvio Padrão e Variancia

select maquina as "Maquina",
	round(avg(qtd),2) as "Media",
	max(qtd) as "Maximo",
	min(qtd) as "Minimo",
	max(qtd) - min(qtd) as "Amplitude",
	round(stddev_pop(qtd), 2) as "Desvio Padrao",
	round(var_pop(qtd), 2) as "Variancia"
	from maquinas
	group by maquina
	order by 4 desc;

	/*
"Maquina 02"	17.80	43.00	14.50	28.50	8.40	70.61
"Maquina 03"	15.00	25.00	10.00	15.00	4.47	20.00
"Maquina 01"	15.00	35.00	0.00	35.00	11.16	124.60
	*/
	