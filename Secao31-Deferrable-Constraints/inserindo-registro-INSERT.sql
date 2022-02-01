/* A CONSTRAINT DE INTEGRIDADE REFERENCIAL (fk) CHECA A INTEGRIDADE LOGO
APÓS O COMANDO DE DML(INSERT / DELETE / UPDATE), NÃO POSSIBILITANDO ASSIM
A INSERÇÃO DE REGISTROS SEM REFERENCIA */


insert into telephones values(31,'cel','7958454514',100);

/*
Erro a partir da linha : 32 no comando -
insert into telephones values(31,'cel','7958454514',100)
Relatório de erros -
ORA-02291: restrição de integridade (SYSTEM.FK_TELEPHONE_COLABORADOR) violada - chave mãe não localizada
*/

delete from colaboradores where id_Colaborador = 1;

  /*
Erro a partir da linha : 119 no comando -
delete from colaboradores where idColaborador = 1
Relatório de erros -
ORA-02292: restrição de integridade (SYSTEM.FK_TELEPHONE_COLABORADOR) violada - registro filho localizado

 */


insert into regioes values (1, 'Nordeste', 'Brasil');
insert into regioes values (2, 'Sudeste', 'Brasil');
insert into regioes values (3, 'Sul', 'Brasil');
insert into regioes values (4, 'Norte', 'Brasil');
insert into regioes values (5, 'British Columbia', 'Canada');
insert into regioes values (6, 'Quebec', 'Canada');
insert into regioes values (7, 'Nova Scotia', 'Canada');

insert into colaboradores values (1,'Kelley','rkelley0@soundcloud.com','Feminino','Computadores',67470,'Structural Engineer',2);
insert into colaboradores values (2,'Armstrong','sarmstrong1@infoseek.co.jp','Masculino','Esporte',71869,'Financial Advisor',2);
insert into colaboradores values (3,'Carr','fcarr2@woothemes.com','Masculino','Automotivo',101768,'Recruiting Manager',3);
insert into colaboradores values (4,'Murray','jmurray3@gov.uk','Feminino','Joalheria',96897,'Desktop Support Technician',3);
insert into colaboradores values (5,'Ellis','jellis4@sciencedirect.com','Feminino','Alimentícios',63702,'Software Engineer III',7);
insert into colaboradores values (6,'Phillips','bphillips5@time.com','Masculino','Ferramentas',118497,'Executive Secretary',1);
insert into colaboradores values (7,'Williamson','rwilliamson6@ted.com','Masculino','Computadores',65889,'Dental Hygienist',6);
insert into colaboradores values (8,'Harris','aharris7@ucoz.com','Feminino','Brinquedos',84427,'Safety Technician I',4);
insert into colaboradores values (9,'James','rjames8@prnewswire.com','Masculino','Joalheria',108657,'Sales Associate',2);
insert into colaboradores values (10,'Sanchez','rsanchez9@cloudflare.com','Masculino','Filmes',108093,'Sales Representative',1);
insert into colaboradores values (11,'Jacobs','jjacobsa@sbwire.com','Feminino','Joalheria',121966,'Community Outreach Specialist',7);
insert into colaboradores values (12,'Black','mblackb@edublogs.org','Masculino','Roupas',44179,'Data Coordiator',7);
insert into colaboradores values (13,'Schmidt','sschmidtc@state.gov','Masculino','Bebês',85227,'Compensation Analyst',3);
insert into colaboradores values (14,'Webb','awebbd@baidu.com','Feminino','Computadores',59763,'Software Test Engineer III',4);
insert into colaboradores values (15,'Jacobs','ajacobse@google.it','Feminino','Games',141139,'Community Outreach Specialist',7);
insert into colaboradores values (16,'Medina','smedinaf@amazonaws.com','Feminino','Bebês',106659,'Web Developer III',1);
insert into colaboradores values (17,'Morgan','dmorgang@123-reg.co.uk','Feminino','Crianças',148952,'Programmer IV',6);
insert into colaboradores values (18,'Nguyen','jnguyenh@google.com','Masculino','Lar',93804,'Geologist II',5);
insert into colaboradores values (19,'Day','rdayi@chronoengine.com','Masculino','Eletronicos',109890,'VP Sales',3);
insert into colaboradores values (20,'Carr','dcarrj@ocn.ne.jp','Feminino','Filmes',115274,'VP Quality Control',5);
insert into colaboradores values (21,'Bryant','sbryantk@wunderground.com','Feminino','Industrial',78052,'Software Consultant',3);
insert into colaboradores values (22,'Alexander','kalexanderl@marketwatch.com','Masculino','Automotivo',144724,'Marketing Assistant',2);
insert into colaboradores values (23,'Chapman','jchapmanm@archive.org','Feminino','Joalheria',126103,'Senior Developer',4);
insert into colaboradores values (24,'Kelly','ekellyn@weibo.com','Masculino','Jardim',144965,'Nurse Practicioner',2);
insert into colaboradores values (25,'Stephens','jstephenso@ow.ly','Masculino','Brinquedos',70613,'Business Systems Development Analyst',1);
insert into colaboradores values (26,'Porter','vporterp@yelp.com','Feminino','Lar',90746,'Dental Hygienist',2);
insert into colaboradores values (27,'Owens','cowensq@shareasale.com','Feminino','Lar',78698,'Executive Secretary',2);
insert into colaboradores values (28,'Scott','cscottr@sphinn.com','Feminino','Books',63336,'Sales Representative',4);
insert into colaboradores values (29,'Price','cprices@Brasil.gov','Feminino','Roupas',95436,'Quality Engineer',3);
insert into colaboradores values (30,'Weaver','dweavert@shinystat.com','Masculino','Beleza',83144,'Account Representative III',2);
insert into colaboradores values (31,'Willis','hwillisu@army.mil','Feminino','Ferramentas',113507,'Accountant I',7);
insert into colaboradores values (32,'Torres','ltorresv@amazon.de','Masculino','Games',78245,'Nuclear Power Engineer',6);
insert into colaboradores values (33,'Greene','wgreenew@blogspot.com','Masculino','Filmes',87057,'Assistant Manager',1);
insert into colaboradores values (34,'Reed','areedx@cisco.com','Masculino','Filmes',120579,'Assistant Media Planner',6);
insert into colaboradores values (35,'Smith','bsmithy@statcounter.com','Feminino','Books',94884,'Librarian',7);
insert into colaboradores values (36,'Bradley','nbradleyz@goodreads.com','Masculino','Outdoors',107222,'Payment Adjustment Coordinator',3);
insert into colaboradores values (37,'Cruz','rcruz10@blinklist.com','Feminino','Lar',61739,'Quality Engineer',1);
insert into colaboradores values (38,'Williamson','dwilliamson11@rediff.com','Feminino','Jardim',82026,'Nurse',2);
insert into colaboradores values (39,'Kennedy','skennedy12@rediff.com','Masculino','Bebês',79339,'Civil Engineer',1);


