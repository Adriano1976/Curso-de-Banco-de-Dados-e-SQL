-- Selecione o nome completo e telefone de todos os alunos da escola.

SELECT NOME, SOBRENOME, NUMERO AS TELEFONE 
FROM ALUNO, TELEFONE
WHERE ALUNO.IDALUNO = TELEFONE.ID_ALUNO;

/*
+---------+-------------+-------------+
| NOME    | SOBRENOME   | TELEFONE    |
+---------+-------------+-------------+
| LAURA   | SANTOS      | 79999179868 |
| CELIA   | GAMA        | 79978458743 |
| CELIA   | GAMA        | 79956576876 |
| JOAO    | SANTOS      | 79987866896 |
| JOAO    | SANTOS      | 79999667587 |
| ANA     | BEATRIZ     | 79978989765 |
| ANA     | BEATRIZ     | 79999766676 |
| CELIA   | GAMA        | 79989986668 |
| CARLOS  | VASCONCELOS | 79988687909 |
| CLARA   | NUNES       | 79964680009 |
| CARLOS  | VASCONCELOS | 79954768899 |
| JOAO    | SANTOS      | 79966687899 |
| ADRIANO | SANTOS      | 79998960414 |
+---------+-------------+-------------+
*/

-- Selecione o nome completo, o telefone e o email de todos os alunos com sobrenome 'SANTOS'.

SELECT NOME, SOBRENOME, NUMERO AS TELEFONE
FROM ALUNO, TELEFONE
WHERE ALUNO.IDALUNO = TELEFONE.ID_ALUNO 
AND ALUNO.SOBRENOME = 'SANTOS';

/*
+---------+-----------+-------------+
| NOME    | SOBRENOME | TELEFONE    |
+---------+-----------+-------------+
| JOAO    | SANTOS    | 79987866896 |
| JOAO    | SANTOS    | 79999667587 |
| JOAO    | SANTOS    | 79966687899 |
| ADRIANO | SANTOS    | 79998960414 |
| LAURA   | SANTOS    | 79999179868 |
+---------+-----------+-------------+
*/

-- Selecione o nome, telefone e email do aluno ADRIANO SANTOS.

-- 1º PASSO: Visualizar todos os registros da tabela aluno.

SELECT * FROM ALUNO;

/*
+---------+---------+-------------+-------------+------+-------------------------+--------+
| IDALUNO | NOME    | SOBRENOME   | CPF         | SEXO | EMAIL                   | ALTURA |
+---------+---------+-------------+-------------+------+-------------------------+--------+
|       1 | JOAO    | SANTOS      | 76567587887 | M    | joaosantos@ig.com       |   1.85 |
|       2 | CARLOS  | VASCONCELOS | 5464553466  | M    | CARLOSA@IG.COM          |   1.85 |
|       3 | ANA     | BEATRIZ     | 456545678   | F    | ANA@IG.COM              |   1.45 |
|       4 | JORGE   | FEITOZA     | 8756547688  | M    | JORGE@IG.COM            |   1.98 |
|       5 | CELIA   | GAMA        | 5767876889  | M    | JCELIA@IG.COM           |   1.45 |
|       6 | ADRIANO | SANTOS      | 89456974258 | M    | ADRIANO.GIT@HOTMAIL.COM |   1.78 |
|       7 | NEIDE   | FERREIRA    | 58790025415 | F    | NEIDE@HOTMAIL.COM       |   1.68 |
|       8 | LAURA   | SANTOS      | 25100569845 | F    | LAURA@GMAIL.COM         |   1.76 |
|       9 | LUIZA   | LIMA        | 25145568545 | F    | LUIZA@GMAIL.COM         |   1.69 |
|      10 | CLARA   | NUNES       | 5687766856  | F    | CLARA@HOTMAIL           |   1.78 |
+---------+---------+-------------+-------------+------+-------------------------+--------+
*/

-- 2º PASSO: Filtrar o registro pelo nome do aluno solicitado.

SELECT * FROM ALUNO
WHERE NOME = 'ADRIANO' AND SOBRENOME = 'SANTOS';

