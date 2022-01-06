-- Retorna o intervalo entre duas datas armazenadas nas colunas de uma tabela. 
-- Essa função também pode ser usada considerando diretamente duas datas,
-- sem necessariamente consultar tabelas.

SELECT DATEDIFF(DATA_DEMISSAO, DATA_ADMISSAO) FROM FUNCIONARIOS;

-- Obs: Na consulta acima, foi calculado o número de dias que cada empregado 
-- trabalhou na empresa.