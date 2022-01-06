-- retorna a quantidade de ocorrências diferentes de NULL nas colunas de uma tabela.

SELECT COUNT(SALARIO) FROM FUNCIONARIOS;

/*
+----------------+
| COUNT(SALARIO) |
+----------------+
|            975 |
+----------------+
*/

-- Informe a quantidade de funcionarios matriculados na escola.

SELECT COUNT(*) AS QUANTIDADE_FUNCIONARIO
FROM FUNCIONARIOS;

/*
+------------------------+
| QUANTIDADE_FUNCIONARIO |
+------------------------+
|                    975 |
+------------------------+
*/

-- Informe a quantidade de alunos agrupado entre homens e mulheres.

SELECT COUNT(*) AS QUANTIDADE_FUNCIONARIO, SEXO
FROM FUNCIONARIOS
GROUP BY SEXO;

/*
+------------------------+-----------+
| QUANTIDADE_FUNCIONARIO | SEXO      |
+------------------------+-----------+
|                    491 | Feminino  |
|                    484 | Masculino |
+------------------------+-----------+
*/

-- Informe o sobrenome e quantidade de funcionarios que possui o mesmo sobrenome.

SELECT COUNT(*) AS QUANTIDADE_FUNCIONARIO, NOME
FROM FUNCIONARIOS
GROUP BY NOME
ORDER BY 1;

