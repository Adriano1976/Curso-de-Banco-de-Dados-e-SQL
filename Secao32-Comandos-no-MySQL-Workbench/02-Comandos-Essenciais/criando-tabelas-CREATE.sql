/* 
 A hashtagmovie é um banco de dados que tem como principal objetivo armazenar as 
 informações de desempenho dos filmes alugados pelo serviço de streaming da empresa 
 ao longo do período.

 Esse banco de dados é composto por 5 tabelas: 
 alugueis, atores, atuacoes, clientes e filmes

 Esses dados serão fundamentais para que futuramente sejam feitas análises dos dados para 
 tomadas de decisão de curto e longo prazo, como:
 i) Decisão de investir em determinados filmes baseado na sua popularidade (nota)
 ii) Número total de locações definirá a RECEITA DA EMPRESA
 iii) A média de avaliação dos filmes definirá a SATISFAÇÃO DOS CLIENTES
 iv) O número de clientes ativos definirá o ENGAJAMENTO DOS CLIENTES

 O projeto então terá alguns objetivos, como:
 • Descobrir as preferências dos clientes de acordo com região e sexo
 • Popularidade dos filmes por gênero e ano de lançamento
 • Filmes com nota acima da média
 • Dentre outros
*/


CREATE TABLE `alugueis` (
  `id_aluguel` int DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_filme` int DEFAULT NULL,
  `nota` text,
  `data_aluguel` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `atores` (
  `id_ator` int DEFAULT NULL,
  `nome_ator` text,
  `ano_nascimento` int DEFAULT NULL,
  `nacionalidade` text,
  `sexo` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `atuacoes` (
  `id_protagonista` int DEFAULT NULL,
  `id_filme` int DEFAULT NULL,
  `id_ator` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `clientes` (
  `id_cliente` int DEFAULT NULL,
  `nome_cliente` text,
  `estado` text,
  `regiao` text,
  `sexo` text,
  `data_nascimento` text,
  `data_criacao_conta` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `filmes` (
  `id_filme` int DEFAULT NULL,
  `titulo` text,
  `genero` text,
  `duracao` int DEFAULT NULL,
  `ano_lancamento` int DEFAULT NULL,
  `preco_aluguel` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
