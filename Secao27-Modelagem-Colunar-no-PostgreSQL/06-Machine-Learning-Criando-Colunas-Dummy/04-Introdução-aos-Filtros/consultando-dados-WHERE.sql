
-- OBS.: Percebam que os filtros funcionam igualmente em todos os bancos, 
-- mas muitos alunos tem essa dúvida.

-- Dos 1000 funcionarios existentes, vamos limitar aos 20 primeiros nessa amostra.



-- Filtros baseados em valores numéricos ---------------------------------------

SELECT NOME, DEPARTAMENTO, SALARIO 
FROM FUNCIONARIOS
WHERE SALARIO > 100000
LIMIT 20;

/*
"Carr"	"Automotivo"	101768
"Phillips"	"Ferramentas"	118497
"James"	"Joalheria"	108657
"Sanchez"	"Filmes"	108093
"Jacobs"	"Joalheria"	121966
"Jacobs"	"Games"	141139
"Medina"	"Bebês"	106659
"Morgan"	"Crianças"	148952
"Day"	"Eletronicos"	109890
"Carr"	"Filmes"	115274
"Alexander"	"Automotivo"	144724
"Chapman"	"Joalheria"	126103
"Kelly"	"Jardim"	144965
"Willis"	"Ferramentas"	113507
"Reed"	"Filmes"	120579
"Bradley"	"Outdoors"	107222
"Watkins"	"Computadores"	125668
"Simmons"	"Filmes"	113857
"Nguyen"	"Automotivo"	108378
"Lawrence"	"Outdoors"	133424
*/


SELECT NOME, DEPARTAMENTO 
FROM FUNCIONARIOS
WHERE SALARIO > 100000
LIMIT 20;

/*
"Carr"	"Automotivo"
"Phillips"	"Ferramentas"
"James"	"Joalheria"
"Sanchez"	"Filmes"
"Jacobs"	"Joalheria"
"Jacobs"	"Games"
"Medina"	"Bebês"
"Morgan"	"Crianças"
"Day"	"Eletronicos"
"Carr"	"Filmes"
"Alexander"	"Automotivo"
"Chapman"	"Joalheria"
"Kelly"	"Jardim"
"Willis"	"Ferramentas"
"Reed"	"Filmes"
"Bradley"	"Outdoors"
"Watkins"	"Computadores"
"Simmons"	"Filmes"
"Nguyen"	"Automotivo"
"Lawrence"	"Outdoors"
*/


-- Filtros baseados em Strings -------------------------------------------------

SELECT NOME, DEPARTAMENTO, SALARIO
FROM FUNCIONARIOS
WHERE DEPARTAMENTO = 'Ferramentas'
LIMIT 20;

/*
"Phillips"	"Ferramentas"	118497
"Willis"	"Ferramentas"	113507
"Watson"	"Ferramentas"	81870
"Daniels"	"Ferramentas"	139061
"Gomez"	"Ferramentas"	103806
"Gutierrez"	"Ferramentas"	58805
"Harvey"	"Ferramentas"	138179
"Thomas"	"Ferramentas"	128239
"Johnston"	"Ferramentas"	87072
"Jenkins"	"Ferramentas"	113599
"Frazier"	"Ferramentas"	88470
"Harris"	"Ferramentas"	148940
"Henry"	"Ferramentas"	95583
"Bishop"	"Ferramentas"	110744
"Ferguson"	"Ferramentas"	119385
"Mason"	"Ferramentas"	120160
"Payne"	"Ferramentas"	94016
"Perez"	"Ferramentas"	73412
"Day"	"Ferramentas"	129890
"Henderson"	"Ferramentas"	101937
*/

SELECT NOME, DEPARTAMENTO, SALARIO
FROM FUNCIONARIOS
WHERE DEPARTAMENTO = 'FERRAMENTAS'
LIMIT 20;

/*
Successfully run. Total query runtime: 533 msec.
0 rows affected.
*/


-- Filtros baseados em multiplos tipos e colunas - considerar OR e AND ---------

SELECT NOME, DEPARTAMENTO, SALARIO
FROM FUNCIONARIOS
WHERE DEPARTAMENTO = 'Ferramentas' AND SALARIO > 100000
LIMIT 20;

/*
"Phillips"	"Ferramentas"	118497
"Willis"	"Ferramentas"	113507
"Daniels"	"Ferramentas"	139061
"Gomez"	"Ferramentas"	103806
"Harvey"	"Ferramentas"	138179
"Thomas"	"Ferramentas"	128239
"Jenkins"	"Ferramentas"	113599
"Harris"	"Ferramentas"	148940
"Bishop"	"Ferramentas"	110744
"Ferguson"	"Ferramentas"	119385
"Mason"	"Ferramentas"	120160
"Day"	"Ferramentas"	129890
"Henderson"	"Ferramentas"	101937
"Cole"	"Ferramentas"	133190
"Webb"	"Ferramentas"	143595
"Williams"	"Ferramentas"	107709
"Gonzalez"	"Ferramentas"	131830
"Williamson"	"Ferramentas"	135695
"Allen"	"Ferramentas"	149586
"Hanson"	"Ferramentas"	113354
*/