/*
+------------------------+------------+
| QUANTIDADE_FUNCIONARIO | NOME       |
+------------------------+------------+
|                      1 | Bradley    |
|                      1 | Oliver     |
|                      1 | Hughes     |
|                      1 | Hart       |
|                      1 | Shaw       |
|                      1 | Alvarez    |
|                      1 | Romero     |
|                      1 | Garrett    |
|                      1 | Gray       |
|                      1 | Brown      |
|                      1 | Simpson    |
|                      1 | Taylor     |
|                      1 | Henderson  |
|                      1 | Warren     |
|                      1 | King       |
|                      1 | Wilson     |
|                      1 | Morrison   |
|                      1 | Franklin   |
|                      2 | Carr       |
|                      2 | Porter     |
|                      2 | Stewart    |
|                      2 | Palmer     |
|                      2 | Daniels    |
|                      2 | Gardner    |
|                      2 | Perkins    |
|                      2 | Howell     |
|                      2 | Wells      |
|                      2 | Barnes     |
|                      2 | Hernandez  |
|                      2 | Russell    |
|                      2 | Lawson     |
|                      2 | Fields     |
|                      2 | West       |
|                      2 | Bennett    |
|                      2 | Richardson |
|                      2 | Carter     |
|                      2 | Berry      |
|                      2 | Myers      |
|                      2 | Ray        |
|                      2 | Dunn       |
|                      2 | Campbell   |
|                      2 | Ryan       |
|                      2 | Ward       |
|                      2 | Martin     |
|                      2 | Nelson     |
|                      2 | Kim        |
|                      2 | Cook       |
|                      2 | Ramirez    |
|                      2 | Reid       |
|                      2 | Jackson    |
|                      2 | Wood       |
|                      3 | Black      |
|                      3 | Bryant     |
|                      3 | Scott      |
|                      3 | Willis     |
|                      3 | Smith      |
|                      3 | Coleman    |
|                      3 | Ross       |
|                      3 | Baker      |
|                      3 | Garcia     |
|                      3 | Boyd       |
|                      3 | Sanchez    |
|                      3 | Grant      |
|                      3 | Wallace    |
|                      3 | Hunt       |
|                      3 | Mason      |
|                      3 | Adams      |
|                      3 | Wagner     |
|                      3 | Nichols    |
|                      3 | Montgomery |
|                      3 | Wheeler    |
|                      3 | Henry      |
|                      3 | Fisher     |
|                      3 | Powell     |
|                      3 | Woods      |
|                      3 | Morales    |
|                      3 | Morris     |
|                      3 | Graham     |
|                      3 | Riley      |
|                      3 | Ruiz       |
|                      3 | Duncan     |
|                      3 | Johnston   |
|                      3 | Stone      |
|                      3 | Fuller     |
|                      3 | Lewis      |
|                      3 | Bowman     |
|                      3 | Holmes     |
|                      3 | Hunter     |
|                      3 | Mccoy      |
|                      3 | Perez      |
|                      3 | Mcdonald   |
|                      3 | Bishop     |
|                      3 | Lee        |
|                      3 | Bailey     |
|                      3 | Greene     |
|                      3 | Cox        |
|                      3 | Pierce     |
|                      3 | Jones      |
|                      3 | Hill       |
|                      3 | Collins    |
|                      4 | Harris     |
|                      4 | Schmidt    |
|                      4 | Medina     |
|                      4 | Morgan     |
|                      4 | Nguyen     |
|                      4 | Alexander  |
|                      4 | Chapman    |
|                      4 | Stephens   |
|                      4 | Cruz       |
|                      4 | Hawkins    |
|                      4 | Johnson    |
|                      4 | Crawford   |
|                      4 | Snyder     |
|                      4 | Lane       |
|                      4 | Little     |
|                      4 | Welch      |
|                      4 | Martinez   |
|                      4 | Hamilton   |
|                      4 | Bell       |
|                      4 | Matthews   |
|                      4 | Evans      |
|                      4 | Griffin    |
|                      4 | Harper     |
|                      4 | Gibson     |
|                      4 | Hicks      |
|                      4 | Simmons    |
|                      4 | Diaz       |
|                      4 | Larson     |
|                      4 | Robinson   |
|                      4 | Robertson  |
|                      4 | Burns      |
|                      4 | Stanley    |
|                      4 | Sanders    |
|                      4 | Andrews    |
|                      4 | Stevens    |
|                      4 | Spencer    |
|                      4 | Miller     |
|                      4 | Banks      |
|                      4 | Long       |
|                      4 | Arnold     |
|                      4 | Peters     |
|                      4 | Ramos      |
|                      4 | Payne      |
|                      4 | Olson      |
|                      4 | Perry      |
|                      4 | Hansen     |
|                      4 | Reyes      |
|                      5 | Armstrong  |
|                      5 | Day        |
|                      5 | Weaver     |
|                      5 | Torres     |
|                      5 | Allen      |
|                      5 | Ferguson   |
|                      5 | Lawrence   |
|                      5 | Watson     |
|                      5 | Cooper     |
|                      5 | Rodriguez  |
|                      5 | Vasquez    |
|                      5 | Knight     |
|                      5 | Cunningham |
|                      5 | Gilbert    |
|                      5 | George     |
|                      5 | Gomez      |
|                      5 | Rivera     |
|                      5 | Castillo   |
|                      5 | Sims       |
|                      5 | Chavez     |
|                      5 | Harvey     |
|                      5 | Roberts    |
|                      5 | Sullivan   |
|                      5 | Gordon     |
|                      5 | Anderson   |
|                      5 | Foster     |
|                      5 | Howard     |
|                      5 | Tucker     |
|                      5 | Gonzales   |
|                      5 | White      |
|                      5 | Burke      |
|                      5 | Murphy     |
|                      5 | Clark      |
|                      5 | Edwards    |
|                      5 | Jenkins    |
|                      5 | Wright     |
|                      5 | Garza      |
|                      5 | Frazier    |
|                      5 | Brooks     |
|                      5 | Carpenter  |
|                      5 | Mendoza    |
|                      6 | Murray     |
|                      6 | Ellis      |
|                      6 | James      |
|                      6 | Jacobs     |
|                      6 | Price      |
|                      6 | Kennedy    |
|                      6 | Dixon      |
|                      6 | Reed       |
|                      6 | Young      |
|                      6 | Jordan     |
|                      6 | Mills      |
|                      6 | Thomas     |
|                      6 | Ortiz      |
|                      6 | Fox        |
|                      6 | Elliott    |
|                      6 | Rose       |
|                      6 | Gutierrez  |
|                      6 | Meyer      |
|                      6 | Hayes      |
|                      6 | Lopez      |
|                      6 | Reynolds   |
|                      6 | Butler     |
|                      6 | Peterson   |
|                      6 | Hanson     |
|                      6 | Ford       |
|                      6 | Marshall   |
|                      6 | Hall       |
|                      6 | Turner     |
|                      6 | Richards   |
|                      7 | Kelley     |
|                      7 | Phillips   |
|                      7 | Kelly      |
|                      7 | Owens      |
|                      7 | Watkins    |
|                      7 | Washington |
|                      7 | Freeman    |
|                      7 | Moore      |
|                      7 | Carroll    |
|                      7 | Harrison   |
|                      7 | Gonzalez   |
|                      7 | Walker     |
|                      7 | Lynch      |
|                      7 | Parker     |
|                      7 | Cole       |
|                      8 | Williamson |
|                      8 | Webb       |
|                      8 | Williams   |
|                      8 | Austin     |
|                      8 | Burton     |
|                      8 | Moreno     |
|                      8 | Fowler     |
|                      8 | Hudson     |
|                      8 | Rice       |
+------------------------+------------+
*/

