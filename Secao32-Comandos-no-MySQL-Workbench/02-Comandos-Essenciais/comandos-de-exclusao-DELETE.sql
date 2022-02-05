
-- DELETE: Serve para EXCLUIR registro de uma tabela inteira.

DELETE TABLE resultados;

DELETE TABLE clientes;
 
DELETE TABLE filmes;
 
DELETE TABLE alugueis;

DELETE TABLE atores;

DELETE DATABASE hashtagidiomas;



-- DELETE + WHERE: Serve para EXCLUIR registro de uma determinada linha de uma tabela.

DELETE TABLE resultados
WHERE id_empresa = 2;

DELETE TABLE clientes
WHERE id_cliente = 20;
 
DELETE TABLE filmes
WHERE id_filme = 10;
 
DELETE TABLE alugueis
WHERE id_aluguel = 15;

DELETE TABLE atores
WHERE id_ator = 50;

