
SELECT * FROM ALUNO;

/*

   IDALUNO NOME                           EMAIL                             SALARIO
---------- ------------------------------ ------------------------------ ----------
         1 Joao Marcelo                   joao@gmail.com                       1200
         2 Carlos Eduardo                 carlo@gmail                          2010
         3 Adriano Santos                 adrianosantos@gmail                1500,5
         4 Laura Beatriz                  laura_bee@gmail.com                2210,5
         5 Maria Ester                    ester@gmail.com                      2200
         6 Sergio Fonseca                 folsong9@hotmail.com              1950,22
         7 Rubens Prado                   Rubensprado@hotmail.com           1500,55
         8 Maria Jose                     mariaj@gmail.com                   2230,1
         9 Carla Balbino                  carlabal@gmail.com                1099,55
        10 Cristovao Ramos                Cristovaoramos@gmail.com          1500,22
        11 Beatriz Ramos                  beatrizramos@gmail.com               2100

   IDALUNO NOME                           EMAIL                             SALARIO
---------- ------------------------------ ------------------------------ ----------
        12 Diego Balbino                  diegobalbino@hotmail.com             2000
        13 Maria da Graças                mariagraca@gmail.com               2100,1
        14 Cristiane Brota                brotacrish@gmail.com                 2200
        15 Messias Bolsonaro              bolsonaro@gmail.com               2200,22
        16 Joao Carlos                    carlosjoao@gmail.com                 2210
        17 Raulino Galvao                 raustinpp@gmail.com                  2400
        18 Mayara Barbosa                 mayarabarbosa@gmail.com           2352,55
        19 Cassius Gama                   cassiusgama@gmail.com              3100,2
        20 Karla Geovanne                 geovannek@gmail.com                  1000
        21 Mariana Santos                 mariana@gmail.com                    2500
        22 Neide Ferreira                 neidefferreira@hotmail.com           4050

22 linhas selecionadas.
*/



SELECT * FROM ALUNO2;

/*
   IDALUNO NOME                           EMAIL                             SALARIO
---------- ------------------------------ ------------------------------ ----------
        23 Joao Marcelo                   joao@gmail.com                       1200
        24 Mariana Santos                 mariana@gmail.com                    2500
        25 Carlos Eduardo                 carlo@gmail                          2010
        26 Adriano Santos                 adrianosantos@gmail                1500,5
        27 Neide Ferreira                 neidefferreira@hotmail.com           4050
        28 Laura Beatriz                  laura_bee@gmail.com                2210,5
        29 Maria Ester                    ester@gmail.com                      2200
        30 Sergio Fonseca                 folsong9@hotmail.com              1950,22
        31 Rubens Prado                   Rubensprado@hotmail.com           1500,55
        32 Maria Jose                     mariaj@gmail.com                   2230,1
        33 Carla Balbino                  carlabal@gmail.com                1099,55

   IDALUNO NOME                           EMAIL                             SALARIO
---------- ------------------------------ ------------------------------ ----------
        34 Cristovao Ramos                Cristovaoramos@gmail.com          1500,22
        35 Beatriz Ramos                  beatrizramos@gmail.com               2100
        36 Diego Balbino                  diegobalbino@hotmail.com             2000
        37 Maria da Graças                mariagraca@gmail.com               2100,1
        38 Cristiane Brota                brotacrish@gmail.com                 2200
        39 Messias Bolsonaro              bolsonaro@gmail.com               2200,22
        40 Joao Carlos                    carlosjoao@gmail.com                 2210
        41 Raulino Galvao                 raustinpp@gmail.com                  2400
        42 Mayara Barbosa                 mayarabarbosa@gmail.com           2352,55
        43 Cassius Gama                   cassiusgama@gmail.com              3100,2
        44 Karla Geovanne                 geovannek@gmail.com                  1000

22 linhas selecionadas. 
*/



-- ROWID -> CONSULTANDO O ENDEREÇO FÍSICO DOS REGISTROS DA TABELA ALUNO.

SELECT ROWID, IDALUNO, NOME, EMAIL FROM ALUNO;

