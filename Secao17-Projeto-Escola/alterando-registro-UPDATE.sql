-- Se desejarmos mudar alguma informação do valor de uma coluna, usaremos a sintaxe:

UPDATE ALUNO
SET SOBRENOME = 'SANTOS'
WHERE IDALUNO = 1;

-- Se desejarmos mudar alguma iformação do valor de mais de uma coluna, usaremos a sintaxe:

UPDATE ALUNO
SET SOBRENOME = 'SANTOS', EMAIL = 'joaosantos@ig.com'
WHERE IDALUNO = 1;

-- Se desejarmos alterar todas os valores de uma vez de uma coluna, usaremos a sintaxe:

UPDATE MENSALIDADE
SET VALOR = VALOR * 1.1;

-- Se desejarmos manter um atributo ou coluna sem valor, usaremos a sintaxe:

UPDATE ALUNO
SET NASCIMENTO = NULL;