-- Retorna o dia da semana de uma data armazenada na coluna de uma tabela. 
-- Essa função também pode ser usada considerando diretamente uma data,
-- sem necessariamente consultar tabelas.

SELECT DAYOFWEEK(DATA_ADMISSAO) FROM FUNCIONARIOS;

-- Obs: A consulta acima retornou o dia da semana das datas de admissão. 
-- Por exemplo, a primeira linha informa que a data consultada equivale
-- ao terceiro dia da semana