-- Informe a quantidade de funcionarios atualmente agrupado por departamento.

SELECT COUNT(*) AS QUANT_FUNCIONARIO, DEPARTAMENTO
FROM FUNCIONARIOS
GROUP BY DEPARTAMENTO;

/*
+-------------------+---------------+
| QUANT_FUNCIONARIO | DEPARTAMENTO  |
+-------------------+---------------+
|                52 | Computadores  |
|                40 | Esporte       |
|                46 | Automotivo    |
|                36 | Joalheria     |
|                46 | Alimentícios  |
|                39 | Ferramentas   |
|                41 | Brinquedos    |
|                53 | Roupas        |
|                45 | Bebês         |
|                49 | Games         |
|                38 | Crianças      |
|                52 | Lar           |
|                49 | Eletronicos   |
|                47 | Industrial    |
|                47 | Jardim        |
|                47 | Books         |
|                53 | Beleza        |
|                48 | Outdoors      |
|                46 | Saúde         |
|                37 | Música        |
|                43 | Calçados      |
|                21 | Filmes        |
+-------------------+---------------+
*/

-- Informe o nome e a quantidade de funcionarios que possuiem o mesmo nome,
-- desde que hoja pelo menos 6 contatos com o mesmo nome e pela ordem alfabetica.

SELECT NOME, COUNT(*) AS QUANT_FUNCIONARIO
FROM FUNCIONARIOS
GROUP BY NOME
HAVING COUNT(*) > 5
ORDER BY 1;

/*
+------------+-------------------+
| NOME       | QUANT_FUNCIONARIO |
+------------+-------------------+
| Austin     |                 8 |
| Burton     |                 8 |
| Butler     |                 6 |
| Carroll    |                 7 |
| Cole       |                 7 |
| Dixon      |                 6 |
| Elliott    |                 6 |
| Ellis      |                 6 |
| Ford       |                 6 |
| Fowler     |                 8 |
| Fox        |                 6 |
| Freeman    |                 7 |
| Gonzalez   |                 7 |
| Gutierrez  |                 6 |
| Hall       |                 6 |
| Hanson     |                 6 |
| Harrison   |                 7 |
| Hayes      |                 6 |
| Hudson     |                 8 |
| Jacobs     |                 6 |
| James      |                 6 |
| Jordan     |                 6 |
| Kelley     |                 7 |
| Kelly      |                 7 |
| Kennedy    |                 6 |
| Lopez      |                 6 |
| Lynch      |                 7 |
| Marshall   |                 6 |
| Meyer      |                 6 |
| Mills      |                 6 |
| Moore      |                 7 |
| Moreno     |                 8 |
| Murray     |                 6 |
| Ortiz      |                 6 |
| Owens      |                 7 |
| Parker     |                 7 |
| Peterson   |                 6 |
| Phillips   |                 7 |
| Price      |                 6 |
| Reed       |                 6 |
| Reynolds   |                 6 |
| Rice       |                 8 |
| Richards   |                 6 |
| Rose       |                 6 |
| Thomas     |                 6 |
| Turner     |                 6 |
| Walker     |                 7 |
| Washington |                 7 |
| Watkins    |                 7 |
| Webb       |                 8 |
| Williams   |                 8 |
| Williamson |                 8 |
| Young      |                 6 |
+------------+-------------------+
*/

