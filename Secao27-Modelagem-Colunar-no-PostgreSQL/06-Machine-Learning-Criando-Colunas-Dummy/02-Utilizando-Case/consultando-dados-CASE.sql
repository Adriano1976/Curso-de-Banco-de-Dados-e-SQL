

-- OBS.: Isso não é um projeto de Machine Learning completo. 
-- Você precisa saber em como transformar o seu dataset para o cientista de dados.

-- Dos 1000 funcionarios existentes, vamos limitar somente os primeiros 20 nessa amostra.


SELECT NOME, CARGO,
CASE 
	WHEN CARGO = 'Financial Advisor' THEN 'Condicao 01'
	WHEN CARGO = 'Structural Engineer' THEN 'Condicao 02'
	WHEN CARGO = 'Executive Secretary' THEN 'Condicao 03'
	WHEN CARGO = 'Sales Associate' THEN 'Condicao 04'
	ELSE 'OUTRAS CONDICOES'
END AS "CONDICOES" 
FROM FUNCIONARIOS
LIMIT 20;

/*
"Kelley"	"Structural Engineer"	"Condicao 02"
"Armstrong"	"Financial Advisor"	"Condicao 01"
"Carr"	"Recruiting Manager"	"OUTRAS CONDICOES"
"Murray"	"Desktop Support Technician"	"OUTRAS CONDICOES"
"Ellis"	"Software Engineer III"	"OUTRAS CONDICOES"
"Phillips"	"Executive Secretary"	"Condicao 03"
"Williamson"	"Dental Hygienist"	"OUTRAS CONDICOES"
"Harris"	"Safety Technician I"	"OUTRAS CONDICOES"
"James"	"Sales Associate"	"Condicao 04"
"Sanchez"	"Sales Representative"	"OUTRAS CONDICOES"
"Jacobs"	"Community Outreach Specialist"	"OUTRAS CONDICOES"
"Black"	"Data Coordiator"	"OUTRAS CONDICOES"
"Schmidt"	"Compensation Analyst"	"OUTRAS CONDICOES"
"Webb"	"Software Test Engineer III"	"OUTRAS CONDICOES"
"Jacobs"	"Community Outreach Specialist"	"OUTRAS CONDICOES"
"Medina"	"Web Developer III"	"OUTRAS CONDICOES"
"Morgan"	"Programmer IV"	"OUTRAS CONDICOES"
"Nguyen"	"Geologist II"	"OUTRAS CONDICOES"
"Day"	"VP Sales"	"OUTRAS CONDICOES"
"Carr"	"VP Quality Control"	"OUTRAS CONDICOES"
*/


SELECT NOME AS "NOME",
CASE 
	WHEN SEXO = 'Masculino' THEN 'M'
	ELSE 'F'
END AS "SEXO"
FROM FUNCIONARIOS
LIMIT 20;

/*
"Kelley"	"F"
"Armstrong"	"M"
"Carr"	"M"
"Murray"	"F"
"Ellis"	"F"
"Phillips"	"M"
"Williamson"	"M"
"Harris"	"F"
"James"	"M"
"Sanchez"	"M"
"Jacobs"	"F"
"Black"	"M"
"Schmidt"	"M"
"Webb"	"F"
"Jacobs"	"F"
"Medina"	"F"
"Morgan"	"F"
"Nguyen"	"M"
"Day"	"M"
"Carr"	"F"
*/



