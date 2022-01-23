create table departamentos(
    departamento varchar(100),
    divisao varchar(100),
    primary key (departamento)
);



create table localizacao(
    idRegiao int,
    localizacao varchar(20),
    pais varchar(20),
    primary key (idRegiao)
);



create table funcionarios(
  idFuncionario integer,
  nome varchar(100),
  email varchar(200),
  sexo varchar(10),
  departamento varchar(100),
  admissao date,
  salario integer,
  cargo varchar(100),
  idRegiao int,
  primary key (idFuncionario)
);


