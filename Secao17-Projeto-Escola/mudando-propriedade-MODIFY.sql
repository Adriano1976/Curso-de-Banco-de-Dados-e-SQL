-- Podemos utilizar a cláusula MODIFY para modificar as propriedades de um campo em uma tabela.

ALTER TABLE ALUNO
MODIFY NOME VARCHAR(100) NOT NULL;

ALTER TABLE FUNCIONARIOS
MODIFY SALARIO DECIMAL(8,2) NULL;


-- Podemos utilizar a cláusula MODIFY para adicionar o AUTO_INCREMENT na tabela já criada:

/* Desabilite a checagem da chave estrangeira */

SET FOREIGN_KEY_CHECKS = 0;

/* Adicione o AUTO_INCREMENT na chave primaria */

ALTER TABLE FUNCIONARIOS
MODIFY COLUMN IDFUNCIONARIOS INT NOT NULL AUTO_INCREMENT;

/* Habilite a checagem da chave estrangeira */

SET FOREIGN_KEY_CHECKS = 1;