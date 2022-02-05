
-- GROUP BY: Podemos criar agrupamentos, ou seja, tabelas resumidas das nossas tabelas
-- principais. Um exemplo desse comando é utilizar o GROUP BY para criar uma consulta
-- e descobrir o total de filmes por gênero.

SELECT genero, COUNT(*) AS "Nº de filmes" 
FROM filmes 
GROUP BY genero;

SELECT ano_lancamento COUNT(*) AS "Nº de filmes" 
FROM clientes 
GROUP BY ano_lancamento;

SELECT nacionalidade, COUNT(*) AS "Nº de atores" 
FROM atores 
GROUP BY nacionalidade;

SELECT sexo, COUNT(*) AS "Nº de atores" 
FROM atores 
GROUP BY sexo;

SELECT estado, COUNT(*) AS "Nº de clientes" 
FROM clientes 
GROUP BY estado;

SELECT regiao, COUNT(*) AS "Nº de clientes" 
FROM clientes 
GROUP BY regiao;

SELECT sexo, COUNT(*) AS "Nº de clientes" 
FROM clientes 
GROUP BY sexo;

SELECT data_criacao_conta COUNT(*) AS "Nº de clientes" 
FROM clientes 
GROUP BY data_criacao_conta;


-- GROUP BY + WHERE: Sempre que quiser realizar um filtro ANTES de criar o agrupamento,
-- usamos o WHERE. Um exemplo do uso desse comando é quando criamos uma consulta para
-- descobrir o total de filmes por gênero, mas considerando os filmes lançados em 2003.

SELECT genero, COUNT(*) AS "Nº de filmes" 
FROM filmes 
WHERE ano_lancamento = 2003
GROUP BY genero
HAVING COUNT(*) > 1;

SELECT ano_lancamento COUNT(*) AS "Nº de filmes" 
FROM clientes 
WHERE genero = 'Comédia'
GROUP BY ano_lancamento
HAVING COUNT(*) > 1;

SELECT nacionalidade, COUNT(*) AS "Nº de atores" 
FROM atores 
WHERE sexo = 'masculino'
GROUP BY nacionalidade
HAVING COUNT(*) > 1;

SELECT sexo, COUNT(*) AS "Nº de atores" 
FROM atores 
WHERE nacionalidade = 'Reino Unido'
GROUP BY sexo
HAVING COUNT(*) > 1;

SELECT estado, COUNT(*) AS "Nº de clientes" 
FROM clientes 
WHERE sexo = 'feminino'
GROUP BY estado
HAVING COUNT(*) > 1;

SELECT regiao, COUNT(*) AS "Nº de clientes" 
FROM clientes 
WHERE estado = 'Bahia'
GROUP BY regiao
HAVING COUNT(*) > 1;

SELECT sexo, COUNT(*) AS "Nº de clientes" 
FROM clientes 
WHERE regiao = 'Nordeste'
GROUP BY sexo
HAVING COUNT(*) > 1;

SELECT data_criacao_conta COUNT(*) AS "Nº de clientes" 
FROM clientes 
WHERE sexo = 'feminino'
GROUP BY data_criacao_conta
HAVING COUNT(*) > 1;


-- GROUP BY * HAVING: Sempre que quisermos realizar um filtro DEPOIS que o agrupamento
-- foi criado, usamos o HAVING. A instrução HAVING é como a instrução WHERE para os 
-- seus grupos. A instrução HAVING filtra qualquer linha onde a contagem de linhas 
-- deste grupo não é maior que um determinado.

SELECT genero, COUNT(*) AS "Nº de filmes" 
FROM filmes 
WHERE ano_lancamento = 2003
GROUP BY genero;

SELECT ano_lancamento COUNT(*) AS "Nº de filmes" 
FROM clientes 
WHERE genero = 'Comédia'
GROUP BY ano_lancamento;

SELECT nacionalidade, COUNT(*) AS "Nº de atores" 
FROM atores 
WHERE sexo = 'masculino'
GROUP BY nacionalidade;

SELECT sexo, COUNT(*) AS "Nº de atores" 
FROM atores 
WHERE nacionalidade = 'Reino Unido'
GROUP BY sexo;

SELECT estado, COUNT(*) AS "Nº de clientes" 
FROM clientes 
WHERE sexo = 'feminino'
GROUP BY estado;

SELECT regiao, COUNT(*) AS "Nº de clientes" 
FROM clientes 
WHERE estado = 'Bahia'
GROUP BY regiao;

SELECT sexo, COUNT(*) AS "Nº de clientes" 
FROM clientes 
WHERE regiao = 'Nordeste'
GROUP BY sexo;

SELECT data_criacao_conta COUNT(*) AS "Nº de clientes" 
FROM clientes 
WHERE sexo = 'feminino'
GROUP BY data_criacao_conta;
