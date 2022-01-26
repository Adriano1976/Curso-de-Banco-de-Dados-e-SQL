
select * from departamentos;

/*
"Automotivo"	"Auto & Hardware"
"Bebês"	"Casa e Afins"
"Beleza"	"Casa e Afins"
"Roupas"	"Casa e Afins"
"Computadores"	"Equipamentos Eletrônicos"
"Eletronicos"	"Equipamentos Eletrônicos"
"Games"	"Casa e Afins"
"Jardim"	"Outdoors & Jardim"
"Alimentícios"	"Casa e Afins"
"Saúde"	"Casa e Afins"
"Lar"	"Casa e Afins"
"Industrial"	"Auto & Hardware"
"Joalheria"	"Fashion"
"Crianças"	"Casa e Afins"
"Filmes"	"Entretenimento"
"Música"	"Entretenimento"
"Outdoors"	"Outdoors & Jardim"
"Calçados"	"Casa e Afins"
"Esporte"	"Games & Esporte"
"Ferramentas"	"Auto & Hardware"
"Brinquedos"	"Games & Esporte"
*/


select * from localizacao;

/*
1	"Nordeste"	"Brasil"
2	"Sudeste"	"Brasil"
3	"Sul"	"Brasil"
4	"Norte"	"Brasil"
5	"British Columbia"	"Canada"
6	"Quebec"	"Canada"
7	"Nova Scotia"	"Canada"
*/


-- Dos 1000 funcionarios existentes, vamos limitar somente os primeiros 20 nessa amostra.

select * from funcionarios
limit 20;

/*
1	"Kelley"	"rkelley0@soundcloud.com"	"Feminino"	"Computadores"	"2009-10-02"	67470	"Structural Engineer"	2
2	"Armstrong"	"sarmstrong1@infoseek.co.jp"	"Masculino"	"Esporte"	"2008-03-31"	71869	"Financial Advisor"	2
3	"Carr"	"fcarr2@woothemes.com"	"Masculino"	"Automotivo"	"2009-07-12"	101768	"Recruiting Manager"	3
4	"Murray"	"jmurray3@gov.uk"	"Feminino"	"Joalheria"	"2014-12-25"	96897	"Desktop Support Technician"	3
5	"Ellis"	"jellis4@sciencedirect.com"	"Feminino"	"Alimentícios"	"2002-09-19"	63702	"Software Engineer III"	7
6	"Phillips"	"bphillips5@time.com"	"Masculino"	"Ferramentas"	"2013-08-21"	118497	"Executive Secretary"	1
7	"Williamson"	"rwilliamson6@ted.com"	"Masculino"	"Computadores"	"2006-05-14"	65889	"Dental Hygienist"	6
8	"Harris"	"aharris7@ucoz.com"	"Feminino"	"Brinquedos"	"2003-08-12"	84427	"Safety Technician I"	4
9	"James"	"rjames8@prnewswire.com"	"Masculino"	"Joalheria"	"2005-09-07"	108657	"Sales Associate"	2
10	"Sanchez"	"rsanchez9@cloudflare.com"	"Masculino"	"Filmes"	"2013-03-13"	108093	"Sales Representative"	1
11	"Jacobs"	"jjacobsa@sbwire.com"	"Feminino"	"Joalheria"	"2003-11-27"	121966	"Community Outreach Specialist"	7
12	"Black"	"mblackb@edublogs.org"	"Masculino"	"Roupas"	"2003-02-04"	44179	"Data Coordiator"	7
13	"Schmidt"	"sschmidtc@state.gov"	"Masculino"	"Bebês"	"2002-10-13"	85227	"Compensation Analyst"	3
14	"Webb"	"awebbd@baidu.com"	"Feminino"	"Computadores"	"2006-10-22"	59763	"Software Test Engineer III"	4
15	"Jacobs"	"ajacobse@google.it"	"Feminino"	"Games"	"2007-03-04"	141139	"Community Outreach Specialist"	7
16	"Medina"	"smedinaf@amazonaws.com"	"Feminino"	"Bebês"	"2008-03-14"	106659	"Web Developer III"	1
17	"Morgan"	"dmorgang@123-reg.co.uk"	"Feminino"	"Crianças"	"2011-05-04"	148952	"Programmer IV"	6
18	"Nguyen"	"jnguyenh@google.com"	"Masculino"	"Lar"	"2014-11-03"	93804	"Geologist II"	5
19	"Day"	"rdayi@chronoengine.com"	"Masculino"	"Eletronicos"	"2004-09-22"	109890	"VP Sales"	3
20	"Carr"	"dcarrj@ocn.ne.jp"	"Feminino"	"Filmes"	"2007-11-22"	115274	"VP Quality Control"	5
*/


