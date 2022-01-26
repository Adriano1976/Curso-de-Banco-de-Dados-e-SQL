
-- OBS.: Isso não é um projeto de Machine Learning completo. 
-- Você precisa saber em como transformar o seu dataset para o cientista de dados.

-- Dos 1000 funcionarios existentes, vamos limitar somente os primeiros 20 nessa amostra.

SELECT NOME, CARGO, SEXO
FROM FUNCIONARIOS
LIMIT 20;

/*
"Kelley"	"Structural Engineer"	"Feminino"
"Armstrong"	"Financial Advisor"	"Masculino"
"Carr"	"Recruiting Manager"	"Masculino"
"Murray"	"Desktop Support Technician"	"Feminino"
"Ellis"	"Software Engineer III"	"Feminino"
"Phillips"	"Executive Secretary"	"Masculino"
"Williamson"	"Dental Hygienist"	"Masculino"
"Harris"	"Safety Technician I"	"Feminino"
"James"	"Sales Associate"	"Masculino"
"Sanchez"	"Sales Representative"	"Masculino"
"Jacobs"	"Community Outreach Specialist"	"Feminino"
"Black"	"Data Coordiator"	"Masculino"
"Schmidt"	"Compensation Analyst"	"Masculino"
"Webb"	"Software Test Engineer III"	"Feminino"
"Jacobs"	"Community Outreach Specialist"	"Feminino"
"Medina"	"Web Developer III"	"Feminino"
"Morgan"	"Programmer IV"	"Feminino"
"Nguyen"	"Geologist II"	"Masculino"
"Day"	"VP Sales"	"Masculino"
"Carr"	"VP Quality Control"	"Feminino"
*/


-- Utilizando valores booleanos ------------------------------------

SELECT NOME, CARGO, 
(SEXO = 'Masculino') AS Masculino, 
(SEXO = 'Feminino') AS Feminino
FROM FUNCIONARIOS
LIMIT 20;

/*
"Kelley"	"Structural Engineer"	false	true
"Armstrong"	"Financial Advisor"	true	false
"Carr"	"Recruiting Manager"	true	false
"Murray"	"Desktop Support Technician"	false	true
"Ellis"	"Software Engineer III"	false	true
"Phillips"	"Executive Secretary"	true	false
"Williamson"	"Dental Hygienist"	true	false
"Harris"	"Safety Technician I"	false	true
"James"	"Sales Associate"	true	false
"Sanchez"	"Sales Representative"	true	false
"Jacobs"	"Community Outreach Specialist"	false	true
"Black"	"Data Coordiator"	true	false
"Schmidt"	"Compensation Analyst"	true	false
"Webb"	"Software Test Engineer III"	false	true
"Jacobs"	"Community Outreach Specialist"	false	true
"Medina"	"Web Developer III"	false	true
"Morgan"	"Programmer IV"	false	true
"Nguyen"	"Geologist II"	true	false
"Day"	"VP Sales"	true	false
"Carr"	"VP Quality Control"	false	true
*/


-- Mesclando as tecnicas - VARIABLE DUMMY PYTHON ----------------

SELECT NOME, CARGO,
CASE 
	WHEN (SEXO = 'Masculino') = true THEN 1
	ELSE 0
END AS "Masculino",
CASE 
	WHEN (SEXO = 'Feminino') = true THEN 1
	ELSE 0
END AS "Feminino"
FROM FUNCIONARIOS
LIMIT 20;

/*
"Kelley"	"Structural Engineer"	0	1
"Armstrong"	"Financial Advisor"	1	0
"Carr"	"Recruiting Manager"	1	0
"Murray"	"Desktop Support Technician"	0	1
"Ellis"	"Software Engineer III"	0	1
"Phillips"	"Executive Secretary"	1	0
"Williamson"	"Dental Hygienist"	1	0
"Harris"	"Safety Technician I"	0	1
"James"	"Sales Associate"	1	0
"Sanchez"	"Sales Representative"	1	0
"Jacobs"	"Community Outreach Specialist"	0	1
"Black"	"Data Coordiator"	1	0
"Schmidt"	"Compensation Analyst"	1	0
"Webb"	"Software Test Engineer III"	0	1
"Jacobs"	"Community Outreach Specialist"	0	1
"Medina"	"Web Developer III"	0	1
"Morgan"	"Programmer IV"	0	1
"Nguyen"	"Geologist II"	1	0
"Day"	"VP Sales"	1	0
"Carr"	"VP Quality Control"	0	1
*/

