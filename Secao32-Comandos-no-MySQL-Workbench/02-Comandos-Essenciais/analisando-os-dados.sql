
# 1. APRESENTAÇÃO
-- A hashtagmovie é um banco de dados que tem como principal objetivo armazenar as 
-- informações de desempenho dos filmes alugados pelo serviço de streaming da empresa 
-- ao longo do período. 

-- Esse banco de dados é composto por 5 tabelas:
	# alugueis: armazena os dados relacionados aos aluguéis dos filmes
    # atores: armazena os dados dos atores dos diferentes filmes
    # atuacoes: tabela contendo a participação de cada ator no respectivo filme
    # clientes: tabela com os dados dos clientes da empresa
    # filmes: dados sobre os filmes disponíveis para aluguel


-- Esses dados serão fundamentais para que futuramente sejam feitas análises dos dados 
-- para tomadas de decisão de curto e longo prazo, como:

-- i) Decisão de investir em determinados filmes baseado na sua popularidade (nota)
-- ii) Número total de locações definirá a RECEITA DA EMPRESA
-- iii) A média de avaliação dos filmes definirá a SATISFAÇÃO DOS CLIENTES
-- iv) O número de clientes ativos definirá o ENGAJAMENTO DOS CLIENTES

-- O projeto então terá alguns objetivos, como:	
		-- Descobrir as preferências dos clientes de acordo com região e sexo
		-- Popularidade dos filmes por gênero e ano de lançamento
        -- Filmes com nota acima da média
        -- Dentre outros
        
-- Para que a gente seja capaz de realizar todas essas análises, precisaremos 
-- aprender os COMANDOS ESSENCIAIS, que serão mostrados aqui.



# =======        PARTE 1:       =============================================#
# =======  COMANDOS DE SELEÇÃO  =============================================#


-- SELECT, SELECT LIMIT, SELECT DISTINCT 

-- 1. Você foi alocado como analista responsável da hashtagmovie. 
-- Seu primeiro desafio é fazer um reconhecimento das tabelas do banco de dados, 
-- isso será importante para as próximas etapas do projeto.
-- Além disso, identifique a quantidade de linhas que existem para cada tabela. 
-- Esse check será importante para garantir que nenhuma informação está faltando.

SELECT * FROM alugueis;
SELECT * FROM atores;
SELECT * FROM atuacoes;
SELECT * FROM clientes;
SELECT * FROM filmes;

SELECT COUNT(*) FROM alugueis;
SELECT COUNT(*) FROM atores;
SELECT COUNT(*) FROM atuacoes;
SELECT COUNT(*) FROM clientes;
SELECT COUNT(*) FROM filmes;


-- 2. Pensando que as tabelas do SQL podem ter milhões de linhas, para fazer o 
-- reconhecimento de tabelas nem sempre é necessário visualizar todas as linhas, 
-- basta verificar as N primeiras linhas. Por isso, uma boa prática para selecionar os 
-- dados no SQL é limitar a quantidade de linhas que são visualizadas na tabela. 

-- a) Utilize o comando LIMIT para visualizar apenas as 10 primeiras linhas da 
-- tabela de FILMES.

SELECT * FROM filmes
LIMIT 10;


-- b) Utilize o comando LIMIT para visualizar apenas as 50 primeiras linhas da tabela de 
-- CLIENTES.

SELECT * FROM clientes
LIMIT 50;


-- 3. O responsável pela criação das tabelas disse que os filmes se dividem em um total 
-- de 7 GÊNEROS: 1) Comédia; 2) Drama; 3) Ficção e Fantasia; 4) Mistério e Suspense; 
-- 5) Arte; 6) Animação; 7) Ação e Aventura. Nesse momento, você terá o IMPORTANTE 
-- trabalho de verificar se todos esses gêneros estão de fato presentes na tabela FILMES. 
-- Caso não esteja, você deverá reportar ao responsável.

SELECT DISTINCT genero FROM filmes;


-- 4. A empresa sabe que precisa expandir seu mercado para o máximo de estados possível. 
-- Como analista dos dados, você deverá identificar quais são os estados onde atualmente 
-- a empresa possui clientes. Quantos são esses estados no total? Pensando que o país 
-- tem 27 UF (26 estados + DF), ainda há espaço para expandir para quantos estados?

