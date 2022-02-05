
-- UPDATE: Permite atualizar dados de uma determina tabelas, lembrando que NÃO ESQUEÇA 
-- de usar o UPDATE em conjunto com o WHERE para atualizar apenas o valor de uma linha.

UPDATE atores 
SET nascionalidade = 'Brasil'
WHERE id_ator = 10;

UPDATE clientes
SET estado = 'Sergipe' AND regiao = 'Nordeste'
WHERE id_ator = 5;

UPDATE filmes
SET preco_aluguel = 3.35
WHERE id_filme = 9;