/*
+---------+---------+-----------+-------------+------+-------------------------+--------+
| IDALUNO | NOME    | SOBRENOME | CPF         | SEXO | EMAIL                   | ALTURA |
+---------+---------+-----------+-------------+------+-------------------------+--------+
|       6 | ADRIANO | SANTOS    | 89456974258 | M    | ADRIANO.GIT@HOTMAIL.COM |   1.78 |
+---------+---------+-----------+-------------+------+-------------------------+--------+
*/

-- 3º PASSO: Refinar a filtragem de acordo com a solicitação

SELECT A.NOME, A.SOBRENOME, A.EMAIL, T.NUMERO AS TELEFONE
FROM ALUNO A, TELEFONE T
WHERE A.IDALUNO = T.ID_ALUNO AND A.IDALUNO = 6;

/*
+---------+-----------+-------------------------+-------------+
| NOME    | SOBRENOME | EMAIL                   | TELEFONE    |
+---------+-----------+-------------------------+-------------+
| ADRIANO | SANTOS    | ADRIANO.GIT@HOTMAIL.COM | 79998960414 |
+---------+-----------+-------------------------+-------------+
*/


-- Selecione o id do telefone de todos os contatos cujo a altura seja maior do que 1.70.

SELECT T.IDTELEFONE, A.ALTURA
FROM ALUNO A, TELEFONE T
WHERE T.ID_ALUNO = A.IDALUNO
AND A.ALTURA > 1.70;

/*
+------------+--------+
| IDTELEFONE | ALTURA |
+------------+--------+
|          4 |   1.85 |
|          5 |   1.85 |
|         12 |   1.85 |
|          9 |   1.85 |
|         11 |   1.85 |
|         13 |   1.78 |
|          1 |   1.76 |
|         10 |   1.78 |
+------------+--------+
*/

-- Selecione o id do telefone por ordem crescente de todos os contatos cujo a altura seja maior do que 1.70.

SELECT T.IDTELEFONE, A.ALTURA
FROM ALUNO A, TELEFONE T
WHERE T.ID_ALUNO = A.IDALUNO
AND A.ALTURA > 1.70
ORDER BY 1;

/*
+------------+--------+
| IDTELEFONE | ALTURA |
+------------+--------+
|          1 |   1.76 |
|          4 |   1.85 |
|          5 |   1.85 |
|          9 |   1.85 |
|         10 |   1.78 |
|         11 |   1.85 |
|         12 |   1.85 |
|         13 |   1.78 |
+------------+--------+
*/

-- Selecione o nome completo, o telefone de todos os contatos cujo a altura seja maior do que 1.70.

SELECT A.NOME, A.SOBRENOME, T.NUMERO AS TELEFONE, A.ALTURA
FROM ALUNO A, TELEFONE T
WHERE T.ID_ALUNO = A.IDALUNO
AND A.ALTURA > 1.70;

/*
+---------+-------------+-------------+--------+
| NOME    | SOBRENOME   | TELEFONE    | ALTURA |
+---------+-------------+-------------+--------+
| JOAO    | SANTOS      | 79987866896 |   1.85 |
| JOAO    | SANTOS      | 79999667587 |   1.85 |
| JOAO    | SANTOS      | 79966687899 |   1.85 |
| CARLOS  | VASCONCELOS | 79988687909 |   1.85 |
| CARLOS  | VASCONCELOS | 79954768899 |   1.85 |
| ADRIANO | SANTOS      | 79998960414 |   1.78 |
| LAURA   | SANTOS      | 79999179868 |   1.76 |
| CLARA   | NUNES       | 79964680009 |   1.78 |
+---------+-------------+-------------+--------+
*/

-- Selecione o nome, sobrenome, sala, andar e a altura de todos os contatos com altura < 1.50.

SELECT A.NOME, A.SOBRENOME,S.SALA, S.ANDAR, A.ALTURA
FROM ALUNO A, SALA S
WHERE A.IDALUNO = S.IDSALA
AND A.ALTURA < 1.50;

/*
+-------+-----------+------+-------+--------+
| NOME  | SOBRENOME | SALA | ANDAR | ALTURA |
+-------+-----------+------+-------+--------+
| ANA   | BEATRIZ   | B    | 2     |   1.45 |
| CELIA | GAMA      | C    | 3     |   1.45 |
+-------+-----------+------+-------+--------+
*/

