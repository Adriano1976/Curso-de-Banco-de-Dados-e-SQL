-- Retorna o valor máximo do conteúdo das colunas de uma tabela.

SELECT MAX(SALARIO) AS MAIOR_SALARIO
FROM FUNCIONARIOS;

/*
+---------------+
| MAIOR_SALARIO |
+---------------+
|     149929.00 |
+---------------+
*/

-- Se desejarmos saber o nome do funcionarios, por orem e por departamento,
-- que tem o maior salário, usamos a seguinte sintaxe:

SELECT NOME, CARGO, DEPARTAMENTO, MAX(SALARIO) AS MAIOR_SALARIO
FROM FUNCIONARIOS
GROUP BY DEPARTAMENTO
ORDER BY 1;

/*
+-----------+--------------------------------+---------------+---------------+
| NOME      | CARGO                          | DEPARTAMENTO  | MAIOR_SALARIO |
+-----------+--------------------------------+---------------+---------------+
| Armstrong | Financial Advisor              | Esporte       |     147166.00 |
| Black     | Data Coordiator                | Roupas        |     148408.00 |
| Bradley   | Payment Adjustment Coordinator | Outdoors      |     148906.00 |
| Bryant    | Software Consultant            | Industrial    |     148816.00 |
| Carr      | Recruiting Manager             | Automotivo    |     146167.00 |
| Day       | VP Sales                       | Eletronicos   |     149597.00 |
| Ellis     | Software Engineer III          | Alimentícios  |     149929.00 |
| Garcia    | Registered Nurse               | Saúde         |     145962.00 |
| Gonzales  | Clinical Specialist            | Filmes        |     142840.00 |
| Harris    | Safety Technician I            | Brinquedos    |     149835.00 |
| Jacobs    | Community Outreach Specialist  | Games         |     149221.00 |
| Kelley    | Structural Engineer            | Computadores  |     149336.00 |
| Kelly     | Nurse Practicioner             | Jardim        |     148860.00 |
| Knight    | Statistician I                 | Música        |     144608.00 |
| Morgan    | Programmer IV                  | Crianças      |     149351.00 |
| Murray    | Desktop Support Technician     | Joalheria     |     149114.00 |
| Nguyen    | Geologist II                   | Lar           |     149598.00 |
| Phillips  | Executive Secretary            | Ferramentas   |     149586.00 |
| Schmidt   | Compensation Analyst           | Bebês         |     148687.00 |
| Scott     | Sales Representative           | Books         |     146745.00 |
| Weaver    | Account Representative III     | Beleza        |     149099.00 |
| Young     | Quality Control Specialist     | Calçados      |     147739.00 |
+-----------+--------------------------------+---------------+---------------+
*/

-- EXEMPLO DE UMA QUERY FEITA CORRETA QUE RESULTOU EM UMA INFORMACAO VERDADEIRA.

-- Se desejarmos saber o nome do funcionarios que tem o maior salário, usamos a sintaxe:

SELECT NOME, CARGO, DEPARTAMENTO, SALARIO FROM FUNCIONARIOS
WHERE SALARIO = (SELECT MAX(SALARIO) FROM FUNCIONARIOS);

/*
+---------+-------------------+---------------+-----------+
| NOME    | CARGO             | DEPARTAMENTO  | SALARIO   |
+---------+-------------------+---------------+-----------+
| Stanley | Director of Sales | Alimentícios  | 149929.00 |
+---------+-------------------+---------------+-----------+
*/

-- Se desejarmos saber o nome do funcionarios que tem o maior salário, usamos a sintaxe:

SELECT IDFUNCIONARIO, NOME, CARGO, DEPARTAMENTO, SALARIO FROM FUNCIONARIOS
WHERE SALARIO = (SELECT MAX(SALARIO) FROM FUNCIONARIOS);

/*
+---------------+---------+-------------------+---------------+-----------+
| IDFUNCIONARIO | NOME    | CARGO             | DEPARTAMENTO  | SALARIO   |
+---------------+---------+-------------------+---------------+-----------+
|           862 | Stanley | Director of Sales | Alimentícios  | 149929.00 |
+---------------+---------+-------------------+---------------+-----------+
*/