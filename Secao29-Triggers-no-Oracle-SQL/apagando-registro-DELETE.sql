
-- CONSULTANDO OS REGISTROS ANTES DE UM DELES SER APAGADO --------------------------

SELECT * FROM USUARIOS;

/*

 IDUSUARIO NOME                           EMAIL                             SALARIO
---------- ------------------------------ ------------------------------ ----------
         1 Joao Marcelo                   joao@gmail.com                       1200
         2 Mariana Santos                 mariana@gmail.com                    2500
         3 Carlos Eduardo                 carlo@gmail.com                      2010
         4 Adriano Santos                 adrianosantos@gmail                1500,5
         5 Neide Ferreira                 neidefferreira@hotmail.com           4050
         6 Laura Beatriz                  laura_bee@gmail.com                2210,5
         7 Maria Ester                    ester@gmail.com                      2200
         8 Sergio Fonseca                 folsong9@hotmail.com              1950,22
         9 Rubens Prado                   Rubensprado@hotmail.com           1500,55
        10 Maria Jose                     mariaj@gmail.com                   2230,1
        11 Carla Balbino                  carlabal@gmail.com                1099,55

 IDUSUARIO NOME                           EMAIL                             SALARIO
---------- ------------------------------ ------------------------------ ----------
        12 Cristovao Ramos                Cristovaoramos@gmail.com          1500,22
        13 Beatriz Ramos                  beatrizramos@gmail.com               2100
        14 Diego Balbino                  diegobalbino@hotmail.com             2000
        15 Maria da Graças                mariagraca@gmail.com               2100,1
        16 Cristiane Brota                brotacrish@gmail.com                 2200
        17 Messias Bolsonaro              bolsonaro@gmail.com               2200,22
        18 Joao Carlos                    carlosjoao@gmail.com                 2210
        19 Raulino Galvao                 raustinpp@gmail.com                  2400
        20 Mayara Barbosa                 mayarabarbosa@gmail.com           2352,55
        21 Cassius Gama                   cassiusgama@gmail.com              3100,2
        22 Karla Geovanne                 geovannek@gmail.com                  1000

22 linhas selecionadas. 
*/


DELETE FROM USUARIOS WHERE IDUSUARIO = 1;
DELETE FROM USUARIOS WHERE IDUSUARIO = 8;
DELETE FROM USUARIOS WHERE IDUSUARIO = 20;

/*
3 linhas excluídas.
*/



-- CONSULTANDO OS REGISTROS DEPOIS DE ALGUNS DELES SEREM APAGADOS -----------------

SELECT * FROM USUARIOS;

/*
 IDUSUARIO NOME                           EMAIL                             SALARIO
---------- ------------------------------ ------------------------------ ----------
         2 Mariana Santos                 mariana@gmail.com                    2500
         3 Carlos Eduardo                 carlo@gmail.com                      2010
         4 Adriano Santos                 adrianosantos@gmail                1500,5
         5 Neide Ferreira                 neidefferreira@hotmail.com           4050
         6 Laura Beatriz                  laura_bee@gmail.com                2210,5
         7 Maria Ester                    ester@gmail.com                      2200
         9 Rubens Prado                   Rubensprado@hotmail.com           1500,55
        10 Maria Jose                     mariaj@gmail.com                   2230,1
        11 Carla Balbino                  carlabal@gmail.com                1099,55
        12 Cristovao Ramos                Cristovaoramos@gmail.com          1500,22
        13 Beatriz Ramos                  beatrizramos@gmail.com               2100

 IDUSUARIO NOME                           EMAIL                             SALARIO
---------- ------------------------------ ------------------------------ ----------
        14 Diego Balbino                  diegobalbino@hotmail.com             2000
        15 Maria da Graças                mariagraca@gmail.com               2100,1
        16 Cristiane Brota                brotacrish@gmail.com                 2200
        17 Messias Bolsonaro              bolsonaro@gmail.com               2200,22
        18 Joao Carlos                    carlosjoao@gmail.com                 2210
        19 Raulino Galvao                 raustinpp@gmail.com                  2400
        21 Cassius Gama                   cassiusgama@gmail.com              3100,2
        22 Karla Geovanne                 geovannek@gmail.com                  1000

19 linhas selecionadas. 
*/


SELECT * FROM BKP_USER;

/*
IDBKP_USER NOME                           EMAIL                             SALARIO
---------- ------------------------------ ------------------------------ ----------
         1 Joao Marcelo                   joao@gmail.com                       1200
         8 Sergio Fonseca                 folsong9@hotmail.com              1950,22
        20 Mayara Barbosa                 mayarabarbosa@gmail.com           2352,55
*/
