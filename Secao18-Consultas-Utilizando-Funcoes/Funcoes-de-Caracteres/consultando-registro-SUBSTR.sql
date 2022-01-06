SELECT NOME FROM ALUNO;

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

SELECT EMAIL FROM ALUNO;

/*
+-------------------------+
| EMAIL                   |
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

/* 
retorna um subconjunto de caracteres de uma coluna. 
O primeiro parâmetro numérico (numero1) indica a
posição inicial do subconjunto de caracteres a ser recuperado e o segundo
parâmetro numérico (numero2) indica a quantidade de caracteres. 
Cabe ressaltar que o primeiro caractere de um literal representa a posição 1.
 */

 SELECT SUBSTR(NOME,2,4) AS NOME FROM ALUNO;

 /*
+------+
| NOME |
+------+
| OAO  |
| ARLO |
| NA   |
| ORGE |
| ELIA |
| DRIA |
| EIDE |
| AURA |
| UIZA |
| LARA |
+------+
 */

 SELECT SUBSTR(EMAIL,2,8) AS NOME FROM ALUNO;

 /*
+----------+
| NOME     |
+----------+
| DRIANO.G |
| NA@IG.CO |
| ARLOSA@I |
| LARA@HOT |
| CELIA@IG |
| oaosanto |
| ORGE@IG. |
| AURA@GMA |
| UIZA@GMA |
| EIDE@HOT |
+----------+
 */
 