-- Exibindo o menor salário - 40138

select min(salario) as "Salário Mínimo" from funcionarios;

-- Exibindo o  salário máximo e o salário mínimo juntos

select min(salario) as "Salário Mínimo", max(salario) as "Salário Máximo"
from funcionarios;

-- Exibindo o salário máximo e o salário mínimo por sexo

select sexo, min(salario) as "Salário Mínimo", max(salario) as "Salário Máximo"
from funcionarios
group by sexo;
