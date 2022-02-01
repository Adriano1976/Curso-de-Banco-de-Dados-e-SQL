
-- VERIFICANDO O ESTADO DAS CONSTRAINTS DAS TABELAS REFERENCIADAS
-- OBS.: O NOME DAS TABELAS DEVEM SER INFORMADAS EM LETRA MAIUSCULAS, POIS POR PADRÃO
-- A ORACLE CONSTROE AS TABELAS NESSA FORMA.

select constraint_name, deferrable, deferred
from user_constraints 
where table_name in('COLABORADORES', 'TELEPHONES', 'REGIOES'); 

/*
CONSTRAINT_NAME                DEFERRABLE     DEFERRED 
------------------------------ -------------- ---------
PK_COLABORADOR                 NOT DEFERRABLE IMMEDIATE
FK_COLABORADOR_REGIAO          NOT DEFERRABLE IMMEDIATE
SYS_C007052                    NOT DEFERRABLE IMMEDIATE
SYS_C007055                    NOT DEFERRABLE IMMEDIATE
FK_TELEPHONE_COLABORADOR       NOT DEFERRABLE IMMEDIATE
*/



-- DEFERRED(IMMEDIATE) - Está informando que todas essas constraints aqui tem checagem imediata
-- após o comando da DML. Portanto, essa verificação será na hora da DML ou DTL.
-- DEFFERABLE(NOT DEFERRABLE) - Está informando que a verificação dessa chave não pode ser atrasada.


-- APAGANDO A CONSTRAINT ------------------------------------------------------------

alter table telephones drop constraint FK_TELEPHONE_COLABORADOR;

/*
Table TELEPHONES alterado.
*/


-- RECRIANDO A CONSTRAINT ONDE A VERIFICAÇÃO PODE SER ATRASADA ----------------------

alter table telephones add constraint fk_telephone_colaborador
foreign key(id_Colaborador) references colaboradores
deferrable;

/*
Table TELEPHONES alterado.
*/

select constraint_name, deferrable as "ATRASADA", deferred as "VEFIFICACAO"
from user_constraints 
where table_name in('COLABORADORES', 'TELEPHONES', 'REGIOES'); 

/*
CONSTRAINT_NAME                ATRASADA       VEFIFICADA
------------------------------ -------------- ----------
PK_COLABORADOR                 NOT DEFERRABLE IMMEDIATE
FK_COLABORADOR_REGIAO          NOT DEFERRABLE IMMEDIATE
SYS_C007052                    NOT DEFERRABLE IMMEDIATE
SYS_C007055                    NOT DEFERRABLE IMMEDIATE
FK_TELEPHONE_COLABORADOR       DEFERRABLE     IMMEDIATE
*/


-- MUDANDO A VERIFICAÇÃO PARA A DTL -------------------------------------------------

set constraints all deferred;

/*
Constraints ALL bem-sucedido.
*/

select constraint_name, deferrable as "ATRASADA", deferred as "VEFIFICACAO"
from user_constraints 
where table_name in('COLABORADORES', 'TELEPHONES', 'REGIOES'); 

/*
CONSTRAINT_NAME                ATRASADA       VEFIFICADA
------------------------------ -------------- ----------
PK_COLABORADOR                 NOT DEFERRABLE IMMEDIATE
FK_COLABORADOR_REGIAO          NOT DEFERRABLE IMMEDIATE
SYS_C007052                    NOT DEFERRABLE IMMEDIATE
SYS_C007055                    NOT DEFERRABLE IMMEDIATE
FK_TELEPHONE_COLABORADOR       DEFERRABLE     IMMEDIATE
*/


insert into telephones values(32,'cel','7958472514',50);

/*
1 linha inserido.
*/

select * from telephones;

/*
IDTELEFONE TIP NUMERO     ID_COLABORADOR
---------- --- ---------- --------------
         1 cel 7958472514              1
         2 cel 7958295514              2
         3 cel 7945472514              3
         4 cel 7958477534              4
         5 cel 7958474584              5
         6 cel 7958475814              6
         7 cel 7952672514              7
         8 cel 7958474584              8
         9 cel 7958472222              9
        10 cel 7958422214             10
        11 cel 7978572514             11

IDTELEFONE TIP NUMERO     ID_COLABORADOR
---------- --- ---------- --------------
        12 cel 7958445814             12
        13 cel 7932172514             13
        14 cel 7958445814             14
        15 cel 7952362514             15
        16 cel 7958002514             16
        17 cel 7958470004             17
        18 cel 7953212514             18
        19 cel 7958369514             19
        20 cel 7958474564             20
        21 cel 7958472514             21
        22 cel 7957532514             22

IDTELEFONE TIP NUMERO     ID_COLABORADOR
---------- --- ---------- --------------
        23 cel 7958474584             23
        24 cel 7958478914             24
        25 cel 7958478914             25
        26 cel 7958478914             26
        27 cel 7958478914             27
        28 cel 7958478914             28
        29 cel 7958478914             29
        30 cel 7958478914             30
        31 cel 7958478914             35
        32 cel 7958472514             50 -- Não existe um colaborador com essa referência
*/