-- Filtro baseado em unico tipo e coluna = ATENCAO PARA A REGRA DO 'AND' E 'OR':
-- Em relacionamentos 1 x 1, o filtro 'AND' tratando de uma unica coluna, 
-- sempre dará falso no resultado.

SELECT NOME, DEPARTAMENTO, SALARIO
FROM FUNCIONARIOS
WHERE DEPARTAMENTO = 'Ferramentas' AND DEPARTAMENTO = 'Books'
LIMIT 20;

/*
Successfully run. Total query runtime: 766 msec.
0 rows affected.
*/


-- Filtros baseados em padrão de caracteres -----------------------------------

SELECT DEPARTAMENTO, SUM(SALARIO) AS "Total"
FROM FUNCIONARIOS
WHERE DEPARTAMENTO LIKE 'B%'
GROUP BY DEPARTAMENTO;

/*
"Books"	4459837
"Bebês"	4218724
"Beleza"	5481063
"Brinquedos"	3943674
*/


-- Filtros baseados em padrão de caracteres com mais letras -------------------

SELECT DEPARTAMENTO, SUM(SALARIO) AS "Total"
FROM FUNCIONARIOS
WHERE DEPARTAMENTO LIKE 'Be%'
GROUP BY DEPARTAMENTO;

/*
"Bebês"	"4218724"
"Beleza"	"5481063"
*/


-- Utilizando o caracter coringa no meio da palavra ----------------------------

SELECT DEPARTAMENTO, SUM(SALARIO) AS "Total"
FROM FUNCIONARIOS
WHERE DEPARTAMENTO LIKE 'B%s'
GROUP BY DEPARTAMENTO;

/*
"Books"	4459837
"Bebês"	4218724
"Brinquedos"	3943674
*/


-- Se eu quisesse filtrar o agrupamento pelo salario?
-- Por exemplo, com o salario maior que 49.000.000, como faria esse procedimento?

-- Colunas NÃO agregadas - WHERE
-- Colunas agregadas - HAVING

SELECT DEPARTAMENTO, SUM(SALARIO) AS "Total"
FROM FUNCIONARIOS
WHERE DEPARTAMENTO LIKE 'B%' AND SUM(SALARIO) > 40000000
GROUP BY DEPARTAMENTO;

/*
ERROR:  aggregate functions are not allowed in WHERE
LINE 3: WHERE DEPARTAMENTO LIKE 'B%' AND SUM(SALARIO) > 40000000
                                         ^
SQL state: 42803
Character: 97
*/

SELECT DEPARTAMENTO, SUM(SALARIO) AS "Total"
FROM FUNCIONARIOS
WHERE DEPARTAMENTO LIKE 'B%'
GROUP BY DEPARTAMENTO;

/*
"Books"	4459837
"Bebês"	4218724
"Beleza"	5481063
"Brinquedos"	3943674
*/

SELECT DEPARTAMENTO, SUM(SALARIO) AS "Total"
FROM FUNCIONARIOS
WHERE DEPARTAMENTO LIKE 'B%'
GROUP BY DEPARTAMENTO
HAVING SUM(SALARIO) > 4000000;

/*
"Books"	4459837
"Bebês"	4218724
"Beleza"	5481063
*/


-- Criando uma coluna ao lado da coluna cargo que diga se a pessoa é assistente ou não.

SELECT NOME, (CARGO LIKE '%Assistant%') AS "Assistente?"
FROM FUNCIONARIOS
LIMIT 20;

/*
"Kelley"    false
"Armstrong" false
"Carr"  false
"Murray"    false
"Ellis" false
"Phillips"  false
"Williamson"    false
"Harris"    false
"James" false
"Sanchez"   false
"Jacobs"    false
"Black" false
"Schmidt"   false
"Webb"  false
"Jacobs"    false
"Medina"    false
"Morgan"    false
"Nguyen"    false
"Day"   false
"Carr"  false
"Bryant"    false
"Alexander" true
"Chapman"   false
"Kelly" false
"Stephens"  false
"Porter"    false
"Owens" false
"Scott" false
"Price" false
"Weaver"    false
*/


SELECT NOME, 
CASE WHEN(CARGO LIKE '%Assistant%') = TRUE THEN 1
ELSE 0
END AS "Assistente"
FROM FUNCIONARIOS
LIMIT 30;

/*
"Kelley"    0
"Armstrong" 0
"Carr"  0
"Murray"    0
"Ellis" 0
"Phillips"  0
"Williamson"    0
"Harris"    0
"James" 0
"Sanchez"   0
"Jacobs"    0
"Black" 0
"Schmidt"   0
"Webb"  0
"Jacobs"    0
"Medina"    0
"Morgan"    0
"Nguyen"    0
"Day"   0
"Carr"  0
"Bryant"    0
"Alexander" 1
"Chapman"   0
"Kelly" 0
"Stephens"  0
"Porter"    0
"Owens" 0
"Scott" 0
"Price" 0
"Weaver"    0
*/



