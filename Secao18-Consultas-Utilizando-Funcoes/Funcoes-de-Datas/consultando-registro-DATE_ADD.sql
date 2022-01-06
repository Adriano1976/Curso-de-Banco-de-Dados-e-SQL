-- Adiciona dias a uma data armazenada na coluna de uma tabela. 
-- Essa função também pode ser usada considerando diretamente uma data,
-- sem necessariamente consultar tabelas.

SELECT DATE_ADD(DATA_DEMISSAO, INTERVAL 30 DAY) FROM FUNCIONARIOS;

-- Obs: Na consulta acima, foram acrescentados 30 dias à data de demissão dos
-- empregados da empresa. Essa função também pode utilizar intervalos de meses (month)
-- ou anos (year).