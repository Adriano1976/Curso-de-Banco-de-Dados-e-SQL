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
