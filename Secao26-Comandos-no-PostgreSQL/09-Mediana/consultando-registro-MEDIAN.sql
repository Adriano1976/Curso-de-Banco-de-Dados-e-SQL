-- Criando a função para calcular a media em 2 etapas.

CREATE OR REPLACE FUNCTION _final_median(numeric[])
   RETURNS numeric AS
$$
   SELECT AVG(val)
   FROM (
     SELECT val
     FROM unnest($1) val
     ORDER BY 1
     LIMIT  2 - MOD(array_upper($1, 1), 2)
     OFFSET CEIL(array_upper($1, 1) / 2.0) - 1
   ) sub;
$$
LANGUAGE 'sql' IMMUTABLE;


CREATE AGGREGATE median(numeric) (
  SFUNC=array_append,
  STYPE=numeric[],
  FINALFUNC=_final_median,
  INITCOND='{}'
);

-- FONTE DESSAS FUNÇÕES ACIMA: https://wiki.postgresql.org/wiki/Aggregate_Median


select median(qtd) as "Mediana" 
from maquinas;

/*
15.0000000000000000
*/

select median(qtd) as "Mediana" 
from maquinas
where maquina = 'Maquina 01';

/*
15.0000000000000000
*/

select median(qtd) as "Mediana" 
from maquinas
where maquina = 'Maquina 02';

/*
15.0000000000000000
*/

select median(qtd) as "Mediana" 
from maquinas
where maquina = 'Maquina 03';

/*
15.0000000000000000
*/

select maquina,
	count(qtd) as "Quantidade",
	sum(qtd) as "Total",
	round(avg(qtd),2) as "Media",
	max(qtd) as "Maximo",
	min(qtd) as "Minino",
	max(qtd) - min(qtd) as "Amplitude Total",
	round(var_pop(qtd),2) as "Variancia",
	round(stddev_pop(qtd),2) as "Desvio Padrao",
	round(median(qtd),2) as "Mediana",
	round((stddev_pop(qtd) / avg(qtd)) * 100,2) as "Coeficiente de Variacao"
	from maquinas
	group by maquina
	order by 1;

	/*
"Maquina 01"	30	450.00	15.00	35.00	0.00	35.00	124.60	11.16	15.00	74.42
"Maquina 02"	30	534.00	17.80	43.00	14.50	28.50	70.61	8.40	15.00	47.21
"Maquina 03"	30	450.00	15.00	25.00	10.00	15.00	20.00	4.47	15.00	29.81
	*/


INSERT INTO MAQUINAS VALUES('Maquina 01',11,15.9);
INSERT INTO MAQUINAS VALUES('Maquina 02',11,15.4);
INSERT INTO MAQUINAS VALUES('Maquina 03',11,15.7);
INSERT INTO MAQUINAS VALUES('Maquina 01',12,30);
INSERT INTO MAQUINAS VALUES('Maquina 02',12,24);
INSERT INTO MAQUINAS VALUES('Maquina 03',12,45);


select maquina,
	count(qtd) as "Quantidade",
	sum(qtd) as "Total",
	round(avg(qtd),2) as "Media",
	max(qtd) as "Maximo",
	min(qtd) as "Minino",
	max(qtd) - min(qtd) as "Amplitude Total",
	round(var_pop(qtd),2) as "Variancia",
	round(stddev_pop(qtd),2) as "Desvio Padrao",
	round(median(qtd),2) as "Mediana",
	round((stddev_pop(qtd) / avg(qtd)) * 100,2) as "Coeficiente de Variacao"
	from maquinas
	group by maquina
	order by 1;

/*
"Maquina 01"	32	495.90	15.50	35.00	0.00	35.00	123.62	11.12	15.00	71.75
"Maquina 02"	32	573.40	17.92	43.00	14.50	28.50	67.57	8.22	15.00	45.87
"Maquina 03"	32	510.70	15.96	45.00	10.00	35.00	45.97	6.78	15.00	42.48
*/
