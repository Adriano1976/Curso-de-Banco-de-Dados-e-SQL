-- Query simples

select * from funcionarios;
select * from departamentos;
select * from localizacao;

-- Contando o número de ocorrências

select count(*) from funcionarios;
select count(*) from departamentos;
select count(*) from localizacao;

-- Agrupando por sexo com "group by"

select count(*) from funcionarios
group by sexo;

-- Colocando o nome da coluna

select sexo, count(*) as "Quantidade" from funcionarios
group by sexo;

-- Mostrando o número de funcionarios em cada departamento

select departamento, count(*) as "Quantidade" from funcionarios
group by departamento

-- Exibindo o maior salário - 149929

select max(salario) as "Salário Máximo" from funcionarios;

-- Exibindo o menor salário - 40138

select min(salario) as "Salário Mínimo" from funcionarios;

-- Exibindo o  salário máximo e o salário mínimo juntos

select min(salario) as "Salário Mínimo", max(salario) as "Salário Máximo"
from funcionarios;

-- Exibindo o salário máximo e o salário mínimo por sexo

select sexo, min(salario) as "Salário Mínimo", max(salario) as "Salário Máximo"
from funcionarios
group by sexo;

-- Mostrando uma quantidade limitada de linhas

select * from funcionarios
limit 10;

-- Qual o gasto total de salario pago pela empresa?

select sum(salario) as "Gasto Total de Salario" 
from funcionarios;

-- Qual o montante tatal que cada departamento recebe de salario?

select departamento, sum(salario) as "Folha Salarial"
from funcionarios
group by departamento;

-- Por departamento, qual o total e a média paga para os funcionarios?

select sum(salario), avg(salario)
from funcionarios;

select departamento, sum(salario), avg(salario)
from funcionarios
group by departamento;

select departamento, sum(salario) as "Folha Salarial", avg(salario) as "Media Salarial"
from funcionarios
group by departamento;

-- Ordenando as informacoes pela media salarial

select departamento, sum(salario) as "Folha Salarial", avg(salario) as "Media Salarial"
from funcionarios
group by departamento
order by 3;

-- Ordenando as informacoes pela media salarial de forma ascendente

select departamento, sum(salario) as "Folha Salarial", avg(salario) as "Media Salarial"
from funcionarios
group by departamento
order by 3 asc;

-- Ordenando as informacoes pela media salarial de forma descendente

select departamento, sum(salario) as "Folha Salarial", avg(salario) as "Media Salarial"
from funcionarios
group by departamento
order by 3 desc;

-- Ordenando as informacoes pela folha salarial de forma descendente

select departamento, sum(salario) as "Folha Salarial", avg(salario) as "Media Salarial"
from funcionarios
group by departamento
order by 2 desc;


-- Qual a moda dos salarios? A moda dos salarios diz algo de relevante?
-- Qual a moda departamental? Qual o departamento que mais emprega?
-- Qual o desvio padrao de cada departamento?
-- Qual a mediana salarial de todo o set de dados?
-- Qual a amplitude de todos so salarios;
-- Quais as principais medidas estatisticas por departamento?
-- Qual departamento te da uma maior brobabilidade de ganhar mais?

select departamento,
count(*) as "Moda departamental",
round(avg(salario),2) as "Media Salarial",
max(salario) as "Maxima Salarial",
min(salario) as "Minimo Salarial",
max(salario) - min(salario) as "Amplitude Total",
round(var_pop(salario),2) as "Variancia",
percentile_cont(0.5) within group(order by salario),
round(stddev_pop(salario),2) as "Desvio Padrao",
round(stddev_pop(salario) / avg(salario)) * 100.2 as "Coeficiente Variacao",
from funcionarios
group by departamento
order by 2 desc
limit 20;