-- Selecione o nome, sobrenome, sala, andar e a altura agrupando por sala.

SELECT A.NOME, A.SOBRENOME,S.SALA, S.ANDAR, A.ALTURA
FROM ALUNO A, SALA S
WHERE A.IDALUNO = S.IDSALA
ORDER BY 3;

/*
+---------+-------------+------+-------+--------+
| NOME    | SOBRENOME   | SALA | ANDAR | ALTURA |
+---------+-------------+------+-------+--------+
| JOAO    | SANTOS      | A    | 1     |   1.85 |
| CARLOS  | VASCONCELOS | A    | 1     |   1.85 |
| LUIZA   | LIMA        | A    | 1     |   1.69 |
| CLARA   | NUNES       | A    | 1     |   1.78 |
| ANA     | BEATRIZ     | B    | 2     |   1.45 |
| JORGE   | FEITOZA     | B    | 2     |   1.98 |
| NEIDE   | FERREIRA    | B    | 2     |   1.68 |
| LAURA   | SANTOS      | B    | 2     |   1.76 |
| CELIA   | GAMA        | C    | 3     |   1.45 |
| ADRIANO | SANTOS      | C    | 3     |   1.78 |
+---------+-------------+------+-------+--------+
*/

-- Selecione o nome completo e email de todos os alunos.

SELECT NOME, SOBRENOME, EMAIL
FROM ALUNO;

/*
+---------+-------------+-------------------------+
| NOME    | SOBRENOME   | EMAIL                   |
+---------+-------------+-------------------------+
| JOAO    | SANTOS      | joaosantos@ig.com       |
| CARLOS  | VASCONCELOS | CARLOSA@IG.COM          |
| ANA     | BEATRIZ     | ANA@IG.COM              |
| JORGE   | FEITOZA     | JORGE@IG.COM            |
| CELIA   | GAMA        | JCELIA@IG.COM           |
| ADRIANO | SANTOS      | ADRIANO.GIT@HOTMAIL.COM |
| NEIDE   | FERREIRA    | NEIDE@HOTMAIL.COM       |
| LAURA   | SANTOS      | LAURA@GMAIL.COM         |
| LUIZA   | LIMA        | LUIZA@GMAIL.COM         |
| CLARA   | NUNES       | CLARA@HOTMAIL           |
+---------+-------------+-------------------------+
*/

-- Selecione o nome completo dos alunos que estão no 2ª andar e as salas de cada um.

SELECT A.NOME, A.SOBRENOME,S.SALA, S.ANDAR, A.ALTURA
FROM ALUNO A, SALA S
WHERE A.IDALUNO = S.IDSALA
AND S.ANDAR = 2
ORDER BY 1;

/*
+-------+-----------+------+-------+--------+
| NOME  | SOBRENOME | SALA | ANDAR | ALTURA |
+-------+-----------+------+-------+--------+
| ANA   | BEATRIZ   | B    | 2     |   1.45 |
| JORGE | FEITOZA   | B    | 2     |   1.98 |
| LAURA | SANTOS    | B    | 2     |   1.76 |
| NEIDE | FERREIRA  | B    | 2     |   1.68 |
+-------+-----------+------+-------+--------+
*/

-- Informe o nome completo e email de todos os alunos.

SELECT NOME, SOBRENOME, EMAIL
FROM ALUNO;

/*
+---------+-------------+-------------------------+
| NOME    | SOBRENOME   | EMAIL                   |
+---------+-------------+-------------------------+
| JOAO    | SANTOS      | joaosantos@ig.com       |
| CARLOS  | VASCONCELOS | CARLOSA@IG.COM          |
| ANA     | BEATRIZ     | ANA@IG.COM              |
| JORGE   | FEITOZA     | JORGE@IG.COM            |
| CELIA   | GAMA        | JCELIA@IG.COM           |
| ADRIANO | SANTOS      | ADRIANO.GIT@HOTMAIL.COM |
| NEIDE   | FERREIRA    | NEIDE@HOTMAIL.COM       |
| LAURA   | SANTOS      | LAURA@GMAIL.COM         |
| LUIZA   | LIMA        | LUIZA@GMAIL.COM         |
| CLARA   | NUNES       | CLARA@HOTMAIL           |
+---------+-------------+-------------------------+
*/


