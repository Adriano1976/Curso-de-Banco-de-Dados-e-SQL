-- Formata uma data armazenada na coluna de uma tabela. Essa função também 
-- pode ser usada considerando diretamente uma data, sem necessariamente 
-- consultar tabelas.

SELECT DATE_FORMAT(ADMISSAO, '%d/%m/%Y') AS ADMISSAO
FROM FUNCIONARIOS;

-- Obs: A consulta acima transforma a data do formato americano para o europeu.