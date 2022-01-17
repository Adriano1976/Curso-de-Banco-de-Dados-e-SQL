-- Se desejarmos saber o nome do funcionarios que tem o menor salário, usamos a sintaxe:

SELECT NOME, CARGO, DEPARTAMENTO, SALARIO FROM FUNCIONARIOS
WHERE SALARIO = (SELECT MIN(SALARIO) FROM FUNCIONARIOS)
GO  

/*
NOME                       CARGO                    DEPARTAMENTO          SALARIO
-------------------------- ------------------------ --------------------- ---------------
Black                      Data Coordiator          Roupas                24298,45

(1 linha(s) afetadas) 
*/

