-- Remove caracteres em branco que estejam no início
-- (à esquerda - left) do conteúdo da coluna de uma tabela.

SELECT LTRIM(NOME)
FROM ALUNO;

/*
+-------------+
| LTRIM(NOME) |
+-------------+
| JOAO        |
| CARLOS      |
| ANA         |
| JORGE       |
| CELIA       |
| ADRIANO     |
| NEIDE       |
| LAURA       |
| LUIZA       |
| CLARA       |
+-------------+
*/

SELECT LTRIM(EMAIL)
FROM ALUNO;

/*
+-------------------------+
| LTRIM(EMAIL)            |
+-------------------------+
| ADRIANO.GIT@HOTMAIL.COM |
| ANA@IG.COM              |
| CARLOSA@IG.COM          |
| CLARA@HOTMAIL           |
| JCELIA@IG.COM           |
| joaosantos@ig.com       |
| JORGE@IG.COM            |
| LAURA@GMAIL.COM         |
| LUIZA@GMAIL.COM         |
| NEIDE@HOTMAIL.COM       |
+-------------------------+
*/