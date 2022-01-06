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

SELECT * FROM ALUNO;

/*
+---------+---------+-------------+-------------+------+-------------------------+--------+
| IDALUNO | NOME    | SOBRENOME   | CPF         | SEXO | EMAIL                   | ALTURA |
+---------+---------+-------------+-------------+------+-------------------------+--------+
|       1 | JOAO    | SANTOS      | 76567587887 | M    | joaosantos@ig.com       |   1.85 |
|       2 | CARLOS  | VASCONCELOS | 5464553466  | M    | CARLOSA@IG.COM          |   1.85 |
|       3 | ANA     | BEATRIZ     | 456545678   | F    | ANA@IG.COM              |   1.45 |
|       4 | JORGE   | FEITOZA     | 8756547688  | M    | JORGE@IG.COM            |   1.98 |
|       5 | CELIA   | GAMA        | 5767876889  | M    | JCELIA@IG.COM           |   1.45 |
|       6 | ADRIANO | SANTOS      | 89456974258 | M    | ADRIANO.GIT@HOTMAIL.COM |   1.78 |
|       7 | NEIDE   | FERREIRA    | 58790025415 | F    | NEIDE@HOTMAIL.COM       |   1.68 |
|       8 | LAURA   | SANTOS      | 25100569845 | F    | LAURA@GMAIL.COM         |   1.76 |
|       9 | LUIZA   | LIMA        | 25145568545 | F    | LUIZA@GMAIL.COM         |   1.69 |
|      10 | CLARA   | NUNES       | 5687766856  | F    | CLARA@HOTMAIL           |   1.78 |
+---------+---------+-------------+-------------+------+-------------------------+--------+
*/


-- Retorna duas ou mais colunas concatenadas.

SELECT CONCAT(NOME,' ',SOBRENOME) 
AS NOME_DOS_ALUNOS 
FROM ALUNO;

/*
+--------------------+
| NOME_DOS_ALUNOS    |
+--------------------+
| JOAO SANTOS        |
| CARLOS VASCONCELOS |
| ANA BEATRIZ        |
| JORGE FEITOZA      |
| CELIA GAMA         |
| ADRIANO SANTOS     |
| NEIDE FERREIRA     |
| LAURA SANTOS       |
| LUIZA LIMA         |
| CLARA NUNES        |
+--------------------+
*/

SELECT CONCAT(RUA_AV,' - ',CIDADE,'/',ESTADO) 
AS ENDEREÇO 
FROM ENDERECO;

/*
+--------------------------------------------+
| ENDEREÇO                                   |
+--------------------------------------------+
| Travessa Euzébio Pinheiro - Aracaju/MG     |
| Rua Sete de Setembro - Aracaju/SE          |
| Rua A - Aracaju/SE                         |
| Rua José Lisboa dos Santos - Aracaju/SE    |
| Rua B - Aracaju/SE                         |
| Rua José Augusto dos Santos - Aracaju/SE   |
| Rua Pedro José do Nascimento - Aracaju/SE  |
| Rua Geruzinho - Aracaju/SE                 |
| Rua Geruzinho - Aracaju/SE                 |
| Rua Geruzinho - Aracaju/SE                 |
+--------------------------------------------+
*/

SELECT CONCAT(A.NOME,' ',A.SOBRENOME,' | ',E.RUA_AV,' - ',E.CIDADE,'/',E.ESTADO) 
AS ENDEREÇO_DOS_ALUNOS
FROM ALUNO A
INNER JOIN ENDERECO E
ON A.IDALUNO = E.ID_ALUNO
ORDER BY 1;

/*
+---------------------------------------------------------------+
| ENDEREÇO_DOS_ALUNOS                                           |
+---------------------------------------------------------------+
| ADRIANO SANTOS | Rua B - Aracaju/SE                           |
| ANA BEATRIZ | Rua A - Aracaju/SE                              |
| CARLOS VASCONCELOS | Rua José Lisboa dos Santos - Aracaju/SE  |
| CELIA GAMA | Rua José Augusto dos Santos - Aracaju/SE         |
| CLARA NUNES | Rua Geruzinho - Aracaju/SE                      |
| JOAO SANTOS | Rua Sete de Setembro - Aracaju/SE               |
| JORGE FEITOZA | Travessa Euzébio Pinheiro - Aracaju/MG        |
| LAURA SANTOS | Rua Geruzinho - Aracaju/SE                     |
| LUIZA LIMA | Rua Geruzinho - Aracaju/SE                       |
| NEIDE FERREIRA | Rua Pedro José do Nascimento - Aracaju/SE    |
+---------------------------------------------------------------+
*/