/*

ROWID                 IDALUNO NOME                           EMAIL                         
------------------ ---------- ------------------------------ ------------------------------
AAAE8qAABAAALDJAAA          1 Joao Marcelo                   joao@gmail.com                
AAAE8qAABAAALDJAAB          2 Carlos Eduardo                 carlo@gmail                   
AAAE8qAABAAALDJAAC          3 Adriano Santos                 adrianosantos@gmail           
AAAE8qAABAAALDJAAD          4 Laura Beatriz                  laura_bee@gmail.com           
AAAE8qAABAAALDJAAE          5 Maria Ester                    ester@gmail.com               
AAAE8qAABAAALDJAAF          6 Sergio Fonseca                 folsong9@hotmail.com          
AAAE8qAABAAALDJAAG          7 Rubens Prado                   Rubensprado@hotmail.com       
AAAE8qAABAAALDJAAH          8 Maria Jose                     mariaj@gmail.com              
AAAE8qAABAAALDJAAI          9 Carla Balbino                  carlabal@gmail.com            
AAAE8qAABAAALDJAAJ         10 Cristovao Ramos                Cristovaoramos@gmail.com      
AAAE8qAABAAALDJAAK         11 Beatriz Ramos                  beatrizramos@gmail.com        

ROWID                 IDALUNO NOME                           EMAIL                         
------------------ ---------- ------------------------------ ------------------------------
AAAE8qAABAAALDJAAL         12 Diego Balbino                  diegobalbino@hotmail.com      
AAAE8qAABAAALDJAAM         13 Maria da Graças                mariagraca@gmail.com          
AAAE8qAABAAALDJAAN         14 Cristiane Brota                brotacrish@gmail.com          
AAAE8qAABAAALDJAAO         15 Messias Bolsonaro              bolsonaro@gmail.com           
AAAE8qAABAAALDJAAP         16 Joao Carlos                    carlosjoao@gmail.com          
AAAE8qAABAAALDJAAQ         17 Raulino Galvao                 raustinpp@gmail.com           
AAAE8qAABAAALDJAAR         18 Mayara Barbosa                 mayarabarbosa@gmail.com       
AAAE8qAABAAALDJAAS         19 Cassius Gama                   cassiusgama@gmail.com         
AAAE8qAABAAALDJAAT         20 Karla Geovanne                 geovannek@gmail.com           
AAAE8qAABAAALDJAAU         21 Mariana Santos                 mariana@gmail.com             
AAAE8qAABAAALDJAAV         22 Neide Ferreira                 neidefferreira@hotmail.com    

22 linhas selecionadas. 
*/



-- ROWID -> CONSULTANDO O ENDEREÇO FÍSICO DOS REGISTROS DA TABELA ALUNOS.


SELECT ROWID, IDALUNO, NOME, EMAIL FROM ALUNO2;

