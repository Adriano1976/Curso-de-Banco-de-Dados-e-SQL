-- Retorna todos os caracteres da resposta à consulta em letras minúsculas.

SELECT LOWER(NOME) AS NOME FROM ALUNO;

/*
+---------+
| NOME    |
+---------+
| joao    |
| carlos  |
| ana     |
| jorge   |
| celia   |
| adriano |
| neide   |
| laura   |
| luiza   |
| clara   |
+---------+
*/

SELECT LOWER(EMAIL) AS EMAIL_DOS_ALUNOS FROM ALUNO;

/*
+-------------------------+
| EMAIL_DOS_ALUNOS        |
+-------------------------+
| adriano.git@hotmail.com |
| ana@ig.com              |
| carlosa@ig.com          |
| clara@hotmail           |
| jcelia@ig.com           |
| joaosantos@ig.com       |
| jorge@ig.com            |
| laura@gmail.com         |
| luiza@gmail.com         |
| neide@hotmail.com       |
+-------------------------+
*/

SELECT LOWER(RUA_AV) AS RUA_OU_AVENIDA FROM ENDERECO;

/*
+-------------------------------+
| RUA_OU_AVENIDA                |
+-------------------------------+
| travessa euzébio pinheiro     |
| rua sete de setembro          |
| rua a                         |
| rua josé lisboa dos santos    |
| rua b                         |
| rua josé augusto dos santos   |
| rua pedro josé do nascimento  |
| rua geruzinho                 |
| rua geruzinho                 |
| rua geruzinho                 |
+-------------------------------+
*/
