-- Retorna todos os caracteres da resposta à consulta em letras maiúsculas.

SELECT UPPER(NOME) AS NOME FROM ALUNO;

/*
+---------+
| NOME    |
+---------+
| JOAO    |
| CARLOS  |
| ANA     |
| JORGE   |
| CELIA   |
| ADRIANO |
| NEIDE   |
| LAURA   |
| LUIZA   |
| CLARA   |
+---------+
*/

SELECT UPPER(EMAIL) AS EMAIL FROM ALUNO;

/*
+-------------------------+
| EMAIL                   |
+-------------------------+
| ADRIANO.GIT@HOTMAIL.COM |
| ANA@IG.COM              |
| CARLOSA@IG.COM          |
| CLARA@HOTMAIL           |
| JCELIA@IG.COM           |
| JOAOSANTOS@IG.COM       |
| JORGE@IG.COM            |
| LAURA@GMAIL.COM         |
| LUIZA@GMAIL.COM         |
| NEIDE@HOTMAIL.COM       |
+-------------------------+
*/

SELECT UPPER(RUA_AV) AS RUA_OU_AVENIDA FROM ENDERECO;

/*
+-------------------------------+
| RUA_OU_AVENIDA                |
+-------------------------------+
| TRAVESSA EUZÉBIO PINHEIRO     |
| RUA SETE DE SETEMBRO          |
| RUA A                         |
| RUA JOSÉ LISBOA DOS SANTOS    |
| RUA B                         |
| RUA JOSÉ AUGUSTO DOS SANTOS   |
| RUA PEDRO JOSÉ DO NASCIMENTO  |
| RUA GERUZINHO                 |
| RUA GERUZINHO                 |
| RUA GERUZINHO                 |
+-------------------------------+
*/
