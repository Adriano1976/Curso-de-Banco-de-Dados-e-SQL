UPDATE FUNCIONARIOS SET SALARIO = SALARIO * 1.1
GO

/*
IDHIST      IDFUNC      NOME               DEPARTAMENTO          CARGO                                          ANTI_SAL              NOVO_SAL              DATA
----------- ----------- ------------------ --------------------- ---------------------------------------------- --------------------- --------------------- -----------------------
1           26          Stephens           Brinquedos            Business Systems Development Analyst           70613,00              77674,30              2022-01-17 12:33:44.633
2           25          Kelly              Jardim                Nurse Practicioner                             144965,00             159461,50             2022-01-17 12:33:44.633
3           24          Chapman            Joalheria             Senior Developer                               126103,00             138713,30             2022-01-17 12:33:44.633
4           23          Alexander          Automotivo            Marketing Assistant                            144724,00             159196,40             2022-01-17 12:33:44.633
5           22          Bryant             Industrial            Software Consultant                            78052,00              85857,20              2022-01-17 12:33:44.633
6           21          Day                Eletronicos           VP Sales                                       109890,00             120879,00             2022-01-17 12:33:44.633
7           20          Nguyen             Lar                   Geologist II                                   93804,00              103184,40             2022-01-17 12:33:44.633
8           19          Morgan             Crianças              Programmer IV                                  148952,00             163847,20             2022-01-17 12:33:44.633
9           18          Medina             Bebês                 Web Developer III                              106659,00             117324,90             2022-01-17 12:33:44.633
10          17          Jacobs             Games                 Community Outreach Specialist                  141139,00             155252,90             2022-01-17 12:33:44.633
11          16          Webb               Computadores          Software Test Engineer III                     59763,00              65739,30              2022-01-17 12:33:44.633
12          15          Schmidt            Bebês                 Compensation Analyst                           85227,00              93749,70              2022-01-17 12:33:44.633
13          14          Black              Roupas                Data Coordiator                                44179,00              48596,90              2022-01-17 12:33:44.633
14          13          Jacobs             Joalheria             Community Outreach Specialist                  121966,00             134162,60             2022-01-17 12:33:44.633
15          12          James              Joalheria             Sales Associate                                108657,00             119522,70             2022-01-17 12:33:44.633
16          11          Harris             Brinquedos            Safety Technician I                            84427,00              92869,70              2022-01-17 12:33:44.633
17          10          Williamson         Computadores          Dental Hygienist                               65889,00              72477,90              2022-01-17 12:33:44.633
18          9           Phillips           Ferramentas           Executive Secretary                            118497,00             130346,70             2022-01-17 12:33:44.633
19          8           Ellis              Alimentícios          Software Engineer III                          63702,00              70072,20              2022-01-17 12:33:44.633
20          7           Murray             Joalheria             Desktop Support Technician                     96897,00              106586,70             2022-01-17 12:33:44.633
21          6           Carr               Automotivo            Recruiting Manager                             101768,00             111944,80             2022-01-17 12:33:44.633
22          5           Armstrong          Esporte               Financial Advisor                              71869,00              79055,90              2022-01-17 12:33:44.633
23          1           Kelley             Computadores          Structural Engineer                            67470,00              74217,00              2022-01-17 12:33:44.633

(23 linha(s) afetadas)

*/


UPDATE FUNCIONARIOS SET SALARIO = SALARIO * 0.5
GO