SELECT DISTINCT estado FROM clientes;



# =======         PARTE 2:        =======#
# =======  COMANDOS DE ORDENAÇÃO  =======#

-- ORDER BY ASC, ORDER BY DESC

-- 1. Faça uma análise em cima do ano de nascimento de cada um dos atores. 
-- Ordene a tabela de atores para mostrar os atores com os anos de nascimento do maior 
-- para o menor.

SELECT * FROM atores 
ORDER BY ano_nascimento DESC;


-- 2. O setor de controle de dados vai precisar fazer uma segmentação dos clientes, 
-- separando por ordem alfabética. Faça uma ordenação na tabela de clientes a partir da 
-- coluna nome_cliente para facilitar o trabalho dos seus colegas.

SELECT * FROM clientes
ORDER BY nome_cliente ASC;


-- 3. Na tabela de clientes, tente descobrir qual foi o cliente com a data de criação 
-- de conta mais antiga, ou seja, o primeiro cliente cadastrado na base.

SELECT * FROM clientes
ORDER BY data_criacao_conta ASC;

SELECT * FROM clientes
ORDER BY data_criacao_conta
LIMIT 1;


-- 4. A empresa gostaria de saber quais são os TOP 5 filmes com a maior duração. 
-- Você seria capaz de fazer essa análise?

SELECT * FROM filmes
ORDER BY duracao DESC
LIMIT 5;



# =======         PARTE 3:        =======#
# =======  COMANDOS DE FILTRAGEM  =======#

-- WHERE (padrão, AND/OR, IN, BETWEEN)


-- 1. A empresa deseja incluir em seu catálogo mais filmes do gênero de COMÉDIA. 
-- Para isso, ela deverá adquirir os direitos de transmissão junto ao estúdio responsável.
-- Porém, a empresa deve tomar cuidado para não negociar um filme que já existe em seu 
-- catálogo. O seu trabalho, portanto, é listar todos os filmes do gênero COMÉDIA e 
-- fornecer essas informações ao seu gestor.

SELECT * FROM filmes
WHERE genero = 'Comédia';


-- 2. A equipe de estratégia fez um levantamento com os críticos de cinema mais conhecidos 
-- e descobriram que o ano de 2003 foi um dos anos de sucesso do cinema. Alguns desses 
-- críticos foram contratados para ajudar na melhoria do catálogo de filmes, e querem 
-- sugerir mais opções de filmes que foram lançados em 2003. Para isso, os críticos 
-- contratados precisarão da lista de filmes que a empresa já tem, para que eles possam 
-- avaliar se esses filmes realmente são boas opções de se ter no catálogo, e também 
-- aproveitar para sugerir outros títulos. O seu trabalho, portanto, é fazer uma consulta 
-- ao banco de dados para essa solicitação do projeto. 

SELECT * FROM filmes
WHERE ano_lancamento = 2003;


-- 3. Um dos analistas da equipe percebeu que alguns filmes do gênero Drama, com mais de 
-- 120 minutos de duração, não tinham uma boa avaliação dos clientes. Por isso, ele 
-- levantou a ideia de se analisar com mais cuidado todos os filmes que se enquadrassem 
-- nesses critérios, para verificar se de fato eles estão tendo um baixo rendimento. O seu 
-- trabalho é listar todos esses filmes para que seja possível realizar essa análise.

SELECT * FROM filmes
WHERE genero = 'Drama' AND duracao >= 120;


-- 4. A empresa está percebendo que os países do: Canadá, Austrália e Irlanda do Norte 
-- estão produzindo bons filmes nos últimos anos. Vendo esse movimento, a empresa decidiu 
-- listar todos os atores dessas nacionalidades para pesquisar filmes relacionados e 
-- avaliar a possibilidade de incluir mais opções no catálogo, referentes ao cinema desses 
-- 3 países. O seu trabalho é listar todos os atores de nacionalidade: Canadá, Austrália 
-- e Irlanda do Norte para facilitar essa análise.

SELECT * FROM atores
WHERE nacionalidade IN ('Canadá','Austrália','Irlanda do Norte');

SELECT * FROM atores
WHERE nacionalidade IN ('Canadá','Austrália','Irlanda do Norte')
ORDER BY nacionalidade;


