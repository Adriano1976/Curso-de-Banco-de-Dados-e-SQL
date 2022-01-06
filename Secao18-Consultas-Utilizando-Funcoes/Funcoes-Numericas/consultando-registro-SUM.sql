-- Retorna a soma do conteúdo das colunas de uma tabela.

SELECT SUM(SALARIO) AS FOLHA_SALARIAL_TOTAL
FROM FUNCIONARIOS;

/*
+----------------------+
| FOLHA_SALARIAL_TOTAL |
+----------------------+
|          94824358.00 |
+----------------------+
*/

SELECT TRUNCATE(SUM(SALARIO),2) AS FOLHA_SALARIAL_TOTAL
FROM FUNCIONARIOS;

/*
+----------------------+
| FOLHA_SALARIAL_TOTAL |
+----------------------+
|          94824358.00 |
+----------------------+
*/

SELECT DEPARTAMENTO, SUM(SALARIO) AS SALARIO
FROM FUNCIONARIOS
GROUP BY DEPARTAMENTO;

/*
+---------------+------------+
| DEPARTAMENTO  | SALARIO    |
+---------------+------------+
| Computadores  | 5152963.00 |
| Esporte       | 3756041.00 |
| Automotivo    | 4584268.00 |
| Joalheria     | 3164680.00 |
| Alimentícios  | 4651241.00 |
| Ferramentas   | 4095808.00 |
| Brinquedos    | 3943674.00 |
| Roupas        | 5037890.00 |
| Bebês         | 4218724.00 |
| Games         | 5090304.00 |
| Crianças      | 3543027.00 |
| Lar           | 4822205.00 |
| Eletronicos   | 4489141.00 |
| Industrial    | 4366340.00 |
| Jardim        | 4792085.00 |
| Books         | 4459837.00 |
| Beleza        | 5481063.00 |
| Outdoors      | 5378660.00 |
| Saúde         | 4552880.00 |
| Música        | 3274767.00 |
| Calçados      | 3968118.00 |
| Filmes        | 2000642.00 |
+---------------+------------+
*/
