-- Podemos utilizar a cláusula MODIFY para modificar as propriedades de um campo em uma tabela.

ALTER TABLE ALUNO
MODIFY NOME VARCHAR(100) NOT NULL;

ALTER TABLE FUNCIONARIOS
MODIFY SALARIO DECIMAL(8,2) NULL;