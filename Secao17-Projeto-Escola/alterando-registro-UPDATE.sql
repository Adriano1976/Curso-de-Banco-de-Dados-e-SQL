-- Se desejarmos alterar um registro existente em uma linha, usaremos a sintaxe:

UPDATE ALUNO
SET SOBRENOME = 'SANTOS'
WHERE IDALUNO = 1;

-- Se desejarmos alterar mais de um registro em uma linha, usaremos a sintaxe:

UPDATE ALUNO
SET SOBRENOME = 'SANTOS', EMAIL = 'joaosantos@ig.com'
WHERE IDALUNO = 1;

-- Se desejarmos alterar todas os registros de uma coluna, usaremos a sintaxe:

UPDATE MENSALIDADE
SET VALOR = VALOR * 1.1;

-- Se desejarmos alterar todos os registros de uma coluna sem valor, usaremos a sintaxe:

UPDATE ALUNO
SET NASCIMENTO = NULL;