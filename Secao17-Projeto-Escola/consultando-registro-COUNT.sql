-- Informe a quantidade de alunos matriculados na escola.

SELECT COUNT(*) AS QUANTIDADE_ALUNO
FROM ALUNO;

/*
+------------------+
| QUANTIDADE_ALUNO |
+------------------+
|               10 |
+------------------+
*/

-- Informe a quantidade de alunos agrupado entre homens e mulheres.

SELECT COUNT(*) AS QUANTIDADE_ALUNO, SEXO
FROM ALUNO
GROUP BY SEXO;

/*
+------------------+------+
| QUANTIDADE_ALUNO | SEXO |
+------------------+------+
|                5 | M    |
|                5 | F    |
+------------------+------+
*/

-- Informe o sobrenome e quantidade de alunos que possui o mesmo sobrenome.

SELECT COUNT(*) AS QUANT_ALUNO, SOBRENOME
FROM ALUNO
GROUP BY SOBRENOME;

/*
+-------------+-------------+
| QUANT_ALUNO | SOBRENOME   |
+-------------+-------------+
|           3 | SANTOS      |
|           1 | VASCONCELOS |
|           1 | BEATRIZ     |
|           1 | FEITOZA     |
|           1 | GAMA        |
|           1 | FERREIRA    |
|           1 | LIMA        |
|           1 | NUNES       |
+-------------+-------------+
*/

-- Informe a quantidade de alunos atualmente agrupado por sala.

SELECT COUNT(*) AS QUANT_ALUNO, S.SALA
FROM ALUNO A
INNER JOIN SALA S
ON A.IDALUNO = S.IDSALA
GROUP BY S.SALA;

/*
+-------------+------+
| QUANT_ALUNO | SALA |
+-------------+------+
|           4 | B    |
|           4 | A    |
|           2 | C    |
+-------------+------+
*/

-- Informe o sobrenome e a quantidade de alunos que possuiem o mesmo sobrenome,
-- desde que hoja pelo menos dois contatos com o mesmo sobrenome.

SELECT SOBRENOME, COUNT(*) AS QUANT_ALUNO
FROM ALUNO
GROUP BY SOBRENOME
HAVING COUNT(*) > 1;

