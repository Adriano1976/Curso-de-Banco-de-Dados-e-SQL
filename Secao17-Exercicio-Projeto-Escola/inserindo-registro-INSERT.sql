-- Inserindo dados na tabela ALUNOS.

INSERT INTO ALUNO(IDALUNO,NOME,SEXO,EMAIL,CPF,ALTURA) 
VALUES(NULL,'JOAO','M','JOAOA@IG.COM','76567587887',1.55);
INSERT INTO ALUNO(IDALUNO,NOME,SEXO,EMAIL,CPF,ALTURA) 
VALUES(NULL,'CARLOS','M','CARLOSA@IG.COM','5464553466',1.85);
INSERT INTO ALUNO(IDALUNO,NOME,SEXO,EMAIL,CPF,ALTURA) 
VALUES(NULL,'ANA','F','ANA@IG.COM','456545678',1.45);
INSERT INTO ALUNO(IDALUNO,NOME,SEXO,EMAIL,CPF,ALTURA) 
VALUES(NULL,'CLARA','F','CLARA@HOTMAIL','5687766856',1.78);
INSERT INTO ALUNO(IDALUNO,NOME,SEXO,EMAIL,CPF,ALTURA) 
VALUES(NULL,'JORGE','M','JORGE@IG.COM','8756547688',1.98);
INSERT INTO ALUNO(IDALUNO,NOME,SEXO,EMAIL,CPF,ALTURA) 
VALUES(NULL,'CELIA','M','JCELIA@IG.COM','5767876889',1.45);
INSERT INTO ALUNO(IDALUNO,NOME,SEXO,EMAIL,CPF,ALTURA) 
VALUES(NULL,'ADRIANO','M','ADRIANO.GIT@HOTMAIL.COM','89456974258',1.78);
INSERT INTO ALUNO(IDALUNO,NOME,SEXO,EMAIL,CPF,ALTURA) 
VALUES(NULL,'NEIDE','F','NEIDE@HOTMAIL.COM','58790025415',1.68);
INSERT INTO ALUNO(IDALUNO,NOME,SEXO,EMAIL,CPF,ALTURA) 
VALUES(NULL,'LAURA','F','LAURA@GMAIL.COM','25100569845',1.76);
INSERT INTO ALUNO(IDALUNO,NOME,SEXO,EMAIL,CPF,ALTURA) 
VALUES(NULL,'LUIZA','F','LUIZA@GMAIL.COM','25145568545',1.69);

-- Conferindo se os dados foram inseridos corretamente. Caso contrário, deve corrigir os erros.

SELECT * FROM ALUNO;

/*
+---------+---------+-------------+------+-------------------------+--------+
| IDALUNO | NOME    | CPF         | SEXO | EMAIL                   | ALTURA |
+---------+---------+-------------+------+-------------------------+--------+
|       1 | JOAO    | 76567587887 | M    | JOAOA@IG.COM            |   1.85 |
|       2 | CARLOS  | 5464553466  | M    | CARLOSA@IG.COM          |   1.85 |
|       3 | ANA     | 456545678   | F    | ANA@IG.COM              |   1.45 |
|       4 | JORGE   | 8756547688  | M    | JORGE@IG.COM            |   1.98 |
|       5 | CELIA   | 5767876889  | M    | JCELIA@IG.COM           |   1.45 |
|       6 | ADRIANO | 89456974258 | M    | ADRIANO.GIT@HOTMAIL.COM |   1.78 |
|       7 | NEIDE   | 58790025415 | F    | NEIDE@HOTMAIL.COM       |   1.68 |
|       8 | LAURA   | 25100569845 | F    | LAURA@GMAIL.COM         |   1.76 |
|       9 | LUIZA   | 25145568545 | F    | LUIZA@GMAIL.COM         |   1.69 |
|      10 | CLARA   | 5687766856  | F    | CLARA@HOTMAIL           |   1.78 |
+---------+---------+-------------+------+-------------------------+--------+
*/


-- Inserindo dados na tabela ENDERECO.

INSERT INTO ENDERECO(IDENDERECO,RUA_AV,BAIRRO,CEP,CIDADE,ESTADO,ID_ALUNO) 
	VALUES(NULL,'Travessa Euzébio Pinheiro','América','49080-525','Aracaju','SE',4);
INSERT INTO ENDERECO(IDENDERECO,RUA_AV,BAIRRO,CEP,CIDADE,ESTADO,ID_ALUNO)
	VALUES(NULL,'Rua Sete de Setembro','Aeroporto','49037-849','Aracaju','SE',1);
