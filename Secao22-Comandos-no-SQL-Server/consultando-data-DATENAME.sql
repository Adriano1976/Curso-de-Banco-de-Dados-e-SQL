-- DATENAME - TRAZ O NOME DA PARTE DA DATA EM QUESTAO - STRING

SELECT NOME, DATENAME(MONTH, NASCIMENTO) AS 'MES DE NASCIMENTO'
FROM ALUNO
GO  

/*
NOME                           MES DE NASCIMENTO
------------------------------ ------------------------------
ANDRE                          Dezembro
ANA                            Março
RUI                            Julho
JOAO                           Novembro
ANDREIA                        Dezembro
ANAKARLA                       Março
ROBERVAL                       Julho
JOANETE                        Outubro
AMANDA                         Dezembro
ADRIANO                        Março
RAFAEL                         Julho
JHONATA                        Novembro

*/

SELECT NOME, DATENAME (YEAR, NASCIMENTO) AS 'ANO DE NASCIMENTO'
FROM ALUNO
GO  

/*
NOME                           ANO DE NASCIMENTO
------------------------------ ------------------------------
ANDRE                          1981
ANA                            1978
RUI                            1951
JOAO                           2002
ANDREIA                        1985
ANAKARLA                       1979
ROBERVAL                       1981
JOANETE                        2001
AMANDA                         1981
ADRIANO                        1976
RAFAEL                         1991
JHONATA                        2000
*/

SELECT NOME, DATENAME (WEEKDAY, NASCIMENTO) AS 'SEMANA DO NASCIMENTO'
FROM ALUNO  
GO  

/*
NOME                           SEMANA DO NASCIMENTO
------------------------------ ------------------------------
ANDRE                          Quarta-Feira
ANA                            Quinta-Feira
RUI                            Segunda-Feira
JOAO                           Sábado
ANDREIA                        Segunda-Feira
ANAKARLA                       Sexta-Feira
ROBERVAL                       Quinta-Feira
JOANETE                        Terça-Feira
AMANDA                         Quarta-Feira
ADRIANO                        Terça-Feira
RAFAEL                         Terça-Feira
JHONATA                        Quinta-Feira
*/

SELECT 
NOME, 
(DATENAME (DAY, NASCIMENTO) + ' de ' + 
	DATENAME (MONTH, NASCIMENTO) + ' de ' +
	DATENAME (YEAR, NASCIMENTO)) AS "DATA DE NASCIMENTO"
FROM ALUNO
GO

/*
NOME                           DATA DE NASCIMENTO
------------------------------ -------------------------
ANDRE                          9 de Dezembro de 1981
ANA                            9 de Março de 1978
RUI                            9 de Julho de 1951
JOAO                           9 de Novembro de 2002
ANDREIA                        9 de Dezembro de 1985
ANAKARLA                       9 de Março de 1979
ROBERVAL                       9 de Julho de 1981
JOANETE                        9 de Outubro de 2001
AMANDA                         9 de Dezembro de 1981
ADRIANO                        9 de Março de 1976
RAFAEL                         9 de Julho de 1991
JHONATA                        9 de Novembro de 2000
*/
