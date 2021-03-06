
create table localizacao(
    idRegiao int primary key,
    localizacao varchar2(20),
    pais varchar2(20)  
);

/*
Table LOCALIZACAO criado.
*/



create table funcionario(
  idFuncionario int primary key,
  nome varchar2(100),
  email varchar2(200),
  sexo varchar2(10),
  departamento varchar2(100),  
  salario int,
  cargo varchar2(100),
  idRegiao int  
);

/*
Table FUNCIONARIO criado.
*/


create table telefone(
  idtelefone int primary key,
  tipo char(3),
  numero varchar2(10),
  id_funcionario int  
);

alter table telefone add constraint fk_funcionario_telefone
foreign key (id_funcionario) references funcionario;
