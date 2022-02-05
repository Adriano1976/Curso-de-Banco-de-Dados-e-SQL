
-- VIEW - Serve para gravar e nomear uma Query criada.

CREATE VIEW contador_filme AS  
SELECT data_criacao_conta COUNT(*) AS "Nº de clientes" 
FROM clientes 
WHERE sexo = 'feminino'
GROUP BY data_criacao_conta
HAVING COUNT(*) > 1;


CREATE VIEW v_relatorio_alugueis AS
SELECT
    titulo,
    COUNT(*) AS num_alugueis,
    ROUND(AVG(nota),2) AS media_nota,
    ROUND(SUM(preco_aluguel),2) AS receita_total
FROM alugueis
LEFT JOIN filmes
ON alugueis.id_filme = filmes.id_filme
GROUP BY titulo
ORDER BY num_alugueis DESC;


CREATE VIEW v_projecao_lucros AS  
SELECT 
    id_empresa,
    titulo, 
    nome, 
    sigla,
    sede, 
    setor, 
    industria,
    receitas
    lucros, 
    TRUNCATE(POWER(lucros,1.005),2) AS "novos lucros"
FROM resultados;
