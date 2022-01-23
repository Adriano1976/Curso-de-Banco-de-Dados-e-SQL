-- Qual o maximo e minimo e amplitude de cada maquina?

select maquina,
	max(qtd) as "maximo",
	min(qtd) as "minimo",
	max(qtd) - min(qtd) as "amplitude"
	from maquinas
	group by maquina
	order by 4 desc;

	/*
"Maquina 01"	35.00	0.00	35.00
"Maquina 02"	43.00	14.50	28.50
"Maquina 03"	25.00	10.00	15.00
	*/


-- Acrescente a media ao relatorio

select maquina,
	round(avg(qtd),2) as "media",
	max(qtd) as "maximo",
	min(qtd) as "minimo",
	max(qtd) - min(qtd) as "amplitude"
	from maquinas
	group by maquina
	order by 4 desc;

/*
"Maquina 02"	17.80	43.00	14.50	28.50
"Maquina 03"	15.00	25.00	10.00	15.00
"Maquina 01"	15.00	35.00	0.00	35.00
*/