insert into telephones values(1,'cel','7958472514',1);
insert into telephones values(2,'cel','7958295514',2);
insert into telephones values(3,'cel','7945472514',3);
insert into telephones values(4,'cel','7958477534',4);
insert into telephones values(5,'cel','7958474584',5);
insert into telephones values(6,'cel','7958475814',6);
insert into telephones values(7,'cel','7952672514',7);
insert into telephones values(8,'cel','7958474584',8);
insert into telephones values(9,'cel','7958472222',9);
insert into telephones values(10,'cel','7958422214',10);
insert into telephones values(11,'cel','7978572514',11);
insert into telephones values(12,'cel','7958445814',12);
insert into telephones values(13,'cel','7932172514',13);
insert into telephones values(14,'cel','7958445814',14);
insert into telephones values(15,'cel','7952362514',15);
insert into telephones values(16,'cel','7958002514',16);
insert into telephones values(17,'cel','7958470004',17);
insert into telephones values(18,'cel','7953212514',18);
insert into telephones values(19,'cel','7958369514',19);
insert into telephones values(20,'cel','7958474564',20);
insert into telephones values(21,'cel','7958472514',21);
insert into telephones values(22,'cel','7957532514',22);
insert into telephones values(23,'cel','7958474584',23);
insert into telephones values(24,'cel','7958478914',24);
insert into telephones values(25,'cel','7958478914',25);
insert into telephones values(26,'cel','7958478914',26);
insert into telephones values(27,'cel','7958478914',27);
insert into telephones values(28,'cel','7958478914',28);
insert into telephones values(29,'cel','7958478914',29);
insert into telephones values(30,'cel','7958478914',30);
insert into telephones values(31,'cel','7958478914',35);
