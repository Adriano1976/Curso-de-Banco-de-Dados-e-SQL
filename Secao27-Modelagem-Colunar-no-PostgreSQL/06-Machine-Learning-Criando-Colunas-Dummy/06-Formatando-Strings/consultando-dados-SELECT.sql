
-- Listando dados do departamento de funcionarios.
-- Dos 1000 funcionarios existentes, vamos limitar aos 20 primeiros nessa amostra.


SELECT DEPARTAMENTO 
FROM FUNCIONARIOS
LIMIT 20;

/*
"Computadores"
"Esporte"
"Automotivo"
"Joalheria"
"Alimentícios"
"Ferramentas"
"Computadores"
"Brinquedos"
"Joalheria"
"Filmes"
"Joalheria"
"Roupas"
"Bebês"
"Computadores"
"Games"
"Bebês"
"Crianças"
"Lar"
"Eletronicos"
"Filmes"
*/


-- FUNÇÃO DISTINCT - Trazer todos os departamento sem repetição -------------------

SELECT DISTINCT DEPARTAMENTO 
FROM FUNCIONARIOS;

/*
"Roupas"
"Games"
"Música"
"Joalheria"
"Jardim"
"Esporte"
"Calçados"
"Books"
"Computadores"
"Ferramentas"
"Outdoors"
"Industrial"
"Bebês"
"Filmes"
"Lar"
"Crianças"
"Beleza"
"Automotivo"
"Eletronicos"
"Alimentícios"
"Brinquedos"
"Saúde"
*/


-- FUNÇÃO UPPER CASE - Vai trazer todos os dados em maiúsculo ---------------------

SELECT DISTINCT UPPER(DEPARTAMENTO)
FROM FUNCIONARIOS;

/*
"BELEZA"
"BEBÊS"
"INDUSTRIAL"
"COMPUTADORES"
"ALIMENTÍCIOS"
"AUTOMOTIVO"
"CALÇADOS"
"FILMES"
"BRINQUEDOS"
"LAR"
"GAMES"
"FERRAMENTAS"
"BOOKS"
"ELETRONICOS"
"JARDIM"
"CRIANÇAS"
"OUTDOORS"
"MÚSICA"
"ROUPAS"
"SAÚDE"
"JOALHERIA"
"ESPORTE"
*/


-- FUNÇÃO LOWER CASE - Vai trazer todos os dados em maiúsculo ---------------------

SELECT DISTINCT LOWER(DEPARTAMENTO)
FROM FUNCIONARIOS;

/*
"alimentícios"
"jardim"
"esporte"
"música"
"beleza"
"eletronicos"
"ferramentas"
"automotivo"
"computadores"
"brinquedos"
"industrial"
"roupas"
"calçados"
"outdoors"
"bebês"
"saúde"
"games"
"joalheria"
"filmes"
"lar"
"crianças"
"books"
*/


-- CONTATENANDO STRING - Juntando 2 colunas para diminuir ocorrências.

SELECT CARGO || ' - ' || DEPARTAMENTO 
FROM FUNCIONARIOS
LIMIT 20;

/*
"Structural Engineer - Computadores"
"Financial Advisor - Esporte"
"Recruiting Manager - Automotivo"
"Desktop Support Technician - Joalheria"
"Software Engineer III - Alimentícios"
"Executive Secretary - Ferramentas"
"Dental Hygienist - Computadores"
"Safety Technician I - Brinquedos"
"Sales Associate - Joalheria"
"Sales Representative - Filmes"
"Community Outreach Specialist - Joalheria"
"Data Coordiator - Roupas"
"Compensation Analyst - Bebês"
"Software Test Engineer III - Computadores"
"Community Outreach Specialist - Games"
"Web Developer III - Bebês"
"Programmer IV - Crianças"
"Geologist II - Lar"
"VP Sales - Eletronicos"
"VP Quality Control - Filmes"
*/

SELECT UPPER(CARGO || ' - ' || DEPARTAMENTO) AS "Cargo Completo da Empresa"
FROM FUNCIONARIOS
LIMIT 20;

/*
"STRUCTURAL ENGINEER - COMPUTADORES"
"FINANCIAL ADVISOR - ESPORTE"
"RECRUITING MANAGER - AUTOMOTIVO"
"DESKTOP SUPPORT TECHNICIAN - JOALHERIA"
"SOFTWARE ENGINEER III - ALIMENTÍCIOS"
"EXECUTIVE SECRETARY - FERRAMENTAS"
"DENTAL HYGIENIST - COMPUTADORES"
"SAFETY TECHNICIAN I - BRINQUEDOS"
"SALES ASSOCIATE - JOALHERIA"
"SALES REPRESENTATIVE - FILMES"
"COMMUNITY OUTREACH SPECIALIST - JOALHERIA"
"DATA COORDIATOR - ROUPAS"
"COMPENSATION ANALYST - BEBÊS"
"SOFTWARE TEST ENGINEER III - COMPUTADORES"
"COMMUNITY OUTREACH SPECIALIST - GAMES"
"WEB DEVELOPER III - BEBÊS"
"PROGRAMMER IV - CRIANÇAS"
"GEOLOGIST II - LAR"
"VP SALES - ELETRONICOS"
"VP QUALITY CONTROL - FILMES"
*/


-- REMOVER ESPAÇOS --------------------------------------------------------------

SELECT '     FUNCIONARIOS       ';

/*
"     FUNCIONARIOS       " <-- Strings COM espaço.
*/


-- FUNÇÃO LENGTH - Serve para contar a quantidade de caracteres ------------------

SELECT LENGTH('     FUNCIONARIOS       ') AS "QUANT. CARACTERES"; 

/*
24
*/


-- FUNÇÃO TRIN - Serve para retirar os espaços entre os caracteres ---------------

SELECT TRIM('     FUNCIONARIOS       ');

/*
"FUNCIONARIOS"  <-- String SEM espaço.
*/

SELECT LENGTH(TRIM('     FUNCIONARIOS       ')) AS "QUANT. CARACTERES"; 

/*
12
*/
