/*
- Moda: o número mais frequente — ou seja, o número que aparece o maior número de vezes. 
- Exemplo: a moda de {4 , 2, 4, 3, 2, 2} é 2 porque ele aparece três vezes, ou seja, 
aparece mais que qualquer outro número.
*/


-- Qual a moda das quantidades?

select maquina, qtd as "quantidade", count(*) as "moda"
from maquinas
group by maquina, qtd
order by 3 desc;

/*
"Maquina 03"	15.00	15
"Maquina 02"	15.00	15
"Maquina 03"	10.00	9
"Maquina 01"	1.00	6
"Maquina 01"	15.00	6
"Maquina 01"	25.00	6
"Maquina 02"	15.50	3
"Maquina 01"	35.00	3
"Maquina 02"	14.90	3
"Maquina 03"	20.00	3
"Maquina 01"	13.00	3
"Maquina 01"	0.00	3
"Maquina 02"	14.50	3
"Maquina 02"	15.10	3
"Maquina 01"	20.00	3
"Maquina 02"	43.00	3
"Maquina 03"	25.00	3
*/


-- Qual a moda das quantidades de cada maquina?

select maquina, qtd as "quantidade", count(*) from maquinas
where maquina = 'Maquina 01'
group by maquina, qtd
order by 3 desc
limit 1;

/*
"Maquina 01"	25.00	6
*/


select maquina, qtd as "quantidade", count(*) from maquinas
where maquina = 'Maquina 02'
group by maquina, qtd
order by 3 desc
limit 1;

/*
"Maquina 02"	15.00	15
*/



select maquina, qtd as "quantidade", count(*) from maquinas
where maquina = 'Maquina 03'
group by maquina, qtd
order by 3 desc
limit 1;

/*
"Maquina 02"	15.00	15
*/


-- Moda ou numero mais frequente do dataset inteiro

select qtd as "quantidade", count(*) as "moda"
from maquinas
group by qtd
order by 2 desc;

/*
15.00	36
10.00	9
25.00	9
20.00	6
1.00	6
15.50	3
35.00	3
14.90	3
0.00	3
43.00	3
15.10	3
14.50	3
13.00	3
*/