INSERT INTO ENDERECO(IDENDERECO,RUA_AV,BAIRRO,CEP,CIDADE,ESTADO,ID_ALUNO)
	VALUES(NULL,'Rua A','Cidade Nova','49070-073','Aracaju','SE',3);
INSERT INTO ENDERECO(IDENDERECO,RUA_AV,BAIRRO,CEP,CIDADE,ESTADO,ID_ALUNO)
	VALUES(NULL,'Rua José Lisboa dos Santos','Santo Antônio','49042-073','Aracaju','SE',2);
INSERT INTO ENDERECO(IDENDERECO,RUA_AV,BAIRRO,CEP,CIDADE,ESTADO,ID_ALUNO)
	VALUES(NULL,'Rua B','Zona de Expansão (Aruana)','49004-742','Aracaju','SE',6);
INSERT INTO ENDERECO(IDENDERECO,RUA_AV,BAIRRO,CEP,CIDADE,ESTADO,ID_ALUNO)
	VALUES(NULL,'Rua José Augusto dos Santos','Farolândia','49088-416','Aracaju','SE',5);
INSERT INTO ENDERECO(IDENDERECO,RUA_AV,BAIRRO,CEP,CIDADE,ESTADO,ID_ALUNO)
	VALUES(NULL,'Rua Pedro José do Nascimento','Soledade','49092-657','Aracaju','SE',7);
INSERT INTO ENDERECO(IDENDERECO,RUA_AV,BAIRRO,CEP,CIDADE,ESTADO,ID_ALUNO)
	VALUES(NULL,'Rua Geruzinho','Getúlio Vargas','49055-310','Aracaju','SE',10);
INSERT INTO ENDERECO(IDENDERECO,RUA_AV,BAIRRO,CEP,CIDADE,ESTADO,ID_ALUNO)
	VALUES(NULL,'Rua Geruzinho','Getúlio Vargas','49055-310','Aracaju','SE',9);
INSERT INTO ENDERECO(IDENDERECO,RUA_AV,BAIRRO,CEP,CIDADE,ESTADO,ID_ALUNO)
	VALUES(NULL,'Rua Geruzinho','Getúlio Vargas','49055-310','Aracaju','SE',8);


-- Conferindo se os dados foram inseridos corretamente. Caso contrário, deve corrigir os erros.

SELECT * FROM ENDERECO;

/*
+------------+-------------------------------+----------------------------+-----------+---------+--------+----------+
| IDENDERECO | RUA_AV                        | BAIRRO                     | CEP       | CIDADE  | ESTADO | ID_ALUNO |
+------------+-------------------------------+----------------------------+-----------+---------+--------+----------+
|          1 | Travessa Euzébio Pinheiro     | América                    | 49004-793 | Aracaju | MG     |        4 |
|          2 | Rua Sete de Setembro          | Aeroporto                  | 49037-849 | Aracaju | SE     |        1 |
|          3 | Rua A                         | Cidade Nova                | 49070-073 | Aracaju | SE     |        3 |
|          4 | Rua José Lisboa dos Santos    | Santo Antônio              | 49042-073 | Aracaju | SE     |        2 |
|          5 | Rua B                         | Zona de Expansão (Aruana)  | 49004-742 | Aracaju | SE     |        6 |
|          6 | Rua José Augusto dos Santos   | Farolândia                 | 49088-416 | Aracaju | SE     |        5 |
|          7 | Rua Pedro José do Nascimento  | Soledade                   | 49092-657 | Aracaju | SE     |        7 |
|          8 | Rua Geruzinho                 | Getúlio Vargas             | 49055-310 | Aracaju | SE     |       10 |
|          9 | Rua Geruzinho                 | Getúlio Vargas             | 49055-310 | Aracaju | SE     |        9 |
|         10 | Rua Geruzinho                 | Getúlio Vargas             | 49055-310 | Aracaju | SE     |        8 |
+------------+-------------------------------+----------------------------+-----------+---------+--------+----------+
*/


-- Inserindo dados na tabela TELEFONE

INSERT INTO TELEFONE VALUES(NULL,'CEL','79999179868',8);
INSERT INTO TELEFONE VALUES(NULL,'CEL','79978458743',5);
INSERT INTO TELEFONE VALUES(NULL,'RES','79956576876',5);
INSERT INTO TELEFONE VALUES(NULL,'CEL','79987866896',1);
INSERT INTO TELEFONE VALUES(NULL,'CEL','79954768899',2);
INSERT INTO TELEFONE VALUES(NULL,'RES','79999667587',1);
INSERT INTO TELEFONE VALUES(NULL,'CEL','79978989765',3);
INSERT INTO TELEFONE VALUES(NULL,'CEL','79999766676',3);
INSERT INTO TELEFONE VALUES(NULL,'CEL','79966687899',1);
INSERT INTO TELEFONE VALUES(NULL,'RES','79989986668',5);
INSERT INTO TELEFONE VALUES(NULL,'CEL','79988687909',2);
INSERT INTO TELEFONE VALUES(NULL,'CEL','79964680009',10);


