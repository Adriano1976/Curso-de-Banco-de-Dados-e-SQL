/* CONTANDO OS REGISTROS DE UMA TABELA */

SELECT COUNT(*) FROM FUNCIONARIOS;
SELECT COUNT(*) AS 'Quantidade de Funcionarios' FROM FUNCIONARIOS;

-- QUESTAO 01 - Traga os funcionarios que trabalhem no departamento de filmes OU no departamento de roupas.

-- INFORMACAO IMPORTANTE: Como estamos trabalhando com OR e a segunda condicao é opcional colocamos na primeira condicao quem tem mais chances de uma saida verdadeira, pois a segunda condicao nao será checada nesse caso.

select * from funcionarios
where departamento = 'Roupas'
or
departamento = 'Filmes';

SELECT COUNT(*), departamento
FROM FUNCIONARIOS
group by departamento;
-- 21 | Filmes   53 | Roupas

SELECT COUNT(*), departamento
FROM FUNCIONARIOS
group by departamento
order by 1;
-- 21 | Filmes   53 | Roupas

WHERE DEPARTAMENTO = 'Filmes' OR DEPARTAMENTO = 'Roupas'

-- QUESTAO 02 - O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras desses dois setores. OR +  AND.

select count(*), sexo
from funcionarios
group by sexo;
--Feminino 491

select count(*), departamento
from funcionarios
group by departamento;
-- 52 Lar
-- 21 Filmes

select * from funcionarios
where (departamento = 'Lar' and sexo = 'Feminino') 
or (departamento = 'Filmes' and sexo = 'Feminino');
-- 41 rows in set (0.00 sec)
-- Melhor performance no BD.

select idFuncionario, nome, email, sexo, departamento from funcionarios
where (departamento = 'Lar' and sexo = 'Feminino') 
or (departamento = 'Filmes' and sexo = 'Feminino')
order by departamento;
-- 41 rows in set (0.00 sec)
-- Melhor performance no BD.

select idFuncionario, nome, email, sexo, departamento from funcionarios
where(departamento = 'Lar' or departamento = 'Filmes') and sexo = 'Feminino'
order by departamento;
-- 41 rows in set (0.00 sec)
-- Melhor performance no BD.

select idFuncionario, nome, email from funcionarios
where sexo = 'Feminino' 
and (departamento = 'Filmes' or departamento = 'Lar');
-- 41 rows in set (0.00 sec)

select idFuncionario, nome, email, departamento from funcionarios
where sexo = 'Feminino' 
and (departamento = 'Filmes' or departamento = 'Lar')
order by departamento;
-- 41 rows in set (0.00 sec)

select idFuncionario, nome, email, sexo, departamento from funcionarios
where sexo = 'Feminino' 
and (departamento = 'Filmes' or departamento = 'Lar')
order by departamento;
-- 41 rows in set (0.00 sec)


-- QUERTAO 03 - Traga os funcionarios do sexo masculino ou os funcionarios que trabalhem no setor Jardim.

SELECT * FROM FUNCIONARIOS
WHERE
SEXO = 'Masculino' OR
DEPARTAMENTO = 'Jardim';