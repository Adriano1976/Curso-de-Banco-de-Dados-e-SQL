SELECT NOME,SOBRENOME,CPF,EMAIL FROM ALUNO;

/*
+---------+-------------+-------------+-------------------------+
| NOME    | SOBRENOME   | CPF         | EMAIL                   |
+---------+-------------+-------------+-------------------------+
| JOAO    | SANTOS      | 76567587887 | joaosantos@ig.com       |
| CARLOS  | VASCONCELOS | 5464553466  | CARLOSA@IG.COM          |
| ANA     | BEATRIZ     | 456545678   | ANA@IG.COM              |
| JORGE   | FEITOZA     | 8756547688  | JORGE@IG.COM            |
| CELIA   | GAMA        | 5767876889  | JCELIA@IG.COM           |
| ADRIANO | SANTOS      | 89456974258 | ADRIANO.GIT@HOTMAIL.COM |
| NEIDE   | FERREIRA    | 58790025415 | NEIDE@HOTMAIL.COM       |
| LAURA   | SANTOS      | 25100569845 | LAURA@GMAIL.COM         |
| LUIZA   | LIMA        | 25145568545 | LUIZA@GMAIL.COM         |
| CLARA   | NUNES       | 5687766856  | CLARA@HOTMAIL           |
+---------+-------------+-------------+-------------------------+
*/

SELECT RUA_AV, BAIRRO, CIDADE FROM ENDERECO

/*
+-------------------------------+----------------------------+---------+
| RUA_AV                        | BAIRRO                     | CIDADE  |
+-------------------------------+----------------------------+---------+
| Travessa Euzébio Pinheiro     | América                    | Aracaju |
| Rua Sete de Setembro          | Aeroporto                  | Aracaju |
| Rua A                         | Cidade Nova                | Aracaju |
| Rua José Lisboa dos Santos    | Santo Antônio              | Aracaju |
| Rua B                         | Zona de Expansão (Aruana)  | Aracaju |
| Rua José Augusto dos Santos   | Farolândia                 | Aracaju |
| Rua Pedro José do Nascimento  | Soledade                   | Aracaju |
| Rua Geruzinho                 | Getúlio Vargas             | Aracaju |
| Rua Geruzinho                 | Getúlio Vargas             | Aracaju |
| Rua Geruzinho                 | Getúlio Vargas             | Aracaju |
+-------------------------------+----------------------------+---------+
*/

DESC ALUNO;

/*
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| IDALUNO   | int          | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(100) | NO   |     | NULL    |                |
| SOBRENOME | varchar(30)  | NO   |     | NULL    |                |
| CPF       | varchar(11)  | NO   | UNI | NULL    |                |
| SEXO      | char(2)      | NO   |     | NULL    |                |
| EMAIL     | varchar(30)  | NO   | UNI | NULL    |                |
| ALTURA    | float(3,2)   | YES  |     | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+
*/

DESC ENDERECO;

/*
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDENDERECO | int         | NO   | PRI | NULL    | auto_increment |
| RUA_AV     | varchar(60) | NO   |     | NULL    |                |
| BAIRRO     | varchar(30) | NO   |     | NULL    |                |
| CEP        | varchar(10) | NO   |     | NULL    |                |
| CIDADE     | varchar(30) | NO   |     | NULL    |                |
| ESTADO     | char(2)     | NO   |     | NULL    |                |
| ID_ALUNO   | int         | NO   | UNI | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
*/

/*
adiciona o caractere ‘char’ à esquerda (left) da coluna de uma tabela até que 
tenha a quantidade de caracteres igual a comprimento.
*/

SELECT NOME, LPAD(NOME, 10, '-') FROM ALUNO;

/*
+---------+---------------------+
| NOME    | LPAD(NOME, 10, '-') |
+---------+---------------------+
| JOAO    | ------JOAO          |
| CARLOS  | ----CARLOS          |
| ANA     | -------ANA          |
| JORGE   | -----JORGE          |
| CELIA   | -----CELIA          |
| ADRIANO | ---ADRIANO          |
| NEIDE   | -----NEIDE          |
| LAURA   | -----LAURA          |
| LUIZA   | -----LUIZA          |
| CLARA   | -----CLARA          |
+---------+---------------------+
*/



SELECT SOBRENOME, LPAD(SOBRENOME, 30, '-') FROM ALUNO;

/*
+-------------+--------------------------------+
| SOBRENOME   | LPAD(SOBRENOME, 30, '-')       |
+-------------+--------------------------------+
| SANTOS      | ------------------------SANTOS |
| VASCONCELOS | -------------------VASCONCELOS |
| BEATRIZ     | -----------------------BEATRIZ |
| FEITOZA     | -----------------------FEITOZA |
| GAMA        | --------------------------GAMA |
| SANTOS      | ------------------------SANTOS |
| FERREIRA    | ----------------------FERREIRA |
| SANTOS      | ------------------------SANTOS |
| LIMA        | --------------------------LIMA |
| NUNES       | -------------------------NUNES |
+-------------+--------------------------------+
*/

SELECT NOME, LPAD(NOME, 100, '-') FROM ALUNO;

