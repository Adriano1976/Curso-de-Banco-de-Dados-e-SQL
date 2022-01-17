-- Retorna a soma do conteúdo das colunas de uma tabela.

SELECT SUM(SALARIO) AS 'FOLHA SALARIAL MENSAL'
FROM FUNCIONARIOS
GO  

/*
FOLHA SALARIAL MENSAL
---------------------
1240366,60

(1 linha(s) afetadas)
*/


SELECT COUNT(*) AS 'Nª DE FUNCIONARIOS', DEPARTAMENTO, SUM(SALARIO) AS 'SALARIO'
FROM FUNCIONARIOS
GROUP BY DEPARTAMENTO
GO 

/*
Nª DE FUNCIONARIOS DEPARTAMENTO            SALARIO
------------------ ----------------------- ---------------------
1                  Alimentícios            35036,10
2                  Automotivo              135570,60
2                  Bebês                   105537,30
2                  Brinquedos              85272,00
3                  Computadores            106217,10
1                  Crianças                81923,60
1                  Eletronicos             60439,50
1                  Esporte                 39527,95
1                  Ferramentas             65173,35
1                  Games                   77626,45
1                  Industrial              42928,60
1                  Jardim                  79730,75
4                  Joalheria               249492,65
1                  Lar                     51592,20
1                  Roupas                  24298,45

(15 linha(s) afetadas)

*/
 