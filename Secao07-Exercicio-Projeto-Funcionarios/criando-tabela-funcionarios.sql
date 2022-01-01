/*
IMAGINE UMA TABELA CLIENTE COM 1 MILHAO DE REGISTROS

- PARA CONTAR
SELECT COUNT(*) FROM CLIENTE;

SELECT SEXO, COUNT(*) FROM CLIENTE
GROUP BY SEXO;

SELECT CIDADE, COUNT(*) FROM CLIENTE
GROUP BY CIDADE;

- CONDICAO
SEXO = F
CIDADE = RIO DE JANEIRO

- SITUACAO - TRATANDO COM OU / OR
70% MULHERES = SEXO = F
30% MORA NO RIO DE JANEIRO

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE SEXO = 'F'
OR CIDADE = 'RIO DE JANEIRO';

- SITUACAO - TRATANDO COM E / AND
70% MULHERES = SEXO = F
30% MORA NO RIO DE JANEIRO

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE CIDADE = 'RIO DE JANEIRO'
AND SEXO = 'F';
*/

/* exercicio */

/* Considerando o que vc aprendeu sobre performance, resolva os exercicios abaixo */

--Traga os funcionarios que trabalhem
--no departamento de filmes OU no
--departamento de roupas

--Como estamos trabalhando com OR e a segunda condicao é opcional
--colocamos na primeira condicao quem tem mais chances de uma saida
--verdadeira, pois a segunda condicao nao será checada nesse caso.

--O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento 
--de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras
--desses dois setores. OR +  AND *

--Traga os funcionarios do sexo masculino
--ou os funcionarios que trabalhem no setor Jardim

create database exercicio;

use exercicio;

create table funcionarios
	(
		idFuncionario INTEGER,
		nome VARCHAR(100),
		email VARCHAR(200),
		sexo VARCHAR(10),
		departamento VARCHAR(100),
		admissao VARCHAR(10),
		salario INTEGER,
		cargo VARCHAR(100),
		idRegiao INT
	);

show tables;

desc funcionarios;
