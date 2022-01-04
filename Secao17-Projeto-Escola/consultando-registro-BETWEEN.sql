-- Selecione todos os contatos cuja altura esteja entre 1.50 e 1.70

SELECT * FROM ALUNO
WHERE ALTURA BETWEEN 1.50 AND 1.70;

/*
+---------+-------+-----------+-------------+------+-------------------+--------+
| IDALUNO | NOME  | SOBRENOME | CPF         | SEXO | EMAIL             | ALTURA |
+---------+-------+-----------+-------------+------+-------------------+--------+
|       7 | NEIDE | FERREIRA  | 58790025415 | F    | NEIDE@HOTMAIL.COM |   1.68 |
|       9 | LUIZA | LIMA      | 25145568545 | F    | LUIZA@GMAIL.COM   |   1.69 |
+---------+-------+-----------+-------------+------+-------------------+--------+
*/

-- Selecione todos os contatos cuja altura não esteja entre 1.50 e 1.70

SELECT * FROM ALUNO
WHERE ALTURA NOT BETWEEN 1.50 AND 1.70;

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
|       8 | LAURA   | SANTOS      | 25100569845 | F    | LAURA@GMAIL.COM         |   1.76 |
|      10 | CLARA   | NUNES       | 5687766856  | F    | CLARA@HOTMAIL           |   1.78 |
+---------+---------+-------------+-------------+------+-------------------------+--------+
*/