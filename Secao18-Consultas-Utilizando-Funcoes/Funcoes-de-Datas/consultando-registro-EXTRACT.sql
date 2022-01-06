-- Retorna o ano, mês ou dia de uma data armazenada na coluna de uma tabela. 
-- Essa função também pode ser usada considerando diretamente uma data, 
-- sem necessariamente consultar tabelas.

SELECT EXTRACT(YEAR FROM DATA_ADMISSAO) FROM FUNCIONARIOS;

SELECT EXTRACT(MONTH FROM DATA_ADMISSAO) FROM FUNCIONARIOS;

SELECT EXTRACT(DAY FROM DATA_ADMISSAO) FROM FUNCIONARIOS;