/*
 As funções matemáticas são extremamente importantes para criação de cálculos no SQL. 
 Essas funções têm como objetivo realizar cálculos no SQL, tais como: contagem, soma, média, 
 mínimo e máximo. Porém, a função ignora os valores nulos de um coluna. Por isso o resultado
 pode mudar dependendo da coluna escolhida.
*/



--FUNÇÃO COUNT(coluna): Retorna a quantidade total de valores de uma coluna.

SELECT COUNT(nome_ator) FROM atores;

SELECT COUNT(nome_cliente) FROM clientes;


--FUNÇÃO COUNT(*): Retorna a quantidade total de linhas de uma tabela, não ignorando 
-- valores nulos.

SELECT COUNT(*) FROM alugueis;

SELECT COUNT(*) FROM atores;

SELECT COUNT(*) FROM atuacoes;

SELECT COUNT(*) FROM clientes;

SELECT COUNT(*) FROM filmes;


-- FUNÇÃO COUNT(DISTINCT): Retorna a contagem distinta de valores de uma tabela.

SELECT COUNT(DISTINCT data_aluguel) 
FROM alugueis;

SELECT COUNT(DISTINCT nascinalidade) 
FROM atores;

SELECT COUNT(DISTINCT estado) 
FROM clientes;

SELECT COUNT(DISTINCT genero) 
FROM filmes;



-- FUNÇÃO SUM: Retorna a soma total dos valores de uma coluna.

SELECT SUM(Receita_Venda) FROM pedidos;

SELECT SUM(preco_aluguel) FROM filmes;


-- FUNÇÃO AVG: Retorna a média dos valores de uma coluna.

SELECT AVG(Receita_Venda) FROM pedidos;

SELECT AVG(preco_aluguel) FROM filmes;

SELECT AVG(nota) FROM alugueis;


-- FUNÇÃO MAX: Retorna o valor máximo de uma coluna.

SELECT MAX(Receita_Venda) FROM pedidos;

SELECT MAX(preco_aluguel) FROM filmes;

SELECT MAX(nota) FROM alugueis;


-- FUNÇÃO MIN: Retorna o valor mínimo de uma coluna.

SELECT MIN(Receita_Venda) FROM pedidos;

SELECT MIN(preco_aluguel) FROM filmes;

SELECT MIN(nota) FROM alugueis;


-- FUNÇÃO ROUND: Retorna o valor de uma coluna arredondado para “n” casas decimais. 
-- Isso significa que se o algarismo na posição n+1 for igual ou superior a 5, o algarismo 
-- na posição n é acrescido de 1.


SELECT ROUND(AVG(Receita_Venda),2) FROM pedidos;

SELECT ROUND(AVG(preco_aluguel),2) FROM filmes;

SELECT ROUND(AVG(nota),2) FROM alugueis;


-- FUNÇÃO POWER: retorna o valor da coluna de uma tabela elevado ao número “expoente”.
-- Se desejarmos saber a projeção do novo salário dos funcionarios com um aumento
-- de 5%, usaremos a seguinte sintaxe:


SELECT 
    id_empresa,
    titulo, 
    nome, 
    sigla,
    sede, 
    setor, 
    industria,
    receitas
    lucros, 
    TRUNCATE(POWER(lucros,1.005),2) AS "novos lucros"
FROM resultados;


SELECT 
    id_filme,
    titulo,
    genero,
    duracao,
    ano_lancamento,
    preco_aluguel,
    ROUND(POWER(preco_aluguel,1.009),2) AS "novo_preco_aluguel"
FROM filmes;

