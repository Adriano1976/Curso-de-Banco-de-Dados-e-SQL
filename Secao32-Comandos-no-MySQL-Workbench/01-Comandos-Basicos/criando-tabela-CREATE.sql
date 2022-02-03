

CREATE TABLE `resultados` (
  `id_empresa` int DEFAULT NULL,
  `titulo` text,
  `nome` text,
  `sigla` text,
  `url` text,
  `sede` text,
  `setor` text,
  `industria` text,
  `num_funcionarios` int DEFAULT NULL,
  `receitas` int DEFAULT NULL,
  `lucros` int DEFAULT NULL,
  `ativos` int DEFAULT NULL,
  `capital_proprio` int DEFAULT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
