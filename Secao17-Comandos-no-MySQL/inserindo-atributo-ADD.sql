-- Se desejarmos adicionar uma coluna com posição, usaremos a seguinte sintaxe:

ALTER TABLE ALUNO
ADD SOBRENOME VARCHAR(30) NOT NULL
AFTER NOME;

ALTER TABLE SALA
ADD SALA CHAR(1) NOT NULL
AFTER ANDAR;

-- Se desejarmos adicionar uma coluna sem posição, usaremos a seguinte sintaxe:

ALTER TABLE ALUNO
ADD NOME_MAE VARCHAR(100) NOT NULL;

-- Se desejarmos adicionar uma chave primária em uma tabela, usaremos a seguinte sintaxe:

ALTER TABLE ALUNO
ADD PRIMARY KEY(IDALUNO);

-- -- Se desejarmos adicionar uma coluna com DEFAULT, usaremos a seguinte sintaxe:

ALTER TABLE ALUNO
ADD COLUMN APELINDO VARCHAR(25) NOT NULL
DEFAULT 'Estudante'
FIRST NOME;