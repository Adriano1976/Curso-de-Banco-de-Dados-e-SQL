/*
 Os comandos de filtragem nos permitem criar filtros nas nossas tabelas dos bancos de dados.
*/


-- FILTROS DE NÚMEROS: Podemos aplicar filtros em colunas numéricas.
-- Para isso, basta utilizar os sinais lógicos como =, <, >, <=, >=, <>.

SELECT * FROM alugueis 
WHERE id_aluguel <= 5;

SELECT * FROM atores 
WHERE ano_nascimento >= 1976;

SELECT * FROM clientes 
WHERE id_cliente = 20;

SELECT * FROM filmes 
WHERE duracao >= 60;


-- FILTROS DE TEXTOS: Podemos aplicar filtros em colunas de texto. Para isso, basta 
-- utilizar o sinal de = e especificar o texto que deseja usar como critério do filtro 
-- (ou o <> caso queira apenas o que for diferente de).

SELECT * FROM atores 
WHERE nacionalidade = 'Somália';

SELECT * FROM clientes 
WHERE estado = 'Bahia';

SELECT * FROM filmes 
WHERE genero <> 'Comédia';


-- FILTROS DE DATAS: Podemos aplicar filtros em colunas de data.
-- Para isso, basta utilizar os sinais lógicos como =, <, >, <=, >=, <>.

SELECT * FROM alugueis 
WHERE data_aluguel <= '2018/10/09';

SELECT * FROM clientes 
WHERE data_criacao_conta = '2018/06/20';


-- OPERADOR AND: Podemos aplicar mais de um filtro usando o AND.
-- Com ele, todas as condições devem ser satisfeitas para que o resultado seja mostrado.

SELECT * FROM alugueis 
WHERE nota = '10' AND data_aluguel = '2018/06/05';

SELECT * FROM atores 
WHERE ano_nascimento = 1982 AND nascionalidade = 'EUA';

SELECT * FROM clientes 
WHERE regiao = 'Nordeste' AND sexo = 'Feminino';

SELECT * FROM filmes 
WHERE titulo = 'Seu marido e minha mulher' AND genero = 'Comédia';


-- OPERADOR OR: Podemos aplicar mais de um filtro usando o OR.
-- Com ele, apenas uma condição precisa ser satisfeita para que o resultado seja mostrado.

SELECT * FROM alugueis 
WHERE nota = '10' OR data_aluguel = '2018/06/05';

SELECT * FROM atores 
WHERE ano_nascimento = 1982 OR nascionalidade = 'EUA';

SELECT * FROM clientes 
WHERE regiao = 'Nordeste' OR sexo = 'Feminino';

SELECT * FROM filmes 
WHERE titulo = 'Seu marido e minha mulher' OR genero = 'Comédia';


-- OPERADOR IN: Com o operador IN, podemos passar uma lista de valores que serão
-- utilizados como filtro na coluna.

SELECT * FROM atores 
WHERE nacionalidade IN ('Canadá', 'Porto Rico', 'Irlanda');

SELECT * FROM clientes 
WHERE estado IN ('Sergipe', 'Bahia', 'Recife');

SELECT * FROM filmes 
WHERE genero IN ('Comédia', 'Drama');


-- FILTRO BETWEEN: Com o operador IN, podemos passer uma lista de valores que
-- serão utilizados como filtro na nossa coluna.

SELECT * FROM atores 
WHERE ano_nascimento BETWEEN 1980 AND 1983;

SELECT * FROM filmes 
WHERE ano_lancamento BETWEEN 2000 AND 2003;
