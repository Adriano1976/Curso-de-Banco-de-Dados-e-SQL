
-- CRIANDO UMA DE VIEW DE LEITURA E MODIFICAÇÃO DE DADOS ----------------

create or replace view v_funcionario
	as 
	select idFuncionario, nome, email, sexo, departamento, salario, cargo  
	from funcionario;

/*
View V_FUNCIONARIO criado.
*/


insert into v_funcionario values (40,'Martines','martines@blinklist.com','Masculino','Lar',61739,'Quality Engineer',1);
insert into v_funcionario values (41,'William','willian@rediff.com','Masculino','Jardim',82026,'Nurse',2);
insert into v_funcionario values (42,'Kerson','kerson12@rediff.com','Masculino','Bebês',79339,'Civil Engineer',1);



-- CRIANDO UMA VIEW SÓ DE LEITURA DE DADOS -------------------------------

create or replace view v_funcionario_ro
	as 
	select idFuncionario, nome, email, sexo, departamento, salario, cargo  
	from funcionario
	with read only;

/*
View V_FUNCIONARIO_RO criado.
*/


insert into v_funcionario_ro values (43,'Christiane','chistiane10@blinklist.com','Feminino','Lar',61739,'Quality Engineer',1);
insert into v_funcionario_ro values (44,'Sharlene','sharlene@rediff.com','Feminino','Jardim',82026,'Nurse',2);
insert into v_funcionario_ro values (45,'Christian','christian12@rediff.com','Masculino','Bebês',79339,'Civil Engineer',1);

/*

Erro a partir da linha : 149 no comando -
insert into v_funcionario_ro values (43,'Christiane','chistiane10@blinklist.com','Feminino','Lar',61739,'Quality Engineer',1)
Erro na Linha de Comandos : 149 Coluna : 1
Relatório de erros -
Erro de SQL: ORA-42399: não é possível efetuar uma operação de DML em uma view somente para leitura
42399.0000 - "cannot perform a DML operation on a read-only view"

Erro a partir da linha : 150 no comando -
insert into v_funcionario_ro values (44,'Sharlene','sharlene@rediff.com','Feminino','Jardim',82026,'Nurse',2)
Erro na Linha de Comandos : 150 Coluna : 1
Relatório de erros -
Erro de SQL: ORA-42399: não é possível efetuar uma operação de DML em uma view somente para leitura
42399.0000 - "cannot perform a DML operation on a read-only view"

Erro a partir da linha : 151 no comando -
insert into v_funcionario_ro values (45,'Christian','christian12@rediff.com','Masculino','Bebês',79339,'Civil Engineer',1)
Erro na Linha de Comandos : 151 Coluna : 1
Relatório de erros -
Erro de SQL: ORA-42399: não é possível efetuar uma operação de DML em uma view somente para leitura
42399.0000 - "cannot perform a DML operation on a read-only view"

*/

-- CRIANDO VIEW DE JOIN --------------------------------------------------------------

create or replace view relatorio
	as   
	select nome, sexo, numero  
	from funcionario inner join telefone
	on idFuncionario = id_funcionario;


-- CRIANDO VIEW DE JOIN MESMO SEM A TABELA DE ORIGEM USANDO A CLAUSULA "FORCE"

create or replace force view relatorio
	as   
	select nome, sexo, numero  
	from funcionario inner join telefone
	on idFuncionario = id_funcionario;


-- CONSULTANDO UMA VIEW ---------------------------------------------------

select * from relatorio;


-- CRIANDO TABELA TELEFONE ------------------------------------------------

create table telefone(
	idtelefone int primary key,
	tipo char(3),
	numero varchar2(10),
	id_funcionario int  
);

alter table telefone add constraint fk_funcionario_telefone
foreign key (id_funcionario) references funcionario;

insert into telefone values(1,'cel','7958472514',1)

commit;

select * from relatorio;

-- CRIANDO UMA VIEW DEPOIS DA TABELA DE REFERENCIA TER SIDO CRIADA ----------------

create or replace view v_relatorio
	as   
	select nome, sexo, numero  
	from funcionario f  
	inner join telefone
	on idFuncionario = id_funcionario;

-- CRIANDO UMA VIEW MESMO SEM UMA TABELA DE REFERENCIA -----------------------------

create or replace force view v_relatorio
	as   
	select nome, sexo, numero  
	from funcionario f  
	inner join telefone
	on idFuncionario = id_funcionario;


-- CRIANDO UMA VIEW USANDO JOIN E PONTERAÇÃO SOMENTE DE LEITURA --------------------

create or replace view relatorio_compl_ro
	as   
	select F.nome, F.email, F.sexo, F.departamento, F.cargo, T.tipo, T.numero, L.localizacao, L.pais  
	from funcionario F  
	inner join telefone T
	on F.idFuncionario = T.id_funcionario
	inner join localizacao L
	on F.idRegiao = L.idRegiao
	with read only;

/*
View RELATORIO_COMPL_RO criado.
*/
