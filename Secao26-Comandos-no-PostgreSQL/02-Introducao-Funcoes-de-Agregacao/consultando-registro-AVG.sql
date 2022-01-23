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