-- 5. A empresa decidiu criar uma opção de catálogo alternativa para os seus filmes: 
-- agora, os clientes poderão escolher, por exemplo, alugar filmes na faixa de duração 
-- entre 90 min e 100 minutos. Seu trabalho será o de iniciar essa organização, e começar 
-- mostrando os filmes que possuem uma duração neste intervalo.

SELECT * FROM filmes
WHERE duracao BETWEEN 90 AND 100;


# =======        PARTE 4:       =======#
# =======  FUNÇÕES MATEMÁTICAS  =======#

-- Funções de Agregação: COUNT, COUNT DISTINCT, SUM, MIN, MAX, AVG

-- 1. A tabela de ALUGUEIS tem o registro de todos os aluguéis feitos no serviço de 
-- streaming da empresa.

-- a) Descubra a quantidade total de alugueis de filmes feitos para todo o período 
-- (utilize a coluna id_aluguel para esse cálculo).

SELECT COUNT(id_aluguel) FROM alugueis;


-- b) Descubra a quantidade total de alugueis de filmes feitos para todo o período 
-- (utilize a coluna nota para esse cálculo).

SELECT COUNT(nota) FROM alugueis;


-- c) Você viu alguma diferença no resultado? O que aconteceu?

SELECT COUNT(*) FROM alugueis;


-- 2. O setor de catálogo precisa saber quantos gêneros de filmes existem na empresa 
-- atualmente. Você saberia fazer essa análise?

SELECT COUNT(DISTINCT genero) FROM filmes;


-- 3. Quantos minutos no total a empresa possui de filmes catalogados?

SELECT SUM(duracao) FROM filmes;


-- 4. Qual é a duração em minutos do filme mais longo disponível no catálogo? 
-- E qual a duração do filme mais curto?

SELECT MAX(duracao), MIN(duracao) FROM filmes;


-- 5. Qual é a média de satisfação dos clientes da empresa em relação aos filmes 
-- alugados?

SELECT AVG(nota) FROM alugueis;



# =================  CRIANDO AGRUPAMENTOS  ============================================#

-- CASE 1. Você deverá começar fazendo uma análise para descobrir o preço médio de aluguel 
-- dos filmes.

SELECT TRUNCATE(AVG(preco_aluguel),2) AS "preco_medio"
FROM filmes;


-- Agora que você sabe o preço médio para se alugar filmes na hashtagmovie, você deverá ir 
-- além na sua análise e descobrir qual é o preço médio para cada gênero de filme.

SELECT genero, TRUNCATE(AVG(preco_aluguel),2) AS "preco_medio"
FROM filmes
GROUP BY genero;


/*
 genero                   | preco_medio
 ______________________________________
 Comédia                  | X
 Drama                    | Y
 Ficção e Fantasia        | Z
 Mistério e Suspense      | A
 Arte                     | B
 Animação                 | C
 Ação e Aventura          | D
*/

-- Você seria capaz de mostrar os gêneros de forma ordenada, de acordo com a média?

SELECT genero, TRUNCATE(AVG(preco_aluguel),2) AS "preco_medio"
FROM filmes
GROUP BY genero
ORDER BY 2;     


-- Altere a consulta anterior para mostrar na nossa análise também a quantidade de filmes 
-- para cada gênero, conforme exemplo abaixo.

/*
genero                   | preco_medio      | qtd_filmes
_______________________________________________________
Comédia                  | X                | .
Drama                    | Y                | ..
Ficção e Fantasia        | Z                | ...
Mistério e Suspense      | A                | ....
Arte                     | B                | .....
Animação                 | C                | ......
Ação e Aventura          | D                | .......
*/

SELECT 
    genero, 
    TRUNCATE(AVG(preco_aluguel),2) AS "preco_medio", 
    COUNT(genero) AS "qtd_filmes"
FROM filmes
GROUP BY genero;    


-- CASE 2. Para cada filme, descubra a classificação média, o número de avaliações e a 
-- quantidade de vezes que cada filme foi alugado. Ordene essa consulta a partir da 
-- avaliacao_media, em ordem decrescente.

SELECT 
    alugueis.id_filme, 
    filmes.titulo,
    TRUNCATE(AVG(alugueis.nota),2) AS "avaliacao_media", 
    SUM(nota) as "num_avaliacoes",
    COUNT(alugueis.data_aluguel) AS "num_alugueis"