-- Conferindo se os dados foram inseridos corretamente. Caso contrário, deve corrigir os erros.

SELECT * FROM TELEFONE;

/*
+------------+------+-------------+----------+
| IDTELEFONE | TIPO | NUMERO      | ID_ALUNO |
+------------+------+-------------+----------+
|          1 | CEL  | 79999179868 |        8 |
|          2 | CEL  | 79978458743 |        5 |
|          3 | RES  | 79956576876 |        5 |
|          4 | CEL  | 79987866896 |        1 |
|          5 | RES  | 79999667587 |        1 |
|          6 | CEL  | 79978989765 |        3 |
|          7 | CEL  | 79999766676 |        3 |
|          8 | RES  | 79989986668 |        5 |
|          9 | CEL  | 79988687909 |        2 |
|         10 | CEL  | 79964680009 |       10 |
|         11 | CEL  | 79954768899 |        2 |
|         12 | CEL  | 79966687899 |        1 |
+------------+------+-------------+----------+
*/


-- Inserindo dados na tabela SALA

INSERT INTO SALA VALUES(NULL,'40','1');
INSERT INTO SALA VALUES(NULL,'35','1');
INSERT INTO SALA VALUES(NULL,'30','2');
INSERT INTO SALA VALUES(NULL,'40','2');
INSERT INTO SALA VALUES(NULL,'30','3');


-- Conferindo se os dados foram inseridos corretamente. Caso contrário, deve corrigir os erros.

SELECT * FROM SALA;

/*
+--------+------------+-------+
| IDSALA | CAPACIDADE | ANDAR |
+--------+------------+-------+
|      1 | 40         | 1     |
|      2 | 35         | 1     |
|      3 | 30         | 2     |
|      4 | 40         | 2     |
|      5 | 30         | 3     |
+--------+------------+-------+
*/


-- Inserindo dados na tabela MATRICULA.

INSERT INTO MATRICULA(ANO,SEMESTRE,ID_ALUNO,ID_SALA) VALUES('2022','1',1,1);
INSERT INTO MATRICULA(ANO,SEMESTRE,ID_ALUNO,ID_SALA) VALUES('2022','1',2,1);
INSERT INTO MATRICULA(ANO,SEMESTRE,ID_ALUNO,ID_SALA) VALUES('2022','1',3,1);
INSERT INTO MATRICULA(ANO,SEMESTRE,ID_ALUNO,ID_SALA) VALUES('2022','1',4,1);
INSERT INTO MATRICULA(ANO,SEMESTRE,ID_ALUNO,ID_SALA) VALUES('2022','1',5,2);
INSERT INTO MATRICULA(ANO,SEMESTRE,ID_ALUNO,ID_SALA) VALUES('2022','1',6,2);
INSERT INTO MATRICULA(ANO,SEMESTRE,ID_ALUNO,ID_SALA) VALUES('2022','1',7,2);
INSERT INTO MATRICULA(ANO,SEMESTRE,ID_ALUNO,ID_SALA) VALUES('2022','1',8,2);
INSERT INTO MATRICULA(ANO,SEMESTRE,ID_ALUNO,ID_SALA) VALUES('2022','2',9,3);
INSERT INTO MATRICULA(ANO,SEMESTRE,ID_ALUNO,ID_SALA) VALUES('2022','2',10,3);

-- Conferindo se os dados foram inseridos corretamente. Caso contrário, deve corrigir os erros.

SELECT * FROM MATRICULA;

/*
+------+----------+----------+---------+
| ANO  | SEMESTRE | ID_ALUNO | ID_SALA |
+------+----------+----------+---------+
| 2022 | 1        |        1 |       1 |
| 2022 | 1        |        2 |       1 |
| 2022 | 1        |        3 |       1 |
| 2022 | 1        |        4 |       1 |
| 2022 | 1        |        5 |       2 |
| 2022 | 1        |        6 |       2 |
| 2022 | 1        |        7 |       2 |
| 2022 | 1        |        8 |       2 |
| 2022 | 2        |        9 |       3 |
| 2022 | 2        |       10 |       3 |
+------+----------+----------+---------+
*/


