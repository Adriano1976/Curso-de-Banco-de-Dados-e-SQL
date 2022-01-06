SELECT NOME, SOBRENOME, CPF FROM ALUNO;

/*
+---------+-------------+-------------+
| NOME    | SOBRENOME   | CPF         |
+---------+-------------+-------------+
| JOAO    | SANTOS      | 76567587887 |
| CARLOS  | VASCONCELOS | 5464553466  |
| ANA     | BEATRIZ     | 456545678   |
| JORGE   | FEITOZA     | 8756547688  |
| CELIA   | GAMA        | 5767876889  |
| ADRIANO | SANTOS      | 89456974258 |
| NEIDE   | FERREIRA    | 58790025415 |
| LAURA   | SANTOS      | 25100569845 |
| LUIZA   | LIMA        | 25145568545 |
| CLARA   | NUNES       | 5687766856  |
+---------+-------------+-------------+
*/

/*
substitui um conjunto de caracteres de uma coluna quando parte do conteúdo 
dessa coluna coincidir com a cadeia1. Nesse caso, os caracteres da cadeia1 
serão substituídos pelos caracteres da cadeia2.
*/

SELECT REPLACE(NOME, 'ADRIANO','ADRIANNY') FROM ALUNO;

/*
+-------------------------------------+
| REPLACE(NOME, 'ADRIANO','ADRIANNY') |
+-------------------------------------+
| JOAO                                |
| CARLOS                              |
| ANA                                 |
| JORGE                               |
| CELIA                               |
| ADRIANNY                            |
| NEIDE                               |
| LAURA                               |
| LUIZA                               |
| CLARA                               |
+-------------------------------------+
*/

SELECT REPLACE(SOBRENOME, 'SANTOS','SMITH') FROM ALUNO;

/*
+--------------------------------------+
| REPLACE(SOBRENOME, 'SANTOS','SMITH') |
+--------------------------------------+
| SMITH                                |
| VASCONCELOS                          |
| BEATRIZ                              |
| FEITOZA                              |
| GAMA                                 |
| SMITH                                |
| FERREIRA                             |
| SMITH                                |
| LIMA                                 |
| NUNES                                |
+--------------------------------------+
*/