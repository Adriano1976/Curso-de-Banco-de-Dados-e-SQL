-- Selecione o nome e sobrenome de todos os alunos cuja sobrenome inicie com 'S'
-- e ordene por sobrenome em ordem decrescente e por nome em ordem crescente.

SELECT NOME, SOBRENOME
FROM ALUNO
WHERE SOBRENOME LIKE 'S%'
ORDER BY SOBRENOME DESC, NOME ASC;

/*
+---------+-----------+
| NOME    | SOBRENOME |
+---------+-----------+
| ADRIANO | SANTOS    |
| JOAO    | SANTOS    |
| LAURA   | SANTOS    |
+---------+-----------+
*/

-- Selecione o nome, sobrenome e endereço de todos os alunos cuja sobrenome inicie com 'S'
-- e ordene por nome em ordem crescente.

SELECT A.NOME, A.SOBRENOME, E.RUA_AV, E.BAIRRO, E.CIDADE
FROM ALUNO A, ENDERECO E
WHERE A.SOBRENOME LIKE 'S%' 
AND A.IDALUNO = E.ID_ALUNO
ORDER BY NOME ASC;

/*
+---------+-----------+----------------------+----------------------------+---------+
| NOME    | SOBRENOME | RUA_AV               | BAIRRO                     | CIDADE  |
+---------+-----------+----------------------+----------------------------+---------+
| ADRIANO | SANTOS    | Rua B                | Zona de Expansão (Aruana)  | Aracaju |
| JOAO    | SANTOS    | Rua Sete de Setembro | Aeroporto                  | Aracaju |
| LAURA   | SANTOS    | Rua Geruzinho        | Getúlio Vargas             | Aracaju |
+---------+-----------+----------------------+----------------------------+---------+
*/