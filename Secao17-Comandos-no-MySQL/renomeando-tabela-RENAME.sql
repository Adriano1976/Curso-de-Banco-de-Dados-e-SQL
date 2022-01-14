-- Se desejarmos mudar o nome da tabela, usaremos a seguinte sintaxe:

ALTER TABLE ALUNO
RENAME TO ESTUDANTE;

-- Se desejarmos mudar o nome da tabela e mudar de uma base de dados para outro,
-- usaremos a seguinte sintaxe:

-- Criando uma nova base de dados chamada colaboradores.

CREATE DATABASE colaboradores;

-- Trasnferindo a tabela funcionariios com os dados para outra base de dados.

RENAME TABLE exercicio.funcionarios TO colaboradores.funcionarios; 

-- Apagando a base de dados quando já estiver vazia caso deseje.

DROP database exercicio;