-- Selecione o nome e telefone de todos os alunos da escola.

SELECT NOME AS ALUNO, NUMERO AS TELEFONE FROM ALUNO, TELEFONE
WHERE ALUNO.IDALUNO = TELEFONE.ID_ALUNO;

-- Selecione o nome, o telefone e o email da aluna LAURA.
