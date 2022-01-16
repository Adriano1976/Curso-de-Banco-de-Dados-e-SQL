SELECT * FROM PRODUTOS
GO 

/*
IDPRODUTO   NOME                                               CATEGORIA                      PRECO
----------- -------------------------------------------------- ------------------------------ ---------------------------------------
1           LIVRO MODELAGEM                                    LIVROS                         50.00
2           LIVRO BI                                           LIVROS                         80.00
3           CPU ORACLE                                         PROCESSADORES                  560.00
4           LIVRO SQL SERVER                                   LIVROS                         100.00
5           LIVRO PYTHON                                       LIVROS                         50.00
6           LIVRO JAVASCRIPT                                   LIVROS                         80.00
7           SECRETARIA INTELIGENCIA ARTIFICIAL                 ROBOS                          70.00
8           LIVRO ENGENHARIA DE SOFTWARE                       LIVROS                         100.00
9           CURSO DE UML                                       DVD                            50.00
10          LIVRO UX                                           LIVROS                         80.00
11          LIVRO JAVA                                         LIVROS                         70.00
12          LIVRO ROBY                                         LIVROS                         100.00
13          CURSO DE PYTHON                                    CURSOS                         50.00
14          LIVRO HTML                                         LIVROS                         80.00
15          MBA MARKETING DIGITAL                              CURSOS                         70.00
16          LIVRO ENGENHARIA DE REQUISITOS                     LIVROS                         100.00
17          LIVRO SQL SERVER                                   LIVROS                         98.00
18          LIVRO ORACLE                                       LIVROS                         50.00
19          LICENÇA POWERCENTER                                SOFTWARES                      45000.00
20          NOTEBOOK I7                                        COMPUTADORES                   3150.00
21          LIVRO BUSINESS INTELLIGENCE                        LIVROS                         90.00

(21 linha(s) afetadas)
*/

UPDATE PRODUTOS SET PRECO = 145.60
WHERE IDPRODUTO = 1
GO 

/*
(1 linha(s) afetadas)
TRIGGER EXECUTADA COM SUCESSO

(1 linha(s) afetadas)
*/

SELECT * FROM PRODUTOS
GO 

/*
IDPRODUTO   NOME                                               CATEGORIA                      PRECO
----------- -------------------------------------------------- ------------------------------ ---------------------------------------
1           LIVRO MODELAGEM                                    LIVROS                         199.60
2           LIVRO BI                                           LIVROS                         80.00
3           CPU ORACLE                                         PROCESSADORES                  560.00
4           LIVRO SQL SERVER                                   LIVROS                         100.00
5           LIVRO PYTHON                                       LIVROS                         50.00
6           LIVRO JAVASCRIPT                                   LIVROS                         80.00
7           SECRETARIA INTELIGENCIA ARTIFICIAL                 ROBOS                          70.00
8           LIVRO ENGENHARIA DE SOFTWARE                       LIVROS                         100.00
9           CURSO DE UML                                       DVD                            50.00
10          LIVRO UX                                           LIVROS                         80.00
11          LIVRO JAVA                                         LIVROS                         70.00
12          LIVRO ROBY                                         LIVROS                         100.00
13          CURSO DE PYTHON                                    CURSOS                         50.00
14          LIVRO HTML                                         LIVROS                         80.00
15          MBA MARKETING DIGITAL                              CURSOS                         70.00
16          LIVRO ENGENHARIA DE REQUISITOS                     LIVROS                         100.00
17          LIVRO SQL SERVER                                   LIVROS                         98.00
18          LIVRO ORACLE                                       LIVROS                         50.00
19          LICENÇA POWERCENTER                                SOFTWARES                      45000.00
20          NOTEBOOK I7                                        COMPUTADORES                   3150.00
21          LIVRO BUSINESS INTELLIGENCE                        LIVROS                         90.00

(21 linha(s) afetadas)
*/

SELECT * FROM HISTORICO
GO 

