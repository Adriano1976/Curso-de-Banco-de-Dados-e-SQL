-- Retorna o valor mínimo do conteúdo das colunas de uma tabela.


-- Se desejarmos saber o nome do funcionarios que tem o menor salário, usamos a sintaxe:

SELECT NOME, CARGO, DEPARTAMENTO, SALARIO FROM FUNCIONARIOS
WHERE SALARIO = (SELECT MIN(SALARIO) FROM FUNCIONARIOS);

/*
+------+--------------------------------+--------------+----------+
| NOME | CARGO                          | DEPARTAMENTO | SALARIO  |
+------+--------------------------------+--------------+----------+
| Long | Payment Adjustment Coordinator | Brinquedos   | 40138.00 |
+------+--------------------------------+--------------+----------+
*/

-- Se desejarmos saber o nome do funcionarios que tem o menor salário, usamos a sintaxe:

SELECT IDFUNCIONARIO, NOME, CARGO, DEPARTAMENTO, SALARIO FROM FUNCIONARIOS
WHERE SALARIO = (SELECT MIN(SALARIO) FROM FUNCIONARIOS);

/*
+---------------+------+--------------------------------+--------------+----------+
| IDFUNCIONARIO | NOME | CARGO                          | DEPARTAMENTO | SALARIO  |
+---------------+------+--------------------------------+--------------+----------+
|           343 | Long | Payment Adjustment Coordinator | Brinquedos   | 40138.00 |
+---------------+------+--------------------------------+--------------+----------+
*/