SELECT CONCAT(A.NOME,' ',A.SOBRENOME,' | ',T.TIPO,' - ',T.NUMERO,' - ',A.EMAIL) 
AS CONTATO_DOS_ALUNOS
FROM ALUNO A
INNER JOIN TELEFONE T
ON A.IDALUNO = T.ID_ALUNO
ORDER BY 1;

/*
+--------------------------------------------------------------+
| CONTATO_DOS_ALUNOS                                           |
+--------------------------------------------------------------+
| ADRIANO SANTOS | CEL - 79998960414 - ADRIANO.GIT@HOTMAIL.COM |
| ANA BEATRIZ | CEL - 79978989765 - ANA@IG.COM                 |
| ANA BEATRIZ | CEL - 79999766676 - ANA@IG.COM                 |
| CARLOS VASCONCELOS | CEL - 79954768899 - CARLOSA@IG.COM      |
| CARLOS VASCONCELOS | CEL - 79988687909 - CARLOSA@IG.COM      |
| CELIA GAMA | CEL - 79978458743 - JCELIA@IG.COM               |
| CELIA GAMA | RES - 79956576876 - JCELIA@IG.COM               |
| CELIA GAMA | RES - 79989986668 - JCELIA@IG.COM               |
| CLARA NUNES | CEL - 79964680009 - CLARA@HOTMAIL              |
| JOAO SANTOS | CEL - 79966687899 - joaosantos@ig.com          |
| JOAO SANTOS | CEL - 79987866896 - joaosantos@ig.com          |
| JOAO SANTOS | RES - 79999667587 - joaosantos@ig.com          |
| LAURA SANTOS | CEL - 79999179868 - LAURA@GMAIL.COM           |
+--------------------------------------------------------------+
*/

SELECT CONCAT(T.TIPO,' - ',T.NUMERO,' | ',A.NOME,' ',A.SOBRENOME,' | ',A.EMAIL) 
AS CONTATO_DOS_ALUNOS
FROM ALUNO A
INNER JOIN TELEFONE T
ON A.IDALUNO = T.ID_ALUNO
ORDER BY 1;

/*
+--------------------------------------------------------------+
| CONTATO_DOS_ALUNOS                                           |
+--------------------------------------------------------------+
| CEL - 79954768899 | CARLOS VASCONCELOS | CARLOSA@IG.COM      |
| CEL - 79964680009 | CLARA NUNES | CLARA@HOTMAIL              |
| CEL - 79966687899 | JOAO SANTOS | joaosantos@ig.com          |
| CEL - 79978458743 | CELIA GAMA | JCELIA@IG.COM               |
| CEL - 79978989765 | ANA BEATRIZ | ANA@IG.COM                 |
| CEL - 79987866896 | JOAO SANTOS | joaosantos@ig.com          |
| CEL - 79988687909 | CARLOS VASCONCELOS | CARLOSA@IG.COM      |
| CEL - 79998960414 | ADRIANO SANTOS | ADRIANO.GIT@HOTMAIL.COM |
| CEL - 79999179868 | LAURA SANTOS | LAURA@GMAIL.COM           |
| CEL - 79999766676 | ANA BEATRIZ | ANA@IG.COM                 |
| RES - 79956576876 | CELIA GAMA | JCELIA@IG.COM               |
| RES - 79989986668 | CELIA GAMA | JCELIA@IG.COM               |
| RES - 79999667587 | JOAO SANTOS | joaosantos@ig.com          |
+--------------------------------------------------------------+
*/

SELECT CONCAT(T.TIPO,' - ',T.NUMERO,' | ',A.NOME,' ',A.SOBRENOME) 
AS TELEFONE_DE_CONTATO_DOS_ALUNOS
FROM ALUNO A
INNER JOIN TELEFONE T
ON A.IDALUNO = T.ID_ALUNO
ORDER BY 1;

/*
+----------------------------------------+
| TELEFONE_DE_CONTATO_DOS_ALUNOS         |
+----------------------------------------+
| CEL - 79954768899 | CARLOS VASCONCELOS |
| CEL - 79964680009 | CLARA NUNES        |
| CEL - 79966687899 | JOAO SANTOS        |
| CEL - 79978458743 | CELIA GAMA         |
| CEL - 79978989765 | ANA BEATRIZ        |
| CEL - 79987866896 | JOAO SANTOS        |
| CEL - 79988687909 | CARLOS VASCONCELOS |
| CEL - 79998960414 | ADRIANO SANTOS     |
| CEL - 79999179868 | LAURA SANTOS       |
| CEL - 79999766676 | ANA BEATRIZ        |
| RES - 79956576876 | CELIA GAMA         |
| RES - 79989986668 | CELIA GAMA         |
| RES - 79999667587 | JOAO SANTOS        |
+----------------------------------------+
*/