/*
+---------+------------------------------------------------------------------------------------------------------+
| NOME    | LPAD(NOME, 100, '-')                                                                                 |
+---------+------------------------------------------------------------------------------------------------------+
| JOAO    | ------------------------------------------------------------------------------------------------JOAO |
| CARLOS  | ----------------------------------------------------------------------------------------------CARLOS |
| ANA     | -------------------------------------------------------------------------------------------------ANA |
| JORGE   | -----------------------------------------------------------------------------------------------JORGE |
| CELIA   | -----------------------------------------------------------------------------------------------CELIA |
| ADRIANO | ---------------------------------------------------------------------------------------------ADRIANO |
| NEIDE   | -----------------------------------------------------------------------------------------------NEIDE |
| LAURA   | -----------------------------------------------------------------------------------------------LAURA |
| LUIZA   | -----------------------------------------------------------------------------------------------LUIZA |
| CLARA   | -----------------------------------------------------------------------------------------------CLARA |
+---------+------------------------------------------------------------------------------------------------------+
*/

SELECT CPF, LPAD(CPF, 11, '-') FROM ALUNO;

/*
+-------------+--------------------+
| CPF         | LPAD(CPF, 11, '-') |
+-------------+--------------------+
| 25100569845 | 25100569845        |
| 25145568545 | 25145568545        |
| 456545678   | --456545678        |
| 5464553466  | -5464553466        |
| 5687766856  | -5687766856        |
| 5767876889  | -5767876889        |
| 58790025415 | 58790025415        |
| 76567587887 | 76567587887        |
| 8756547688  | -8756547688        |
| 89456974258 | 89456974258        |
+-------------+--------------------+
*/

SELECT EMAIL, LPAD(EMAIL, 30, '-') FROM ALUNO;

/*
+-------------------------+--------------------------------+
| EMAIL                   | LPAD(EMAIL, 30, '-')           |
+-------------------------+--------------------------------+
| ADRIANO.GIT@HOTMAIL.COM | -------ADRIANO.GIT@HOTMAIL.COM |
| ANA@IG.COM              | --------------------ANA@IG.COM |
| CARLOSA@IG.COM          | ----------------CARLOSA@IG.COM |
| CLARA@HOTMAIL           | -----------------CLARA@HOTMAIL |
| JCELIA@IG.COM           | -----------------JCELIA@IG.COM |
| joaosantos@ig.com       | -------------joaosantos@ig.com |
| JORGE@IG.COM            | ------------------JORGE@IG.COM |
| LAURA@GMAIL.COM         | ---------------LAURA@GMAIL.COM |
| LUIZA@GMAIL.COM         | ---------------LUIZA@GMAIL.COM |
| NEIDE@HOTMAIL.COM       | -------------NEIDE@HOTMAIL.COM |
+-------------------------+--------------------------------+
*/

SELECT RUA_AV, LPAD(RUA_AV, 60, '-') FROM ENDERECO;

/*
+-------------------------------+---------------------------------------------------------------+
| RUA_AV                        | LPAD(RUA_AV, 60, '-')                                         |
+-------------------------------+---------------------------------------------------------------+
| Travessa Euzébio Pinheiro     | -----------------------------------Travessa Euzébio Pinheiro  |
| Rua Sete de Setembro          | ----------------------------------------Rua Sete de Setembro  |
| Rua A                         | -------------------------------------------------------Rua A  |
| Rua José Lisboa dos Santos    | ----------------------------------Rua José Lisboa dos Santos  |
| Rua B                         | -------------------------------------------------------Rua B  |
| Rua José Augusto dos Santos   | ---------------------------------Rua José Augusto dos Santos  |
| Rua Pedro José do Nascimento  | --------------------------------Rua Pedro José do Nascimento  |
| Rua Geruzinho                 | -----------------------------------------------Rua Geruzinho  |
| Rua Geruzinho                 | -----------------------------------------------Rua Geruzinho  |
| Rua Geruzinho                 | -----------------------------------------------Rua Geruzinho  |
+-------------------------------+---------------------------------------------------------------+
*/

SELECT BAIRRO, LPAD(BAIRRO, 30, '-') FROM ENDERECO;

/*
+----------------------------+---------------------------------+
| BAIRRO                     | LPAD(BAIRRO, 30, '-')           |
+----------------------------+---------------------------------+
| América                    | -----------------------América  |
| Aeroporto                  | ---------------------Aeroporto  |
| Cidade Nova                | -------------------Cidade Nova  |
| Santo Antônio              | -----------------Santo Antônio  |
| Zona de Expansão (Aruana)  | -----Zona de Expansão (Aruana)  |
| Farolândia                 | --------------------Farolândia  |
| Soledade                   | ----------------------Soledade  |
| Getúlio Vargas             | ----------------Getúlio Vargas  |
| Getúlio Vargas             | ----------------Getúlio Vargas  |
| Getúlio Vargas             | ----------------Getúlio Vargas  |
+----------------------------+---------------------------------+
*/

SELECT CIDADE, LPAD(CIDADE, 30, '-') FROM ENDERECO;

/*
+---------+--------------------------------+
| CIDADE  | LPAD(CIDADE, 30, '-')          |
+---------+--------------------------------+
| Aracaju | -----------------------Aracaju |
| Aracaju | -----------------------Aracaju |
| Aracaju | -----------------------Aracaju |
| Aracaju | -----------------------Aracaju |
| Aracaju | -----------------------Aracaju |
| Aracaju | -----------------------Aracaju |
| Aracaju | -----------------------Aracaju |
| Aracaju | -----------------------Aracaju |
| Aracaju | -----------------------Aracaju |
| Aracaju | -----------------------Aracaju |
+---------+--------------------------------+
*/

