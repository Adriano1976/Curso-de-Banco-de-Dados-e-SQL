-- Se desejarmos inserir um novo registro em uma linha, usaremos a sintaxe:

UPDATE ALUNO
SET SOBRENOME = 'SANTOS'
WHERE IDALUNO = 1;

UPDATE SALA   
SET SALA = 'A'
WHERE ANDAR = '1';

-- Se desejarmos inserir mais de um novo registro em uma linha, usaremos a sintaxe:

UPDATE ALUNO
SET SOBRENOME = 'SANTOS', EMAIL = 'joaosantos@ig.com'
WHERE IDALUNO = 1;

-- Se desejarmos inserir novos registros resultantes de uma coluna, usaremos a sintaxe:

UPDATE MENSALIDADE
SET VALOR = VALOR * 1.1;

-- Se desejarmos inserir os mesmos registros em uma coluna sem valor, usaremos a sintaxe:

UPDATE ALUNO
SET NASCIMENTO = NULL;