select * from colaboradores;

/*
IDCOLABORADOR NOME                 EMAIL                          SEXO            DEPARTAMENTO            SALARIO CARGO                                     ID_REGIAO
------------- -------------------- ------------------------------ --------------- -------------------- ---------- ---------------------------------------- ----------
            1 Kelley               rkelley0@soundcloud.com        Feminino        Computadores              67470 Structural Engineer                               2
            2 Armstrong            sarmstrong1@infoseek.co.jp     Masculino       Esporte                   71869 Financial Advisor                                 2
            3 Carr                 fcarr2@woothemes.com           Masculino       Automotivo               101768 Recruiting Manager                                3
            4 Murray               jmurray3@gov.uk                Feminino        Joalheria                 96897 Desktop Support Technician                        3
            5 Ellis                jellis4@sciencedirect.com      Feminino        Alimentícios              63702 Software Engineer III                             7
            6 Phillips             bphillips5@time.com            Masculino       Ferramentas              118497 Executive Secretary                               1
            7 Williamson           rwilliamson6@ted.com           Masculino       Computadores              65889 Dental Hygienist                                  6
            8 Harris               aharris7@ucoz.com              Feminino        Brinquedos                84427 Safety Technician I                               4
            9 James                rjames8@prnewswire.com         Masculino       Joalheria                108657 Sales Associate                                   2
           10 Sanchez              rsanchez9@cloudflare.com       Masculino       Filmes                   108093 Sales Representative                              1
           11 Jacobs               jjacobsa@sbwire.com            Feminino        Joalheria                121966 Community Outreach Specialist                     7

IDCOLABORADOR NOME                 EMAIL                          SEXO            DEPARTAMENTO            SALARIO CARGO                                     ID_REGIAO
------------- -------------------- ------------------------------ --------------- -------------------- ---------- ---------------------------------------- ----------
           12 Black                mblackb@edublogs.org           Masculino       Roupas                    44179 Data Coordiator                                   7
           13 Schmidt              sschmidtc@state.gov            Masculino       Bebês                     85227 Compensation Analyst                              3
           14 Webb                 awebbd@baidu.com               Feminino        Computadores              59763 Software Test Engineer III                        4
           15 Jacobs               ajacobse@google.it             Feminino        Games                    141139 Community Outreach Specialist                     7
           16 Medina               smedinaf@amazonaws.com         Feminino        Bebês                    106659 Web Developer III                                 1
           17 Morgan               dmorgang@123-reg.co.uk         Feminino        Crianças                 148952 Programmer IV                                     6
           18 Nguyen               jnguyenh@google.com            Masculino       Lar                       93804 Geologist II                                      5
           19 Day                  rdayi@chronoengine.com         Masculino       Eletronicos              109890 VP Sales                                          3
           20 Carr                 dcarrj@ocn.ne.jp               Feminino        Filmes                   115274 VP Quality Control                                5
           21 Bryant               sbryantk@wunderground.com      Feminino        Industrial                78052 Software Consultant                               3
           22 Alexander            kalexanderl@marketwatch.com    Masculino       Automotivo               144724 Marketing Assistant                               2

IDCOLABORADOR NOME                 EMAIL                          SEXO            DEPARTAMENTO            SALARIO CARGO                                     ID_REGIAO
------------- -------------------- ------------------------------ --------------- -------------------- ---------- ---------------------------------------- ----------
           23 Chapman              jchapmanm@archive.org          Feminino        Joalheria                126103 Senior Developer                                  4
           24 Kelly                ekellyn@weibo.com              Masculino       Jardim                   144965 Nurse Practicioner                                2
           25 Stephens             jstephenso@ow.ly               Masculino       Brinquedos                70613 Business Systems Development Analyst              1
           26 Porter               vporterp@yelp.com              Feminino        Lar                       90746 Dental Hygienist                                  2
           27 Owens                cowensq@shareasale.com         Feminino        Lar                       78698 Executive Secretary                               2
           28 Scott                cscottr@sphinn.com             Feminino        Books                     63336 Sales Representative                              4
           29 Price                cprices@Brasil.gov             Feminino        Roupas                    95436 Quality Engineer                                  3
           30 Weaver               dweavert@shinystat.com         Masculino       Beleza                    83144 Account Representative III                        2
           31 Willis               hwillisu@army.mil              Feminino        Ferramentas              113507 Accountant I                                      7
           32 Torres               ltorresv@amazon.de             Masculino       Games                     78245 Nuclear Power Engineer                            6
           33 Greene               wgreenew@blogspot.com          Masculino       Filmes                    87057 Assistant Manager                                 1

IDCOLABORADOR NOME                 EMAIL                          SEXO            DEPARTAMENTO            SALARIO CARGO                                     ID_REGIAO
------------- -------------------- ------------------------------ --------------- -------------------- ---------- ---------------------------------------- ----------
           34 Reed                 areedx@cisco.com               Masculino       Filmes                   120579 Assistant Media Planner                           6
           35 Smith                bsmithy@statcounter.com        Feminino        Books                     94884 Librarian                                         7
           36 Bradley              nbradleyz@goodreads.com        Masculino       Outdoors                 107222 Payment Adjustment Coordinator                    3
           37 Cruz                 rcruz10@blinklist.com          Feminino        Lar                       61739 Quality Engineer                                  1
           38 Williamson           dwilliamson11@rediff.com       Feminino        Jardim                    82026 Nurse                                             2
           39 Kennedy              skennedy12@rediff.com          Masculino       Bebês                     79339 Civil Engineer                                    1

39 linhas selecionadas. 
*/