/*
ROWID                 IDALUNO NOME                           EMAIL                         
------------------ ---------- ------------------------------ ------------------------------
AAAE8sAABAAALDZAAA         23 Joao Marcelo                   joao@gmail.com                
AAAE8sAABAAALDZAAB         24 Mariana Santos                 mariana@gmail.com             
AAAE8sAABAAALDZAAC         25 Carlos Eduardo                 carlo@gmail                   
AAAE8sAABAAALDZAAD         26 Adriano Santos                 adrianosantos@gmail           
AAAE8sAABAAALDZAAE         27 Neide Ferreira                 neidefferreira@hotmail.com    
AAAE8sAABAAALDZAAF         28 Laura Beatriz                  laura_bee@gmail.com           
AAAE8sAABAAALDZAAG         29 Maria Ester                    ester@gmail.com               
AAAE8sAABAAALDZAAH         30 Sergio Fonseca                 folsong9@hotmail.com          
AAAE8sAABAAALDZAAI         31 Rubens Prado                   Rubensprado@hotmail.com       
AAAE8sAABAAALDZAAJ         32 Maria Jose                     mariaj@gmail.com              
AAAE8sAABAAALDZAAK         33 Carla Balbino                  carlabal@gmail.com            

ROWID                 IDALUNO NOME                           EMAIL                         
------------------ ---------- ------------------------------ ------------------------------
AAAE8sAABAAALDZAAL         34 Cristovao Ramos                Cristovaoramos@gmail.com      
AAAE8sAABAAALDZAAM         35 Beatriz Ramos                  beatrizramos@gmail.com        
AAAE8sAABAAALDZAAN         36 Diego Balbino                  diegobalbino@hotmail.com      
AAAE8sAABAAALDZAAO         37 Maria da Graças                mariagraca@gmail.com          
AAAE8sAABAAALDZAAP         38 Cristiane Brota                brotacrish@gmail.com          
AAAE8sAABAAALDZAAQ         39 Messias Bolsonaro              bolsonaro@gmail.com           
AAAE8sAABAAALDZAAR         40 Joao Carlos                    carlosjoao@gmail.com          
AAAE8sAABAAALDZAAS         41 Raulino Galvao                 raustinpp@gmail.com           
AAAE8sAABAAALDZAAT         42 Mayara Barbosa                 mayarabarbosa@gmail.com       
AAAE8sAABAAALDZAAU         43 Cassius Gama                   cassiusgama@gmail.com         
AAAE8sAABAAALDZAAV         44 Karla Geovanne                 geovannek@gmail.com           

22 linhas selecionadas. 
*/


-- ROWNUM - PAGINANDO OS REGISTRO DA TABELA ALUNO.

SELECT ROWID, ROWNUM,IDALUNO, NOME, EMAIL FROM ALUNO;

/*

ROWID                  ROWNUM    IDALUNO NOME                           EMAIL                         
------------------ ---------- ---------- ------------------------------ ------------------------------
AAAE8qAABAAALDJAAA          1          1 Joao Marcelo                   joao@gmail.com                
AAAE8qAABAAALDJAAB          2          2 Carlos Eduardo                 carlo@gmail                   
AAAE8qAABAAALDJAAC          3          3 Adriano Santos                 adrianosantos@gmail           
AAAE8qAABAAALDJAAD          4          4 Laura Beatriz                  laura_bee@gmail.com           
AAAE8qAABAAALDJAAE          5          5 Maria Ester                    ester@gmail.com               
AAAE8qAABAAALDJAAF          6          6 Sergio Fonseca                 folsong9@hotmail.com          
AAAE8qAABAAALDJAAG          7          7 Rubens Prado                   Rubensprado@hotmail.com       
AAAE8qAABAAALDJAAH          8          8 Maria Jose                     mariaj@gmail.com              
AAAE8qAABAAALDJAAI          9          9 Carla Balbino                  carlabal@gmail.com            
AAAE8qAABAAALDJAAJ         10         10 Cristovao Ramos                Cristovaoramos@gmail.com      
AAAE8qAABAAALDJAAK         11         11 Beatriz Ramos                  beatrizramos@gmail.com        

ROWID                  ROWNUM    IDALUNO NOME                           EMAIL                         
------------------ ---------- ---------- ------------------------------ ------------------------------
AAAE8qAABAAALDJAAL         12         12 Diego Balbino                  diegobalbino@hotmail.com      
AAAE8qAABAAALDJAAM         13         13 Maria da Graças                mariagraca@gmail.com          
AAAE8qAABAAALDJAAN         14         14 Cristiane Brota                brotacrish@gmail.com          
AAAE8qAABAAALDJAAO         15         15 Messias Bolsonaro              bolsonaro@gmail.com           
AAAE8qAABAAALDJAAP         16         16 Joao Carlos                    carlosjoao@gmail.com          
AAAE8qAABAAALDJAAQ         17         17 Raulino Galvao                 raustinpp@gmail.com           
AAAE8qAABAAALDJAAR         18         18 Mayara Barbosa                 mayarabarbosa@gmail.com       
AAAE8qAABAAALDJAAS         19         19 Cassius Gama                   cassiusgama@gmail.com         
AAAE8qAABAAALDJAAT         20         20 Karla Geovanne                 geovannek@gmail.com           
AAAE8qAABAAALDJAAU         21         21 Mariana Santos                 mariana@gmail.com             
AAAE8qAABAAALDJAAV         22         22 Neide Ferreira                 neidefferreira@hotmail.com    

22 linhas selecionadas. 
*/



