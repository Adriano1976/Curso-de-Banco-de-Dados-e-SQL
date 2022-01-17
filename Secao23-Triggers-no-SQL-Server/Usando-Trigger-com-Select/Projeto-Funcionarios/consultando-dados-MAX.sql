-- Se desejarmos saber o nome do funcionarios que tem o maior salário, usamos a sintaxe:

SELECT NOME, CARGO, DEPARTAMENTO, SALARIO 
FROM FUNCIONARIOS
WHERE SALARIO = (SELECT MAX(SALARIO) FROM FUNCIONARIOS)
GO

/*
NOME                     CARGO                     DEPARTAMENTO           SALARIO
------------------------ ------------------------- ---------------------- ------------
Morgan                   Programmer IV             Crianças               81923,60

(1 linha(s) afetadas)
*/