-- REALIZANDO UM COMMIT PARA QUE ESSAS INFORMAÇÕES SEJA SALVAS NO BANCO DE DADOS.

commit;

/*
Erro a partir da linha : 155 no comando -
commit
Relatório de erros -
ORA-02091: transação repetida
ORA-02291: restrição de integridade (SYSTEM.FK_TELEPHONE_COLABORADOR) violada - chave mãe não localizada
02091. 00000 -  "transaction rolled back"
*Cause:    Also see error 2092. If the transaction is aborted at a remote
           site then you will only see 2091; if aborted at host then you will
           see 2092 and 2091.
*Action:   Add rollback segment and retry the transaction.
*/


-- APÓS A COMMIT, O BANCO FAZ A VERIFICAÇÃO PARA CONFIRMAR SE AS INFORMAÇÕES SERÃO SALVAS OU NÃO.
-- CASO ELE ENCONTRE ALGUMA INFORMAÇÃO ERRADA, ELE IRÁ DESFAZER A TRANSAÇÃO E VOLTAR O QUE ERA ANTES DO COMITT.

select * from telephones;

/*
IDTELEFONE TIP NUMERO     ID_COLABORADOR
---------- --- ---------- --------------
         1 cel 7958472514              1
         2 cel 7958295514              2
         3 cel 7945472514              3
         4 cel 7958477534              4
         5 cel 7958474584              5
         6 cel 7958475814              6
         7 cel 7952672514              7
         8 cel 7958474584              8
         9 cel 7958472222              9
        10 cel 7958422214             10
        11 cel 7978572514             11

IDTELEFONE TIP NUMERO     ID_COLABORADOR
---------- --- ---------- --------------
        12 cel 7958445814             12
        13 cel 7932172514             13
        14 cel 7958445814             14
        15 cel 7952362514             15
        16 cel 7958002514             16
        17 cel 7958470004             17
        18 cel 7953212514             18
        19 cel 7958369514             19
        20 cel 7958474564             20
        21 cel 7958472514             21
        22 cel 7957532514             22

IDTELEFONE TIP NUMERO     ID_COLABORADOR
---------- --- ---------- --------------
        23 cel 7958474584             23
        24 cel 7958478914             24
        25 cel 7958478914             25
        26 cel 7958478914             26
        27 cel 7958478914             27
        28 cel 7958478914             28
        29 cel 7958478914             29
        30 cel 7958478914             30
        31 cel 7958478914             35
*/


insert into telephones values(32,'cel','7958472514',50);

/*
Erro a partir da linha : 157 no comando -
insert into telephones values(32,'cel','7958472514',50)
Relatório de erros -
ORA-02291: restrição de integridade (SYSTEM.FK_TELEPHONE_COLABORADOR) violada - chave mãe não localizada
*/