SELECT COUNT(*) AS QUANTIDADE_FUNCIONARIO, CARGO
FROM FUNCIONARIOS
GROUP BY CARGO;

/*
+------------------------+--------------------------------------+
| QUANTIDADE_FUNCIONARIO | CARGO                                |
+------------------------+--------------------------------------+
|                      8 | Structural Engineer                  |
|                     12 | Financial Advisor                    |
|                     10 | Recruiting Manager                   |
|                      7 | Desktop Support Technician           |
|                      3 | Software Engineer III                |
|                     11 | Executive Secretary                  |
|                      7 | Dental Hygienist                     |
|                      3 | Safety Technician I                  |
|                      7 | Sales Associate                      |
|                     10 | Community Outreach Specialist        |
|                      8 | Data Coordiator                      |
|                     15 | Compensation Analyst                 |
|                      1 | Software Test Engineer III           |
|                      5 | Web Developer III                    |
|                      6 | Programmer IV                        |
|                      2 | Geologist II                         |
|                      5 | VP Sales                             |
|                      6 | Software Consultant                  |
|                      9 | Marketing Assistant                  |
|                     11 | Senior Developer                     |
|                      7 | Nurse Practicioner                   |
|                     12 | Business Systems Development Analyst |
|                      9 | Sales Representative                 |
|                      8 | Quality Engineer                     |
|                      4 | Account Representative III           |
|                      5 | Accountant I                         |
|                      7 | Nuclear Power Engineer               |
|                      9 | Librarian                            |
|                      9 | Payment Adjustment Coordinator       |
|                      8 | Nurse                                |
|                      8 | Civil Engineer                       |
|                     13 | Electrical Engineer                  |
|                      6 | Junior Executive                     |
|                     10 | Editor                               |
|                     14 | Senior Editor                        |
|                      7 | Design Engineer                      |
|                      5 | Automation Specialist I              |
|                      7 | VP Marketing                         |
|                      5 | Environmental Tech                   |
|                     10 | VP Accounting                        |
|                      8 | Information Systems Manager          |
|                     15 | Registered Nurse                     |
|                     12 | Occupational Therapist               |
|                      6 | Mechanical Systems Engineer          |
|                      3 | Office Assistant IV                  |
|                      6 | Tax Accountant                       |
|                     12 | Product Engineer                     |
|                      8 | Senior Sales Associate               |
|                      4 | Web Developer I                      |
|                      3 | Database Administrator III           |
|                     11 | Operator                             |
|                      2 | Statistician I                       |
|                      8 | Director of Sales                    |
|                      3 | Programmer III                       |
|                      9 | Senior Financial Analyst             |
|                      2 | Software Test Engineer II            |
|                      9 | Environmental Specialist             |
|                      2 | Accounting Assistant III             |
|                      3 | Systems Administrator II             |
|                     12 | VP Quality Control                   |
|                      4 | Accounting Assistant I               |
|                      2 | Research Assistant IV                |
|                     12 | Chemical Engineer                    |
|                      9 | Senior Cost Accountant               |
|                      2 | Physical Therapy Assistant           |
|                      4 | Statistician IV                      |
|                      5 | Financial Analyst                    |
|                      6 | Quality Control Specialist           |
|                      8 | General Manager                      |
|                      4 | Geologist III                        |
|                     12 | Help Desk Operator                   |
|                     10 | Graphic Designer                     |
|                      5 | Assistant Manager                    |
|                      6 | Speech Pathologist                   |
|                     10 | Technical Writer                     |
|                      6 | Associate Professor                  |
|                      1 | Engineer II                          |
|                     10 | Research Nurse                       |
|                      4 | Systems Administrator III            |
|                      5 | Accountant IV                        |
|                      8 | Pharmacist                           |
|                      5 | Recruiter                            |
|                      5 | Database Administrator I             |
|                      7 | Clinical Specialist                  |
|                      1 | Human Resources Assistant IV         |
|                      4 | Safety Technician IV                 |
|                      8 | Analyst Programmer                   |
|                      7 | Analog Circuit Design manager        |
|                      4 | Software Test Engineer I             |
|                      7 | Administrative Officer               |
|                      5 | Legal Assistant                      |
|                      3 | Human Resources Assistant I          |
|                      6 | Project Manager                      |
|                      4 | Systems Administrator IV             |
|                     11 | VP Product Management                |
|                      2 | Biostatistician IV                   |
|                      1 | Administrative Assistant II          |
|                     11 | Social Worker                        |
|                      1 | Saúde Coach III                      |
|                      2 | Web Designer III                     |
|                      9 | Structural Analysis Engineer         |
|                      3 | Engineer IV                          |
|                      6 | Professor                            |
|                      8 | Geological Engineer                  |
|                      6 | Internal Auditor                     |
|                      9 | Teacher                              |
|                      7 | Assistant Professor                  |
|                      7 | Paralegal                            |
|                      2 | Human Resources Assistant II         |
|                      1 | funcionarios Accountant I            |
|                      3 | Accounting Assistant IV              |
|                      5 | Accountant II                        |
|                      1 | Programmer II                        |
|                      2 | Budget/Accounting Analyst II         |
|                      1 | funcionarios Accountant IV           |
|                      2 | Web Developer II                     |
|                      7 | Help Desk Technician                 |
|                      4 | Marketing Manager                    |
|                      4 | Computer Systems Analyst I           |
|                      5 | Account Executive                    |
|                      2 | Administrative Assistant I           |
|                     10 | GIS Technical Architect              |
|                      8 | Food Chemist                         |
|                      7 | Account Coordinator                  |
|                      3 | Biostatistician III                  |
|                      5 | Saúde Coach I                        |
|                      3 | Engineer I                           |
|                      3 | Engineer III                         |
|                      5 | Accountant III                       |
|                      3 | Human Resources Assistant III        |
|                      4 | Developer IV                         |
|                      9 | funcionarios Scientist               |
|                      2 | Research Assistant I                 |
|                      9 | Cost Accountant                      |
|                      1 | Saúde Coach II                       |
|                      1 | Software Engineer IV                 |
|                     10 | Assistant Media Planner              |
|                      9 | Research Associate                   |
|                      2 | Media Manager I                      |
|                      2 | Administrative Assistant III         |
|                      2 | Office Assistant II                  |
|                      3 | Programmer Analyst III               |
|                      3 | Biostatistician I                    |
|                      2 | Programmer Analyst I                 |
|                      3 | Programmer I                         |
|                      1 | Programmer Analyst II                |
|                     10 | Senior Quality Engineer              |
|                      1 | Computer Systems Analyst III         |
|                      3 | Office Assistant III                 |
|                      4 | Web Designer II                      |
|                      3 | Database Administrator II            |
|                      3 | funcionarios Accountant III          |
|                      1 | Administrative Assistant IV          |
|                      4 | Systems Administrator I              |
|                      2 | funcionarios Accountant II           |
|                      2 | Media Manager III                    |
|                      2 | Software Engineer I                  |
|                      1 | Office Assistant I                   |
|                      5 | Research Assistant II                |
|                      5 | Actuary                              |
|                      4 | Budget/Accounting Analyst III        |
|                      4 | Geologist IV                         |
|                      4 | Account Representative I             |
|                      2 | Web Developer IV                     |
|                      4 | Chief Design Engineer                |
|                      1 | Automation Specialist IV             |
|                      3 | Saúde Coach IV                       |
|                      2 | Accounting Assistant II              |
|                      2 | Software Engineer II                 |
|                      3 | Research Assistant III               |
|                      3 | Software Test Engineer IV            |
|                      1 | Account Representative II            |
|                      2 | Human Resources Manager              |
|                      1 | Developer II                         |
|                      2 | Developer III                        |
|                      1 | Statistician II                      |
|                      1 | Developer I                          |
|                      1 | Biostatistician II                   |
|                      1 | Web Designer I                       |
|                      1 | Media Manager II                     |
|                      3 | Account Representative IV            |
|                      1 | Database Administrator IV            |
|                      1 | Computer Systems Analyst IV          |
|                      2 | Programmer Analyst IV                |
|                      1 | Computer Systems Analyst II          |
+------------------------+--------------------------------------+
*/


