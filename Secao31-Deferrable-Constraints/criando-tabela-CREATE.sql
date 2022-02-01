
create table regioes(
    idRegiao int primary key,
    regiao varchar2(20),
    pais varchar2(20)  
);


create table colaboradores(
  idColaborador int constraint pk_colaborador primary key,
  nome varchar2(20),
  email varchar2(30),
  sexo varchar2(15),
  departamento varchar2(20),  
  salario int,
  cargo varchar2(40),
  id_Regiao int  
);


create table telephones(
  idTelefone int primary key,
  tipo char(3),
  numero varchar2(10),
  id_Colaborador int  
);

alter table telephones add constraint fk_telephone_colaborador
foreign key (id_Colaborador) references colaboradores;

