SELECT NOME, SOBRENOME, CPF, EMAIL FROM ALUNO;

/*
+---------+-------------+-------------+-------------------------+
| NOME    | SOBRENOME   | CPF         | EMAIL                   |
+---------+-------------+-------------+-------------------------+
| JOAO    | SANTOS      | 76567587887 | joaosantos@ig.com       |
| CARLOS  | VASCONCELOS | 5464553466  | CARLOSA@IG.COM          |
| ANA     | BEATRIZ     | 456545678   | ANA@IG.COM              |
| JORGE   | FEITOZA     | 8756547688  | JORGE@IG.COM            |
| CELIA   | GAMA        | 5767876889  | JCELIA@IG.COM           |
| ADRIANO | SANTOS      | 89456974258 | ADRIANO.GIT@HOTMAIL.COM |
| NEIDE   | FERREIRA    | 58790025415 | NEIDE@HOTMAIL.COM       |
| LAURA   | SANTOS      | 25100569845 | LAURA@GMAIL.COM         |
| LUIZA   | LIMA        | 25145568545 | LUIZA@GMAIL.COM         |
| CLARA   | NUNES       | 5687766856  | CLARA@HOTMAIL           |
+---------+-------------+-------------+-------------------------+
*/

-- Retorna o número de caracteres de uma coluna de uma tabela.

SELECT LENGTH(NOME) AS NOME FROM ALUNO;

/*
+------+
| NOME |
+------+
|    4 |
|    6 |
|    3 |
|    5 |
|    5 |
|    7 |
|    5 |
|    5 |
|    5 |
|    5 |
+------+
*/

SELECT LENGTH(SOBRENOME) AS SOBRENOME FROM ALUNO;

/*
+-----------+
| SOBRENOME |
+-----------+
|         6 |
|        11 |
|         7 |
|         7 |
|         4 |
|         6 |
|         8 |
|         6 |
|         4 |
|         5 |
+-----------+
*/

SELECT LENGTH(CPF) AS CPF FROM ALUNO;

/*
+-----+
| CPF |
+-----+
|  11 |
|  11 |
|   9 |
|  10 |
|  10 |
|  10 |
|  11 |
|  11 |
|  10 |
|  11 |
+-----+
*/

SELECT LENGTH(EMAIL) AS EMAIL FROM ALUNO;

/*
+-------+
| EMAIL |
+-------+
|    23 |
|    10 |
|    14 |
|    13 |
|    13 |
|    17 |
|    12 |
|    15 |
|    15 |
|    17 |
+-------+
*/
