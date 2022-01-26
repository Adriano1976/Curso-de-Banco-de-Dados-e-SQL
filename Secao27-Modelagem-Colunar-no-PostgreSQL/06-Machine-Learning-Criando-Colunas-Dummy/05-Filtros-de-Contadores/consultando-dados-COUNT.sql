
-- Multiplos contadores

SELECT COUNT(*) AS "Nª de Funcionarios"
FROM FUNCIONARIOS;

/*
1000
*/

SELECT SEXO, COUNT(*) AS "Quantidade"
FROM FUNCIONARIOS
WHERE SEXO = 'Masculino'
GROUP BY SEXO;

/*
"Masculino"	504
*/

SELECT COUNT(*) AS "Nª de Funcionarios"
COUNT(SELECT SEXO, COUNT(*) AS "Quantidade"
FROM FUNCIONARIOS
WHERE SEXO = 'Masculino'
GROUP BY SEXO) AS 'Masculino'
FROM FUNCIONARIOS;

/*
ERROR:  syntax error at or near "COUNT"
LINE 2: COUNT(SELECT SEXO, COUNT(*) AS "Quantidade"
        ^
SQL state: 42601
Character: 41
*/

SELECT COUNT(*) AS "Nª de Funcionarios",
(SELECT SEXO, COUNT(*)
FROM FUNCIONARIOS
WHERE SEXO = 'Masculino'
GROUP BY SEXO) AS "Masculino"
FROM FUNCIONARIOS;

/*
ERROR:  subquery must return only one column
LINE 2: (SELECT SEXO, COUNT(*)
        ^
SQL state: 42601
Character: 42
*/


-- Apesar desse comando rodar e retonar o número total de funcionários e a 
-- quantidade do sexo masculino que trabalham nessa fábrica, essa query 
-- degrada a peformance do banco de dados.

SELECT COUNT(*) AS "Nª de Funcionarios",
(SELECT COUNT(*) FROM FUNCIONARIOS WHERE SEXO = 'Masculino' GROUP BY SEXO) AS "Masculino"
FROM FUNCIONARIOS;

/*
1000	504
*/


-- Vejamos um outra Query mais simples e que faz a mesma coisa da Query anterior.

SELECT COUNT(*) AS "Nª de Funcionarios",
COUNT(*) FILTER(WHERE SEXO = 'Masculino') AS "Masculino"
FROM FUNCIONARIOS;

/*
1000	504
*/


SELECT COUNT(*) AS "Nª de Funcionarios",
COUNT(*) FILTER(WHERE SEXO = 'Masculino') AS "Masculino",
COUNT(*) FILTER(WHERE DEPARTAMENTO = 'Books') AS "Books"
FROM FUNCIONARIOS;

/*
1000	504	47
*/


SELECT COUNT(*) AS "Nº de Funcionarios",
COUNT(*) FILTER(WHERE SEXO = 'Masculino') AS "Masculino",
COUNT(*) FILTER(WHERE DEPARTAMENTO = 'Books') AS "Books",
COUNT(*) FILTER(WHERE SALARIO > 140000) AS "Salário > 140K"
FROM FUNCIONARIOS;

/*
1000	504	47	111
*/
