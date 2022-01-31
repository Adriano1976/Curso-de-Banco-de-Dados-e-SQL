create table localizacao(
    idRegiao int primary key,
    localizacao varchar2(20),
    pais varchar2(20)  
);

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

insert into localizacao values (1, 'Nordeste', 'Brasil');
insert into localizacao values (2, 'Sudeste', 'Brasil');
insert into localizacao values (3, 'Sul', 'Brasil');
insert into localizacao values (4, 'Norte', 'Brasil');
insert into localizacao values (5, 'British Columbia', 'Canada');
insert into localizacao values (6, 'Quebec', 'Canada');
insert into localizacao values (7, 'Nova Scotia', 'Canada');

insert into funcionario values (1,'Kelley','rkelley0@soundcloud.com','Feminino','Computadores',67470,'Structural Engineer',2);
insert into funcionario values (2,'Armstrong','sarmstrong1@infoseek.co.jp','Masculino','Esporte',71869,'Financial Advisor',2);
insert into funcionario values (3,'Carr','fcarr2@woothemes.com','Masculino','Automotivo',101768,'Recruiting Manager',3);
insert into funcionario values (4,'Murray','jmurray3@gov.uk','Feminino','Joalheria',96897,'Desktop Support Technician',3);
insert into funcionario values (5,'Ellis','jellis4@sciencedirect.com','Feminino','Aliment�cios',63702,'Software Engineer III',7);
insert into funcionario values (6,'Phillips','bphillips5@time.com','Masculino','Ferramentas',118497,'Executive Secretary',1);
insert into funcionario values (7,'Williamson','rwilliamson6@ted.com','Masculino','Computadores',65889,'Dental Hygienist',6);
insert into funcionario values (8,'Harris','aharris7@ucoz.com','Feminino','Brinquedos',84427,'Safety Technician I',4);
insert into funcionario values (9,'James','rjames8@prnewswire.com','Masculino','Joalheria',108657,'Sales Associate',2);
insert into funcionario values (10,'Sanchez','rsanchez9@cloudflare.com','Masculino','Filmes',108093,'Sales Representative',1);
insert into funcionario values (11,'Jacobs','jjacobsa@sbwire.com','Feminino','Joalheria',121966,'Community Outreach Specialist',7);
insert into funcionario values (12,'Black','mblackb@edublogs.org','Masculino','Roupas',44179,'Data Coordiator',7);
insert into funcionario values (13,'Schmidt','sschmidtc@state.gov','Masculino','Beb�s',85227,'Compensation Analyst',3);
insert into funcionario values (14,'Webb','awebbd@baidu.com','Feminino','Computadores',59763,'Software Test Engineer III',4);
insert into funcionario values (15,'Jacobs','ajacobse@google.it','Feminino','Games',141139,'Community Outreach Specialist',7);
insert into funcionario values (16,'Medina','smedinaf@amazonaws.com','Feminino','Beb�s',106659,'Web Developer III',1);
insert into funcionario values (17,'Morgan','dmorgang@123-reg.co.uk','Feminino','Crian�as',148952,'Programmer IV',6);
insert into funcionario values (18,'Nguyen','jnguyenh@google.com','Masculino','Lar',93804,'Geologist II',5);
insert into funcionario values (19,'Day','rdayi@chronoengine.com','Masculino','Eletronicos',109890,'VP Sales',3);
insert into funcionario values (20,'Carr','dcarrj@ocn.ne.jp','Feminino','Filmes',115274,'VP Quality Control',5);
insert into funcionario values (21,'Bryant','sbryantk@wunderground.com','Feminino','Industrial',78052,'Software Consultant',3);
insert into funcionario values (22,'Alexander','kalexanderl@marketwatch.com','Masculino','Automotivo',144724,'Marketing Assistant',2);
insert into funcionario values (23,'Chapman','jchapmanm@archive.org','Feminino','Joalheria',126103,'Senior Developer',4);
insert into funcionario values (24,'Kelly','ekellyn@weibo.com','Masculino','Jardim',144965,'Nurse Practicioner',2);
insert into funcionario values (25,'Stephens','jstephenso@ow.ly','Masculino','Brinquedos',70613,'Business Systems Development Analyst',1);
insert into funcionario values (26,'Porter','vporterp@yelp.com','Feminino','Lar',90746,'Dental Hygienist',2);
insert into funcionario values (27,'Owens','cowensq@shareasale.com','Feminino','Lar',78698,'Executive Secretary',2);
insert into funcionario values (28,'Scott','cscottr@sphinn.com','Feminino','Books',63336,'Sales Representative',4);
insert into funcionario values (29,'Price','cprices@Brasil.gov','Feminino','Roupas',95436,'Quality Engineer',3);
insert into funcionario values (30,'Weaver','dweavert@shinystat.com','Masculino','Beleza',83144,'Account Representative III',2);
insert into funcionario values (31,'Willis','hwillisu@army.mil','Feminino','Ferramentas',113507,'Accountant I',7);
insert into funcionario values (32,'Torres','ltorresv@amazon.de','Masculino','Games',78245,'Nuclear Power Engineer',6);
insert into funcionario values (33,'Greene','wgreenew@blogspot.com','Masculino','Filmes',87057,'Assistant Manager',1);
insert into funcionario values (34,'Reed','areedx@cisco.com','Masculino','Filmes',120579,'Assistant Media Planner',6);
insert into funcionario values (35,'Smith','bsmithy@statcounter.com','Feminino','Books',94884,'Librarian',7);
insert into funcionario values (36,'Bradley','nbradleyz@goodreads.com','Masculino','Outdoors',107222,'Payment Adjustment Coordinator',3);
insert into funcionario values (37,'Cruz','rcruz10@blinklist.com','Feminino','Lar',61739,'Quality Engineer',1);
insert into funcionario values (38,'Williamson','dwilliamson11@rediff.com','Feminino','Jardim',82026,'Nurse',2);
insert into funcionario values (39,'Kennedy','skennedy12@rediff.com','Masculino','Beb�s',79339,'Civil Engineer',1);

select * from funcionario;

select * from localizacao;

COLUMN NOME FORMAT A20;
COLUMN EMAIL FORMAT A30;
COLUMN DEPARTAMENTO FORMAT A20;
COLUMN CARGO FORMAT A40;

select * from funcionario;