-- ROWNUM -> PAGINANDO OS REGISTRO DA TABELA ALUNO2.

SELECT ROWID, ROWNUM,IDALUNO, NOME, EMAIL FROM ALUNO2;

/*

ROWID                  ROWNUM    IDALUNO NOME                           EMAIL                         
------------------ ---------- ---------- ------------------------------ ------------------------------
AAAE8sAABAAALDZAAA          1         23 Joao Marcelo                   joao@gmail.com                
AAAE8sAABAAALDZAAB          2         24 Mariana Santos                 mariana@gmail.com             
AAAE8sAABAAALDZAAC          3         25 Carlos Eduardo                 carlo@gmail                   
AAAE8sAABAAALDZAAD          4         26 Adriano Santos                 adrianosantos@gmail           
AAAE8sAABAAALDZAAE          5         27 Neide Ferreira                 neidefferreira@hotmail.com    
AAAE8sAABAAALDZAAF          6         28 Laura Beatriz                  laura_bee@gmail.com           
AAAE8sAABAAALDZAAG          7         29 Maria Ester                    ester@gmail.com               
AAAE8sAABAAALDZAAH          8         30 Sergio Fonseca                 folsong9@hotmail.com          
AAAE8sAABAAALDZAAI          9         31 Rubens Prado                   Rubensprado@hotmail.com       
AAAE8sAABAAALDZAAJ         10         32 Maria Jose                     mariaj@gmail.com              
AAAE8sAABAAALDZAAK         11         33 Carla Balbino                  carlabal@gmail.com            

ROWID                  ROWNUM    IDALUNO NOME                           EMAIL                         
------------------ ---------- ---------- ------------------------------ ------------------------------
AAAE8sAABAAALDZAAL         12         34 Cristovao Ramos                Cristovaoramos@gmail.com      
AAAE8sAABAAALDZAAM         13         35 Beatriz Ramos                  beatrizramos@gmail.com        
AAAE8sAABAAALDZAAN         14         36 Diego Balbino                  diegobalbino@hotmail.com      
AAAE8sAABAAALDZAAO         15         37 Maria da Graças                mariagraca@gmail.com          
AAAE8sAABAAALDZAAP         16         38 Cristiane Brota                brotacrish@gmail.com          
AAAE8sAABAAALDZAAQ         17         39 Messias Bolsonaro              bolsonaro@gmail.com           
AAAE8sAABAAALDZAAR         18         40 Joao Carlos                    carlosjoao@gmail.com          
AAAE8sAABAAALDZAAS         19         41 Raulino Galvao                 raustinpp@gmail.com           
AAAE8sAABAAALDZAAT         20         42 Mayara Barbosa                 mayarabarbosa@gmail.com       
AAAE8sAABAAALDZAAU         21         43 Cassius Gama                   cassiusgama@gmail.com         
AAAE8sAABAAALDZAAV         22         44 Karla Geovanne                 geovannek@gmail.com           

22 linhas selecionadas. 
*/


SELECT NOME, EMAIL FROM ALUNO WHERE ROWNUM < 5;

/*
NOME                           EMAIL                         
------------------------------ ------------------------------
Joao Marcelo                   joao@gmail.com                
Carlos Eduardo                 carlo@gmail                   
Adriano Santos                 adrianosantos@gmail           
Laura Beatriz                  laura_bee@gmail.com   
*/



SELECT NOME, EMAIL FROM ALUNO2 WHERE ROWNUM <= 5;

/*
NOME                           EMAIL                         
------------------------------ ------------------------------
Joao Marcelo                   joao@gmail.com                
Mariana Santos                 mariana@gmail.com             
Carlos Eduardo                 carlo@gmail                   
Adriano Santos                 adrianosantos@gmail           
Neide Ferreira                 neidefferreira@hotmail.com   
*/
