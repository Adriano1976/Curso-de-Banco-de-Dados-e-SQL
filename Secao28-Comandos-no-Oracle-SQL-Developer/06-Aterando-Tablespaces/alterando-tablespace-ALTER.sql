
-- PRIMEIRA PARTE - COLOCAR A TABLESPACE EM OFLINE E TRANSFERIR OS ARQUIVOS FÍSICOS
-- PARA OUTRA PASTA OU HD.

ALTER TABLESPACE RECURSOS_HUMANOS OFFLINE;

/*
TABLESPACE RECURSOS_HUMANOS alterado.
*/



-- AS ATIVIDADES DESSA TABELA NÃO ESTÁ FUNCIONANDO, POIS A TABLESPACE QUE ELA SE 
-- ENCONTRA ESTÁ EM MANUTENÇÃO E PORTANTO, ESTÁ OFFLINE.

SELECT * FROM FUNCIONARIOS;

/*
Erro a partir da linha : 37 no comando -
SELECT * FROM FUNCIONARIOS
Erro na Linha de Comandos : 37 Coluna : 1
Relatório de erros -
Erro de SQL: ORA-00376: o arquivo 5 não pode ser lido neste momento
ORA-01110: 5 do arquivo de dados: 'C:\DATA\RH_01.DBF'
00376. 00000 -  "file %s cannot be read at this time"
*Cause:    attempting to read from a file that is not readable. Most likely
           the file is offline.
*Action:   Check the state of the file. Bring it online
*/



-- AS ATIVIDADES DESSA TABELA ESTÁ FUNCIONANDO, POIS A TABLESPACE QUE ELA 
-- SE ENCONTRA NÃO ESTÁ EM MANUTENÇÃO E PORTANTO, ESTÁ ONLINE.

SELECT * FROM CAMPANHAS;

/*

IDCAMPANHA NOME                          
---------- ------------------------------
       540 Moda Primavera                
       550 Moda Verão                    
       560 Moda Inverno                  
       570 Moda Social                   
       580 Saúde e Bem Estar             
       590 Cama e Banho                  
       600 Crédito Social                
       610 Volta as Aulas                
       620 Semana Santa                  
       630 Moda Esportiva                
       640 Moda Evangelica               

IDCAMPANHA NOME                          
---------- ------------------------------
       650 Outlet                        
       660 Perfumaria                    
       670 Moda Infantil                 
       680 Copa do Mundo                 
       690 Não ao Racismo                
       700 Preconceito                   
       710 Homofobia                     
       720 Cêncer de Mama                
       730 Criança Feliz                 
       740 Moda Práia                    
       750 Natal                         

22 linhas selecionadas. 
*/


-- SEGUNDA PARTE - APONTAR O DICIONARIO DE DADOS

ALTER TABLESPACE RECURSOS_HUMANOS
RENAME DATAFILE 'C:/Data/RH_01.DBF' TO 'C:/Producao/RH_01.DBF';

/*
TABLESPACE RECURSOS_HUMANOS alterado.
*/

ALTER TABLESPACE RECURSOS_HUMANOS
RENAME DATAFILE 'C:/Data/RH_02.DBF' TO 'C:/Producao/RH_02.DBF';

/*
TABLESPACE RECURSOS_HUMANOS alterado.
*/

ALTER TABLESPACE RECURSOS_HUMANOS
RENAME DATAFILE 'C:/Data/RH_03.DBF' TO 'C:/Producao/RH_03.DBF';

/*
TABLESPACE RECURSOS_HUMANOS alterado.
*/



-- TORNANDO A TABLESPACE ONLINE

ALTER TABLESPACE RECURSOS_HUMANOS ONLINE;

/*
TABLESPACE RECURSOS_HUMANOS alterado.
*/


-- AS ATIVIDADES DESSA TABELA ESTÁ FUNCIONANDO, POIS A TABLESPACE QUE ELA 
-- SE ENCONTRA NÃO SOFREU MANUTENÇÃO E PORTANTO, ESTÁ ONLINE.

SELECT * FROM CAMPANHAS;

/*
540	Moda Primavera
550	Moda Verão
560	Moda Inverno
570	Moda Social
580	Saúde e Bem Estar
590	Cama e Banho
600	Crédito Social
610	Volta as Aulas
620	Semana Santa
630	Moda Esportiva
640	Moda Evangelica
650	Outlet
660	Perfumaria
670	Moda Infantil
680	Copa do Mundo
690	Não ao Racismo
700	Preconceito
710	Homofobia
720	Cêncer de Mama
730	Criança Feliz
740	Moda Práia
750	Natal
*/



-- AS ATIVIDADES DESSA TABELA NÃO ESTAVA FUNCIONANDO, POIS A TABLESPACE QUE ELA SE 
-- ENCONTRAVA ESTAVA EM MANUTENÇÃO E AGORA ESTÁ ONLINE.

SELECT * FROM FUNCIONARIOS;

/*
100	Joao Marcelo
110	Mariana Santos
120	Carlos Eduardo
130	Adriano Santos
140	Neide Ferreira
150	Laura Beatriz
160	Maria Ester
170	Sergio Fonseca
180	Rubens Prado
190	Maria Jose
200	Carla Balbino
210	Cristovao Ramos
220	Beatriz Ramos
230	Diego Balbino
240	Maria da Graças
250	Cristiane Brota
260	Messias Bolsonaro
270	Joao Carlos
280	Raulino Galvao
290	Mayara Barbosa
300	Cassius Gama
310	Karla Geovanne
*/
