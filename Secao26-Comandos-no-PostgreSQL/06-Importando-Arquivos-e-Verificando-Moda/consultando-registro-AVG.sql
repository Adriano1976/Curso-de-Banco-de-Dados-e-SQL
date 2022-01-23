-- Qual a media de producao de cada maquina?

select maquina, avg(qtd) as "quantidade media"
from maquinas
group by maquina
order by 2 desc;

/*
"Maquina 02"	17.8000000000000000
"Maquina 01"	15.0000000000000000
"Maquina 03"	15.0000000000000000
*/


-- Como arredondar os valores da media de producao de cada maquina?

select maquina, round(avg(qtd),2) as "quant media"
from maquinas
group by maquina
order by 2 desc;

/*
"Maquina 02"	17.80
"Maquina 01"	15.00
"Maquina 03"	15.00
*/

