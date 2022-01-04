-- Selecione o nome, telefone e email do aluno ADRIANO SANTOS.

-- 1º PASSO: Visualizar todos os registros da tabela aluno.

SELECT * FROM ALUNO;

-- 2º PASSO: Filtrar o registro pelo nome do aluno solicitado.

SELECT * FROM ALUNO
WHERE NOME = 'ADRIANO' AND SOBRENOME = 'SANTOS';

-- 3º PASSO: Refinar a filtragem de acordo com a solicitação

-- Alternativa 1

SELECT A.NOME, A.SOBRENOME, A.EMAIL, T.NUMERO AS TELEFONE
FROM ALUNO A
INNER JOIN TELEFONE T
ON A.IDALUNO = T.ID_ALUNO
WHERE A.IDALUNO = 6;

-- Alternativa 2

SELECT A.NOME, A.SOBRENOME, A.EMAIL, T.NUMERO AS TELEFONE
FROM (ALUNO A JOIN TELEFONE T ON A.IDALUNO = T.ID_ALUNO)
WHERE A.IDALUNO = 6;

-- Informe um relatório completo do aluno matriculado na escola do sexo masculino.

SELECT A.NOME, A.SEXO, A.EMAIL, A.CPF, 
	   E.RUA_AV, E.BAIRRO, E.CIDADE, E.ESTADO, 
	   T.TIPO, T.NUMERO AS TELEFONE
FROM ALUNO A
INNER JOIN ENDERECO E
ON A.IDALUNO = E.ID_ALUNO
INNER JOIN TELEFONE T
ON A.IDALUNO = T.ID_ALUNO
WHERE SEXO = 'M';

/*
+---------+------+-------------------------+-------------+------------------------------+----------------------------+---------+--------+------+-------------+
| NOME    | SEXO | EMAIL                   | CPF         | RUA_AV                       | BAIRRO                     | CIDADE  | ESTADO | TIPO | TELEFONE    |
+---------+------+-------------------------+-------------+------------------------------+----------------------------+---------+--------+------+-------------+
| JOAO    | M    | joaosantos@ig.com       | 76567587887 | Rua Sete de Setembro         | Aeroporto                  | Aracaju | SE     | CEL  | 79987866896 |
| JOAO    | M    | joaosantos@ig.com       | 76567587887 | Rua Sete de Setembro         | Aeroporto                  | Aracaju | SE     | RES  | 79999667587 |
| JOAO    | M    | joaosantos@ig.com       | 76567587887 | Rua Sete de Setembro         | Aeroporto                  | Aracaju | SE     | CEL  | 79966687899 |
| CARLOS  | M    | CARLOSA@IG.COM          | 5464553466  | Rua José Lisboa dos Santos   | Santo Antônio              | Aracaju | SE     | CEL  | 79988687909 |
| CARLOS  | M    | CARLOSA@IG.COM          | 5464553466  | Rua José Lisboa dos Santos   | Santo Antônio              | Aracaju | SE     | CEL  | 79954768899 |
| CELIA   | M    | JCELIA@IG.COM           | 5767876889  | Rua José Augusto dos Santos  | Farolândia                 | Aracaju | SE     | CEL  | 79978458743 |
| CELIA   | M    | JCELIA@IG.COM           | 5767876889  | Rua José Augusto dos Santos  | Farolândia                 | Aracaju | SE     | RES  | 79956576876 |
| CELIA   | M    | JCELIA@IG.COM           | 5767876889  | Rua José Augusto dos Santos  | Farolândia                 | Aracaju | SE     | RES  | 79989986668 |
| ADRIANO | M    | ADRIANO.GIT@HOTMAIL.COM | 89456974258 | Rua B                        | Zona de Expansão (Aruana)  | Aracaju | SE     | CEL  | 79998960414 |
+---------+------+-------------------------+-------------+------------------------------+----------------------------+---------+--------+------+-------------+
*/

-- Informe um relatório completo do aluno matriculado na escola do sexo feminino.

SELECT A.NOME, A.SEXO, A.EMAIL, A.CPF, 
	   E.RUA_AV, E.BAIRRO, E.CIDADE, E.ESTADO, 
	   T.TIPO, T.NUMERO AS TELEFONE
FROM ALUNO A
INNER JOIN ENDERECO E
ON A.IDALUNO = E.ID_ALUNO
INNER JOIN TELEFONE T
ON A.IDALUNO = T.ID_ALUNO
WHERE SEXO = 'F';

/*
+-------+------+-----------------+-------------+---------------+-----------------+---------+--------+------+-------------+
| NOME  | SEXO | EMAIL           | CPF         | RUA_AV        | BAIRRO          | CIDADE  | ESTADO | TIPO | TELEFONE    |
+-------+------+-----------------+-------------+---------------+-----------------+---------+--------+------+-------------+
| ANA   | F    | ANA@IG.COM      | 456545678   | Rua A         | Cidade Nova     | Aracaju | SE     | CEL  | 79978989765 |
| ANA   | F    | ANA@IG.COM      | 456545678   | Rua A         | Cidade Nova     | Aracaju | SE     | CEL  | 79999766676 |
| LAURA | F    | LAURA@GMAIL.COM | 25100569845 | Rua Geruzinho | Getúlio Vargas  | Aracaju | SE     | CEL  | 79999179868 |
| CLARA | F    | CLARA@HOTMAIL   | 5687766856  | Rua Geruzinho | Getúlio Vargas  | Aracaju | SE     | CEL  | 79964680009 |
+-------+------+-----------------+-------------+---------------+-----------------+---------+--------+------+-------------+
*/