FROM alugueis
INNER JOIN filmes
ON filmes.id_filme = alugueis.id_filme
GROUP BY alugueis.id_filme
ORDER BY 3 DESC;
/*
id_filme  | avaliacao_media   | num_avaliacoes  | num_alugueis
_______________________________________________________
1         | X                 | .               | .
2         | Y                 | ..              | ..
3         | Z                 | ...             | ...
4         | A                 | ....            | ....
5         | B                 | .....           | .....
...
*/



# ============              PARTE 2:               ==================================#
# ============  FILTROS AVANÇADOS EM AGRUPAMENTOS  ==================================#

-- CASE 3. Você deve alterar a consulta DO CASE 1 e considerar os 2 cenários abaixo:

-- Cenário 1: Fazer a mesma análise, mas considerando apenas os filmes com ANO_LANCAMENTO 
-- igual a 2011.

SELECT * FROM filmes
WHERE ano_lancamento = 2011;


-- Cenário 2: Fazer a mesma análise, mas considerando apenas os filmes dos gêneros com mais 
-- de 10 filmes.

SELECT * FROM filmes
WHERE ano_lancamento > 10;



# ====================              PARTE 3:              =============================#
# ====================  RELACIONANDO TABELAS COM O JOIN   =============================#


-- CASE 4. Selecione a tabela de Atuações. Observe que nela, existem apenas os ids dos 
-- filmes e ids dos atores. Você seria capaz de completar essa tabela com as informações 
-- de títulos dos filmes e nomes dos atores?

SELECT 
    atuacoes.*,
    filmes.titulo,
    atores.nome_ator,
FROM atuacoes
INNER JOIN filmes
ON atuacoes.id_filme = filmes.id_filme
INNER JOIN atores
ON atuacoes.id_ator = atores.id_ator;


-- CASE 5. Média de avaliações dos clientes

SELECT ROUND(AVG(nota),2) AS "avaliacao_media"
FROM alugueis;



# =========                         PARTE 4:                           =================#
# =========  SUBQUERIES: UTILIZANDO UM SELECT DENTRO DE OUTRO SELECT   =================#

-- CASE 6. Você precisará fazer uma análise de desempenho dos filmes. Para isso, uma 
-- análise comum é identificar quais filmes têm uma nota acima da média. Você seria capaz 
-- de fazer isso?

SELECT -- FAZER A CORREÇÃO ????????????????????????????????????????????
    filmes.id_filme, 
    filmes.titulo, 
    alugueis.nota
FROM filmes INNER JOIN alugueis
ON filmes.id_filme = alugueis.id_filme
HAVING nota < (SELECT TRUNCATE(AVG(nota),2) AS "avaliacao_media");


-- CASE 7. A administração da MovieNow quer relatar os principais indicadores de desempenho
-- (KPIs) para o desempenho da empresa em 2018. Eles estão interessados em medir os sucessos 
-- financeiros, bem como o envolvimento do usuário. Os KPIs importantes são, portanto, 
-- a receita proveniente da locação de filmes, o número de locações de filmes e o número 
-- de clientes ativos (descubra também quantos clientes não estão ativos).

SELECT  -- FAZER A CORREÇÃO ?????????????????????????????????????????
    SUM(filmes.id_filme) AS "filmes_total",
    SUM(alugueis.id_aluguel) AS "locacao_total" ,
    SUM(alugueis.id_cliente) AS "clientes_ativos_total"
    SUM(clientes.id_cliente) AS "clientes_cadastrado_total", 
    SUM(filmes.preco_aluguel) AS "receita_total",
    SUM(alugueis.id_cliente) - SUM(clientes.id_cliente) AS "clientes_inativos_total"
FROM alugueis 
INNER JOIN filmes
ON alugueis.id_filme = filmes.id_filme
INNER JOIN clientes
ON alugueis.id_cliente = clientes.id_cliente;


# =======================   PARTE 5:     ===============================================#
# =======================  CREATE VIEW   ===============================================#


-- CREATE/DROP VIEW: Guardando o resultado de uma consulta no nosso banco de dados


-- CASE 8. Crie uma view para guardar o resultado do SELECT abaixo.


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


-- Construindo uma VIEW --------------------------------------------

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