/*
IDOPERACAO  PRODUTO                                            CATEGORIA                      PRECOANTIGO                             PRECONOVO                               DATA                    USUARIO                        MENSAGEM
----------- -------------------------------------------------- ------------------------------ --------------------------------------- --------------------------------------- ----------------------- ------------------------------ ----------------------------------------------------------------------------------------------------
1           LIVRO MODELAGEM                                    LIVROS                         199.60                                  199.60                                  2022-01-15 23:52:43.143 sa                             VALOR INSERIDO PELA TRIGGER TRG_ATUALIZA_PRODUTO

(1 linha(s) afetadas)
*/

UPDATE PRODUTOS SET PRECO = 680.50
WHERE IDPRODUTO = 3
GO 

/*
(1 linha(s) afetadas)
TRIGGER EXECUTADA COM SUCESSO

(1 linha(s) afetadas)
*/

UPDATE PRODUTOS SET PRECO = 65.50
WHERE IDPRODUTO = 5
GO 

/*
(1 linha(s) afetadas)
TRIGGER EXECUTADA COM SUCESSO

(1 linha(s) afetadas)
*/

UPDATE PRODUTOS SET PRECO = 840.50
WHERE IDPRODUTO = 7
GO 

/*
(1 linha(s) afetadas)
TRIGGER EXECUTADA COM SUCESSO

(1 linha(s) afetadas)
*/

UPDATE PRODUTOS SET PRECO = 450.00
WHERE IDPRODUTO = 19
GO 

/*
(1 linha(s) afetadas)
TRIGGER EXECUTADA COM SUCESSO

(1 linha(s) afetadas)
*/

UPDATE PRODUTOS SET PRECO = 3270.50
WHERE IDPRODUTO = 20
GO 

/*
(1 linha(s) afetadas)
TRIGGER EXECUTADA COM SUCESSO

(1 linha(s) afetadas)
*/

SELECT * FROM HISTORICO
GO 

/*
IDOPERACAO  PRODUTO                                            CATEGORIA                      PRECOANTIGO                             PRECONOVO                               DATA                    USUARIO                        MENSAGEM
----------- -------------------------------------------------- ------------------------------ --------------------------------------- --------------------------------------- ----------------------- ------------------------------ ----------------------------------------------------------------
1           LIVRO MODELAGEM                                    LIVROS                         199.60                                  199.60                                  2022-01-15 23:52:43.143 sa                             VALOR INSERIDO PELA TRIGGER TRG_ATUALIZA_PRODUTO
2           CPU ORACLE                                         PROCESSADORES                  560.00                                  680.50                                  2022-01-16 00:00:08.887 sa                             VALOR INSERIDO PELA TRIGGER TRG_ATUALIZA_PRODUTO
3           LIVRO PYTHON                                       LIVROS                         50.00                                   65.50                                   2022-01-16 00:00:08.927 sa                             VALOR INSERIDO PELA TRIGGER TRG_ATUALIZA_PRODUTO
4           SECRETARIA INTELIGENCIA ARTIFICIAL                 ROBOS                          70.00                                   840.50                                  2022-01-16 00:00:08.967 sa                             VALOR INSERIDO PELA TRIGGER TRG_ATUALIZA_PRODUTO
5           LICENÇA POWERCENTER                                SOFTWARES                      45000.00                                450.00                                  2022-01-16 00:00:08.987 sa                             VALOR INSERIDO PELA TRIGGER TRG_ATUALIZA_PRODUTO
6           NOTEBOOK I7                                        COMPUTADORES                   3150.00                                 3270.50                                 2022-01-16 00:00:09.000 sa                             VALOR INSERIDO PELA TRIGGER TRG_ATUALIZA_PRODUTO
7           LIVRO PYTHON                                       LIVROS                         65.50                                   165.50                                  2022-01-16 00:10:18.700 as                             VALOR INSERIDO PELA TRIGGER TRG_ATUALIZA_PRODUTO
8           LIVRO PYTHON                                       LIVROS                         65.50                                   165.50                                  2022-01-16 00:10:18.713 as                             VALOR INSERIDO PELA TRIGGER TRG_ATUALIZA_PRECO           
9           LIVRO JAVASCRIP AVANCADO                           LIVROS                         80.00                                   80.00                                   2022-01-16 00:13:42.397 as                             VALOR INSERIDO PELA TRIGGER TRG_ATUALIZA_PRODUTO  

(6 linha(s) afetadas)
*/



