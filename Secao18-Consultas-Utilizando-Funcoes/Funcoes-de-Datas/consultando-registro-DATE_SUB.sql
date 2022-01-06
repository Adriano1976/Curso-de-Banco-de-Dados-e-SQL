-- Subtrai dias de uma data armazenada na coluna de uma tabela. 
-- Essa função também pode ser usada considerando diretamente uma data, 
-- sem necessariamente consultar tabelas.

SELECT DATE_SUB(DATA_DEMISSAO, INTERVAL 15 DAY) FROM FUNCIONARIOS;

-- Obs: Na consulta acima, foram subtraídos 15 dias da data de demissão dos empregados
-- da empresa. Essa função também pode utilizar intervalos de meses (month) ou anos
-- (year).