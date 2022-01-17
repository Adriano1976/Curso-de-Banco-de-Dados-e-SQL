-- retorna a quantidade de ocorrências diferentes de NULL nas colunas de uma tabela.

SELECT COUNT(SALARIO) AS 'Nª DE FUNCIONARIOS'
FROM FUNCIONARIOS
GO  

/*
Nª DE FUNCIONARIOS
------------------
23

(1 linha(s) afetadas)
*/


-- Informe a quantidade de alunos agrupado entre homens e mulheres.

SELECT COUNT(*) AS 'Nª DE FUNCIONARIOS', SEXO
FROM FUNCIONARIOS
GROUP BY SEXO
GO 

/*
Nª DE FUNCIONARIOS SEXO
------------------ ----------
11                 Feminino
12                 Masculino

(2 linha(s) afetadas)
*/

-- Informe o sobrenome e quantidade de funcionarios que possui o mesmo sobrenome.

SELECT COUNT(*) AS 'Nª DE FUNCIONARIOS', NOME
FROM FUNCIONARIOS
GROUP BY NOME
ORDER BY 1
GO  

/*
Nª DE FUNCIONARIOS NOME
------------------ -----------------
1                  Alexander
1                  Armstrong
1                  Black
1                  Bryant
1                  Carr
1                  Chapman
1                  Day
1                  Ellis
1                  Harris
1                  James
1                  Kelley
1                  Kelly
1                  Medina
1                  Morgan
1                  Murray
1                  Nguyen
1                  Phillips
1                  Schmidt
1                  Stephens
1                  Webb
1                  Williamson
2                  Jacobs

(22 linha(s) afetadas)
*/

-- Informe a quantidade de funcionarios atualmente agrupado por departamento.

SELECT COUNT(*) AS 'Nª DE FUNCIONARIOS', DEPARTAMENTO
FROM FUNCIONARIOS
GROUP BY DEPARTAMENTO
GO  

/*
Nª DE FUNCIONARIOS DEPARTAMENTO
------------------ -----------------------
1                  Alimentícios
2                  Automotivo
2                  Bebês
2                  Brinquedos
3                  Computadores
1                  Crianças
1                  Eletronicos
1                  Esporte
1                  Ferramentas
1                  Games
1                  Industrial
1                  Jardim
4                  Joalheria
1                  Lar
1                  Roupas

(15 linha(s) afetadas)
*/


-- Informe o nome e a quantidade de funcionarios que possuiem o mesmo nome,
-- desde que hoja pelo menos 2 contatos com o mesmo nome e pela ordem alfabetica.

SELECT NOME, COUNT(*) AS 'Nª DE FUNCIONARIOS'
FROM FUNCIONARIOS
GROUP BY NOME
HAVING COUNT(*) > 5
ORDER BY 1
GO  

/*
NOME                                     Nª DE FUNCIONARIOS
---------------------------------------- ------------------
Jacobs                                   2

(1 linha(s) afetadas)
*/


-- Informe a quantidade de funcionarios por cargo que a empresa possui.

SELECT COUNT(*) AS 'Nª DE FUNCIONARIOS', CARGO
FROM FUNCIONARIOS
GROUP BY CARGO
GO  

/*
Nª DE FUNCIONARIOS CARGO
------------------ ---------------------------------------------------------
1                  Business Systems Development Analyst
2                  Community Outreach Specialist
1                  Compensation Analyst
1                  Data Coordiator
1                  Dental Hygienist
1                  Desktop Support Technician
1                  Executive Secretary
1                  Financial Advisor
1                  Geologist II
1                  Marketing Assistant
1                  Nurse Practicioner
1                  Programmer IV
1                  Recruiting Manager
1                  Safety Technician I
1                  Sales Associate
1                  Senior Developer
1                  Software Consultant
1                  Software Engineer III
1                  Software Test Engineer III
1                  Structural Engineer
1                  VP Sales
1                  Web Developer III

(22 linha(s) afetadas)
*/