SELECT COUNT(*) AS QUANTIDADE_FUNCIONARIO, CARGO
FROM FUNCIONARIOS
GROUP BY CARGO
ORDER BY 1;

/*
+------------------------+--------------------------------------+
| QUANTIDADE_FUNCIONARIO | CARGO                                |
+------------------------+--------------------------------------+
|                      1 | Software Test Engineer III           |
|                      1 | Engineer II                          |
|                      1 | Human Resources Assistant IV         |
|                      1 | Administrative Assistant II          |
|                      1 | Saúde Coach III                      |
|                      1 | funcionarios Accountant I            |
|                      1 | Programmer II                        |
|                      1 | funcionarios Accountant IV           |
|                      1 | Saúde Coach II                       |
|                      1 | Software Engineer IV                 |
|                      1 | Programmer Analyst II                |
|                      1 | Computer Systems Analyst III         |
|                      1 | Administrative Assistant IV          |
|                      1 | Office Assistant I                   |
|                      1 | Automation Specialist IV             |
|                      1 | Account Representative II            |
|                      1 | Developer II                         |
|                      1 | Statistician II                      |
|                      1 | Developer I                          |
|                      1 | Biostatistician II                   |
|                      1 | Web Designer I                       |
|                      1 | Media Manager II                     |
|                      1 | Database Administrator IV            |
|                      1 | Computer Systems Analyst IV          |
|                      1 | Computer Systems Analyst II          |
|                      2 | Geologist II                         |
|                      2 | Statistician I                       |
|                      2 | Software Test Engineer II            |
|                      2 | Accounting Assistant III             |
|                      2 | Research Assistant IV                |
|                      2 | Physical Therapy Assistant           |
|                      2 | Biostatistician IV                   |
|                      2 | Web Designer III                     |
|                      2 | Human Resources Assistant II         |
|                      2 | Budget/Accounting Analyst II         |
|                      2 | Web Developer II                     |
|                      2 | Administrative Assistant I           |
|                      2 | Research Assistant I                 |
|                      2 | Media Manager I                      |
|                      2 | Administrative Assistant III         |
|                      2 | Office Assistant II                  |
|                      2 | Programmer Analyst I                 |
|                      2 | funcionarios Accountant II           |
|                      2 | Media Manager III                    |
|                      2 | Software Engineer I                  |
|                      2 | Web Developer IV                     |
|                      2 | Accounting Assistant II              |
|                      2 | Software Engineer II                 |
|                      2 | Human Resources Manager              |
|                      2 | Developer III                        |
|                      2 | Programmer Analyst IV                |
|                      3 | Software Engineer III                |
|                      3 | Safety Technician I                  |
|                      3 | Office Assistant IV                  |
|                      3 | Database Administrator III           |
|                      3 | Programmer III                       |
|                      3 | Systems Administrator II             |
|                      3 | Human Resources Assistant I          |
|                      3 | Engineer IV                          |
|                      3 | Accounting Assistant IV              |
|                      3 | Biostatistician III                  |
|                      3 | Engineer I                           |
|                      3 | Engineer III                         |
|                      3 | Human Resources Assistant III        |
|                      3 | Programmer Analyst III               |
|                      3 | Biostatistician I                    |
|                      3 | Programmer I                         |
|                      3 | Office Assistant III                 |
|                      3 | Database Administrator II            |
|                      3 | funcionarios Accountant III          |
|                      3 | Saúde Coach IV                       |
|                      3 | Research Assistant III               |
|                      3 | Software Test Engineer IV            |
|                      3 | Account Representative IV            |
|                      4 | Account Representative III           |
|                      4 | Web Developer I                      |
|                      4 | Accounting Assistant I               |
|                      4 | Statistician IV                      |
|                      4 | Geologist III                        |
|                      4 | Systems Administrator III            |
|                      4 | Safety Technician IV                 |
|                      4 | Software Test Engineer I             |
|                      4 | Systems Administrator IV             |
|                      4 | Marketing Manager                    |
|                      4 | Computer Systems Analyst I           |
|                      4 | Developer IV                         |
|                      4 | Web Designer II                      |
|                      4 | Systems Administrator I              |
|                      4 | Budget/Accounting Analyst III        |
|                      4 | Geologist IV                         |
|                      4 | Account Representative I             |
|                      4 | Chief Design Engineer                |
|                      5 | Web Developer III                    |
|                      5 | VP Sales                             |
|                      5 | Accountant I                         |
|                      5 | Automation Specialist I              |
|                      5 | Environmental Tech                   |
|                      5 | Financial Analyst                    |
|                      5 | Assistant Manager                    |
|                      5 | Accountant IV                        |
|                      5 | Recruiter                            |
|                      5 | Database Administrator I             |
|                      5 | Legal Assistant                      |
|                      5 | Accountant II                        |
|                      5 | Account Executive                    |
|                      5 | Saúde Coach I                        |
|                      5 | Accountant III                       |
|                      5 | Research Assistant II                |
|                      5 | Actuary                              |
|                      6 | Programmer IV                        |
|                      6 | Software Consultant                  |
|                      6 | Junior Executive                     |
|                      6 | Mechanical Systems Engineer          |
|                      6 | Tax Accountant                       |
|                      6 | Quality Control Specialist           |
|                      6 | Speech Pathologist                   |
|                      6 | Associate Professor                  |
|                      6 | Project Manager                      |
|                      6 | Professor                            |
|                      6 | Internal Auditor                     |
|                      7 | Desktop Support Technician           |
|                      7 | Dental Hygienist                     |
|                      7 | Sales Associate                      |
|                      7 | Nurse Practicioner                   |
|                      7 | Nuclear Power Engineer               |
|                      7 | Design Engineer                      |
|                      7 | VP Marketing                         |
|                      7 | Clinical Specialist                  |
|                      7 | Analog Circuit Design manager        |
|                      7 | Administrative Officer               |
|                      7 | Assistant Professor                  |
|                      7 | Paralegal                            |
|                      7 | Help Desk Technician                 |
|                      7 | Account Coordinator                  |
|                      8 | Structural Engineer                  |
|                      8 | Data Coordiator                      |
|                      8 | Quality Engineer                     |
|                      8 | Nurse                                |
|                      8 | Civil Engineer                       |
|                      8 | Information Systems Manager          |
|                      8 | Senior Sales Associate               |
|                      8 | Director of Sales                    |
|                      8 | General Manager                      |
|                      8 | Pharmacist                           |
|                      8 | Analyst Programmer                   |
|                      8 | Geological Engineer                  |
|                      8 | Food Chemist                         |
|                      9 | Marketing Assistant                  |
|                      9 | Sales Representative                 |
|                      9 | Librarian                            |
|                      9 | Payment Adjustment Coordinator       |
|                      9 | Senior Financial Analyst             |
|                      9 | Environmental Specialist             |
|                      9 | Senior Cost Accountant               |
|                      9 | Structural Analysis Engineer         |
|                      9 | Teacher                              |
|                      9 | funcionarios Scientist               |
|                      9 | Cost Accountant                      |
|                      9 | Research Associate                   |
|                     10 | Recruiting Manager                   |
|                     10 | Community Outreach Specialist        |
|                     10 | Editor                               |
|                     10 | VP Accounting                        |
|                     10 | Graphic Designer                     |
|                     10 | Technical Writer                     |
|                     10 | Research Nurse                       |
|                     10 | GIS Technical Architect              |
|                     10 | Assistant Media Planner              |
|                     10 | Senior Quality Engineer              |
|                     11 | Executive Secretary                  |
|                     11 | Senior Developer                     |
|                     11 | Operator                             |
|                     11 | VP Product Management                |
|                     11 | Social Worker                        |
|                     12 | Financial Advisor                    |
|                     12 | Business Systems Development Analyst |
|                     12 | Occupational Therapist               |
|                     12 | Product Engineer                     |
|                     12 | VP Quality Control                   |
|                     12 | Chemical Engineer                    |
|                     12 | Help Desk Operator                   |
|                     13 | Electrical Engineer                  |
|                     14 | Senior Editor                        |
|                     15 | Compensation Analyst                 |
|                     15 | Registered Nurse                     |
+------------------------+--------------------------------------+
*/

