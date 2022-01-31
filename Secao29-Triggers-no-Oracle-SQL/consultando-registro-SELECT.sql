
-- DADOS CONSULTADOS ANTES DO AUMENTO DO SALÁRIO.

SELECT * FROM ALUNO;

/*
   IDALUNO NOME                           EMAIL                             SALARIO
---------- ------------------------------ ------------------------------ ----------
         1 Joao Marcelo                   joao@gmail.com                    1394,79
         2 Carlos Eduardo                 carlo@gmail                       2336,26
         3 Adriano Santos                 adrianosantos@gmail               1744,09
         4 Laura Beatriz                  laura_bee@gmail.com               2569,31
         5 Maria Ester                    ester@gmail.com                   2557,12
         6 Sergio Fonseca                 folsong9@hotmail.com              2266,77
         7 Rubens Prado                   Rubensprado@hotmail.com           1744,13
         8 Maria Jose                     mariaj@gmail.com                   2592,1
         9 Carla Balbino                  carlabal@gmail.com                1278,05
        10 Cristovao Ramos                Cristovaoramos@gmail.com          1743,74
        11 Beatriz Ramos                  beatrizramos@gmail.com            2440,88

   IDALUNO NOME                           EMAIL                             SALARIO
---------- ------------------------------ ------------------------------ ----------
        12 Diego Balbino                  diegobalbino@hotmail.com          2324,65
        13 Maria da Graças                mariagraca@gmail.com                 2441
        14 Cristiane Brota                brotacrish@gmail.com              2557,12
        15 Messias Bolsonaro              bolsonaro@gmail.com               2557,36
        16 Joao Carlos                    carlosjoao@gmail.com              2568,73
        17 Raulino Galvao                 raustinpp@gmail.com               2789,57
        18 Mayara Barbosa                 mayarabarbosa@gmail.com           2734,44
        19 Cassius Gama                   cassiusgama@gmail.com             3603,42
        20 Karla Geovanne                 geovannek@gmail.com               1162,32
        21 Mariana Santos                 mariana@gmail.com                  2905,8
        22 Neide Ferreira                 neidefferreira@hotmail.com        4707,41

   IDALUNO NOME                           EMAIL                             SALARIO
---------- ------------------------------ ------------------------------ ----------
        45 Oliver Galvao                  Olivertinpp@gmail.com                2400
        46 Marcos Barbosa                 marcosbarbosa@gmail.com           2352,55

24 linhas selecionadas. 

*/

CALL AUMENTO(3,100); -- ID do aluno Adriano Santos

/*
Call concluído.
*/


-- DADOS CONSULTADOS DEPOIS DO AUMENTO DO SALÁRIO.

SELECT * FROM ALUNO;

/*
   IDALUNO NOME                           EMAIL                             SALARIO
---------- ------------------------------ ------------------------------ ----------
         1 Joao Marcelo                   joao@gmail.com                    1394,79
         2 Carlos Eduardo                 carlo@gmail                       2336,26
         3 Adriano Santos                 adrianosantos@gmail               3488,18
         4 Laura Beatriz                  laura_bee@gmail.com               2569,31
         5 Maria Ester                    ester@gmail.com                   2557,12
         6 Sergio Fonseca                 folsong9@hotmail.com              2266,77
         7 Rubens Prado                   Rubensprado@hotmail.com           1744,13
         8 Maria Jose                     mariaj@gmail.com                   2592,1
         9 Carla Balbino                  carlabal@gmail.com                1278,05
        10 Cristovao Ramos                Cristovaoramos@gmail.com          1743,74
        11 Beatriz Ramos                  beatrizramos@gmail.com            2440,88

   IDALUNO NOME                           EMAIL                             SALARIO
---------- ------------------------------ ------------------------------ ----------
        12 Diego Balbino                  diegobalbino@hotmail.com          2324,65
        13 Maria da Graças                mariagraca@gmail.com                 2441
        14 Cristiane Brota                brotacrish@gmail.com              2557,12
        15 Messias Bolsonaro              bolsonaro@gmail.com               2557,36
        16 Joao Carlos                    carlosjoao@gmail.com              2568,73
        17 Raulino Galvao                 raustinpp@gmail.com               2789,57
        18 Mayara Barbosa                 mayarabarbosa@gmail.com           2734,44
        19 Cassius Gama                   cassiusgama@gmail.com             3603,42
        20 Karla Geovanne                 geovannek@gmail.com               1162,32
        21 Mariana Santos                 mariana@gmail.com                  2905,8
        22 Neide Ferreira                 neidefferreira@hotmail.com        4707,41

   IDALUNO NOME                           EMAIL                             SALARIO
---------- ------------------------------ ------------------------------ ----------
        45 Oliver Galvao                  Olivertinpp@gmail.com                2400
        46 Marcos Barbosa                 marcosbarbosa@gmail.com           2352,55

24 linhas selecionadas. 
*/


SELECT * FROM AUDITORIA;

/*

DATA_LOG LOGIN                         
-------- ------------------------------
31/01/22 SYS                           
31/01/22 SYS                           
31/01/22 SYS                           
31/01/22 SYS                           
31/01/22 SYS                           
31/01/22 SYS                           

6 linhas selecionadas.   
*/