-- Qual a moda dos salarios? A moda dos salarios diz algo de relevante?
-- Qual a moda departamental? Qual o departamento que mais emprega?
-- Qual o desvio padrao de cada departamento?
-- Qual a mediana salarial de todo o set de dados?
-- Qual a amplitude de todos so salarios;
-- Quais as principais medidas estatisticas por departamento?
-- Qual departamento te da uma maior brobabilidade de ganhar mais?

select departamento,
count(*) as "Moda departamental",
round(avg(salario),2) as "Media Salarial",
max(salario) as "Maxima Salarial",
min(salario) as "Minimo Salarial",
max(salario) - min(salario) as "Amplitude Total",
round(var_pop(salario),2) as "Variancia",
percentile_cont(0.5) within group(order by salario),
round(stddev_pop(salario),2) as "Desvio Padrao",
round(stddev_pop(salario) / avg(salario)) * 100.2 as "Coeficiente Variacao"
from funcionarios
group by departamento
order by 2 desc
limit 20;

/*
"Roupas"	53	95054.53	148408	42797	105611	1000324590.36	91532	31627.91	0.0
"Beleza"	53	103416.28	149099	40254	108845	952478558.54	113893	30862.25	0.0
"Lar"	52	92734.71	149598	40415	109183	1037243300.97	91452	32206.26	0.0
"Computadores"	52	99095.44	149336	46960	102376	930175201.52	106382	30498.77	0.0
"Games"	49	103883.76	149221	41516	107705	1040425239.16	109058	32255.62	0.0
"Eletronicos"	49	91615.12	149597	40218	109379	1073778518.03	93245	32768.56	0.0
"Outdoors"	48	112055.42	148906	43366	105540	745849798.45	114977.5	27310.25	0.0
"Industrial"	47	92900.85	148816	40194	108622	889271955.28	88029	29820.66	0.0
"Jardim"	47	101959.26	148860	50057	98803	909562157.08	97351	30158.95	0.0
"Books"	47	94890.15	146745	42714	104031	945765035.83	91561	30753.29	0.0
"Alimentícios"	46	101113.93	149929	44919	105010	1161021316.10	109373	34073.76	0.0
"Automotivo"	46	99658.00	146167	42602	103565	929902811.87	105073	30494.31	0.0
"Joalheria"	46	87812.22	149114	41026	108088	875256537.78	86896.5	29584.73	0.0
"Saúde"	46	98975.65	145962	43431	102531	1216304238.79	103703	34875.55	0.0
"Bebês"	45	93749.42	148687	42924	105763	912220932.82	89680	30203.00	0.0
"Calçados"	43	92281.81	147739	45463	102276	849306565.17	85511	29142.86	0.0
"Brinquedos"	41	96187.17	149835	40138	109697	1150709491.31	93714	33922.11	0.0
"Esporte"	40	93901.03	147166	40418	106748	1049150239.87	87433	32390.59	0.0
"Ferramentas"	39	105020.72	149586	44788	104798	795868561.02	107709	28211.14	0.0
"Crianças"	38	93237.55	149351	43097	106254	1072987422.93	95040	32756.49	0.0
"Música"	37	88507.22	144608	42759	101849	1001696601.52	84261	31649.59	0.0
"Filmes"	36	100911.81	146970	41898	105072	876898879.10	108548.5	29612.48	0.0
*/