/*
IDHIST      IDFUNC      NOME                    DEPARTAMENTO                       CARGO                                           ANTI_SAL              NOVO_SAL              DATA                    USUARIO
----------- ----------- ----------------------- ---------------------------------- ----------------------------------------------- --------------------- --------------------- ----------------------- ----------
1           26          Stephens                Brinquedos                         Business Systems Development Analyst            70613,00              77674,30              2022-01-17 12:33:44.633 NULL
2           25          Kelly                   Jardim                             Nurse Practicioner                              144965,00             159461,50             2022-01-17 12:33:44.633 NULL
3           24          Chapman                 Joalheria                          Senior Developer                                126103,00             138713,30             2022-01-17 12:33:44.633 NULL
4           23          Alexander               Automotivo                         Marketing Assistant                             144724,00             159196,40             2022-01-17 12:33:44.633 NULL
5           22          Bryant                  Industrial                         Software Consultant                             78052,00              85857,20              2022-01-17 12:33:44.633 NULL
6           21          Day                     Eletronicos                        VP Sales                                        109890,00             120879,00             2022-01-17 12:33:44.633 NULL
7           20          Nguyen                  Lar                                Geologist II                                    93804,00              103184,40             2022-01-17 12:33:44.633 NULL
8           19          Morgan                  Crianças                           Programmer IV                                   148952,00             163847,20             2022-01-17 12:33:44.633 NULL
9           18          Medina                  Bebês                              Web Developer III                               106659,00             117324,90             2022-01-17 12:33:44.633 NULL
10          17          Jacobs                  Games                              Community Outreach Specialist                   141139,00             155252,90             2022-01-17 12:33:44.633 NULL
11          16          Webb                    Computadores                       Software Test Engineer III                      59763,00              65739,30              2022-01-17 12:33:44.633 NULL
12          15          Schmidt                 Bebês                              Compensation Analyst                            85227,00              93749,70              2022-01-17 12:33:44.633 NULL
13          14          Black                   Roupas                             Data Coordiator                                 44179,00              48596,90              2022-01-17 12:33:44.633 NULL
14          13          Jacobs                  Joalheria                          Community Outreach Specialist                   121966,00             134162,60             2022-01-17 12:33:44.633 NULL
15          12          James                   Joalheria                          Sales Associate                                 108657,00             119522,70             2022-01-17 12:33:44.633 NULL
16          11          Harris                  Brinquedos                         Safety Technician I                             84427,00              92869,70              2022-01-17 12:33:44.633 NULL
17          10          Williamson              Computadores                       Dental Hygienist                                65889,00              72477,90              2022-01-17 12:33:44.633 NULL
18          9           Phillips                Ferramentas                        Executive Secretary                             118497,00             130346,70             2022-01-17 12:33:44.633 NULL
19          8           Ellis                   Alimentícios                       Software Engineer III                           63702,00              70072,20              2022-01-17 12:33:44.633 NULL
20          7           Murray                  Joalheria                          Desktop Support Technician                      96897,00              106586,70             2022-01-17 12:33:44.633 NULL
21          6           Carr                    Automotivo                         Recruiting Manager                              101768,00             111944,80             2022-01-17 12:33:44.633 NULL
22          5           Armstrong               Esporte                            Financial Advisor                               71869,00              79055,90              2022-01-17 12:33:44.633 NULL
23          1           Kelley                  Computadores                       Structural Engineer                             67470,00              74217,00              2022-01-17 12:33:44.633 NULL
24          26          Stephens                Brinquedos                         Business Systems Development Analyst            77674,30              38837,15              2022-01-17 12:56:31.520 sa
25          25          Kelly                   Jardim                             Nurse Practicioner                              159461,50             79730,75              2022-01-17 12:56:31.520 sa
26          24          Chapman                 Joalheria                          Senior Developer                                138713,30             69356,65              2022-01-17 12:56:31.520 sa
27          23          Alexander               Automotivo                         Marketing Assistant                             159196,40             79598,20              2022-01-17 12:56:31.520 sa
28          22          Bryant                  Industrial                         Software Consultant                             85857,20              42928,60              2022-01-17 12:56:31.520 sa
29          21          Day                     Eletronicos                        VP Sales                                        120879,00             60439,50              2022-01-17 12:56:31.520 sa
30          20          Nguyen                  Lar                                Geologist II                                    103184,40             51592,20              2022-01-17 12:56:31.520 sa
31          19          Morgan                  Crianças                           Programmer IV                                   163847,20             81923,60              2022-01-17 12:56:31.520 sa
32          18          Medina                  Bebês                              Web Developer III                               117324,90             58662,45              2022-01-17 12:56:31.520 sa
33          17          Jacobs                  Games                              Community Outreach Specialist                   155252,90             77626,45              2022-01-17 12:56:31.520 sa
34          16          Webb                    Computadores                       Software Test Engineer III                      65739,30              32869,65              2022-01-17 12:56:31.520 sa
35          15          Schmidt                 Bebês                              Compensation Analyst                            93749,70              46874,85              2022-01-17 12:56:31.520 sa
36          14          Black                   Roupas                             Data Coordiator                                 48596,90              24298,45              2022-01-17 12:56:31.520 sa
37          13          Jacobs                  Joalheria                          Community Outreach Specialist                   134162,60             67081,30              2022-01-17 12:56:31.520 sa
38          12          James                   Joalheria                          Sales Associate                                 119522,70             59761,35              2022-01-17 12:56:31.520 sa
39          11          Harris                  Brinquedos                         Safety Technician I                             92869,70              46434,85              2022-01-17 12:56:31.520 sa
40          10          Williamson              Computadores                       Dental Hygienist                                72477,90              36238,95              2022-01-17 12:56:31.520 sa
41          9           Phillips                Ferramentas                        Executive Secretary                             130346,70             65173,35              2022-01-17 12:56:31.520 sa
42          8           Ellis                   Alimentícios                       Software Engineer III                           70072,20              35036,10              2022-01-17 12:56:31.520 sa
43          7           Murray                  Joalheria                          Desktop Support Technician                      106586,70             53293,35              2022-01-17 12:56:31.520 sa
44          6           Carr                    Automotivo                         Recruiting Manager                              111944,80             55972,40              2022-01-17 12:56:31.520 sa
45          5           Armstrong               Esporte                            Financial Advisor                               79055,90              39527,95              2022-01-17 12:56:31.520 sa
46          1           Kelley                  Computadores                       Structural Engineer                             74217,00              37108,50              2022-01-17 12:56:31.520 sa

(46 linha(s) afetadas)
*/


UPDATE FUNCIONARIOS SET SALARIO = 9000.00
WHERE IDFUNC = 1
GO

/*
(1 linha(s) afetadas)
Mensagem 50000, Nível 16, Estado 1, Procedimento TGR_RANGE, Linha 66
SALARIO MAIOR QUE O TETO
Mensagem 3609, Nível 16, Estado 1, Linha 44
A transação foi encerrada no gatilho. O lote foi anulado.
*/


UPDATE FUNCIONARIOS SET SALARIO = 1000.00
WHERE IDFUNC = 1
GO  

/*
(1 linha(s) afetadas)
Mensagem 50000, Nível 16, Estado 1, Procedimento TGR_RANGE, Linha 64
SALARIO MENOR QUE O PISO
Mensagem 3609, Nível 16, Estado 1, Linha 48
A transação foi encerrada no gatilho. O lote foi anulado.
*/