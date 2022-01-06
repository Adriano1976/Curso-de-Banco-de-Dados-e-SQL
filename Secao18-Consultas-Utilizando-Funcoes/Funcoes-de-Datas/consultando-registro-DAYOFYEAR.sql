-- retorna o dia do ano de uma data armazenada na coluna de uma tabela. 
-- Essa função também pode ser usada considerando diretamente uma data, 
-- sem necessariamente consultar tabelas.

SELECT DAYOFYEAR(DATA_ADMISSAO) FROM FUNCIONARIOS;

-- Obs: A consulta acima retornou o dia do ano das datas de admissão. 
-- Por exemplo, a primeira linha informa que a data consultada equivale 
-- ao primeiro dia do ano.