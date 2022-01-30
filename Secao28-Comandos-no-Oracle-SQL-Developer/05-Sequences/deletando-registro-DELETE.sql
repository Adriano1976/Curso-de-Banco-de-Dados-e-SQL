
-- DADOS DA TABELA FUNCIONARIOS ANTES DE UM REGISTRO SER APAGADO

SELECT * FROM FUNCIONARIOS;

/*
100	JOAO
110	Joao Marcelo
120	Mariana Santos
130	Carlos Eduardo
140	Adriano Santos
150	Neide Ferreira
160	Laura Beatriz
170	Maria Ester
180	Sergio Fonseca
190	Rubens Prado
200	Maria Jose
210	Carla Balbino
220	Cristovao Ramos
230	Beatriz Ramos
240	Diego Balbino
250	Maria da Graças
260	Cristiane Brota
270	Messias Bolsonaro
*/


-- EXPECIFICANDO UM REGISTRO A SER APAGADO

DELETE FROM FUNCIONARIOS
WHERE IDFUNCIONARIO = 100;

/* 1 linha excluído. */



-- DADOS DA TABELA FUNCIONARIOS DEPOIS DE UM REGISTRO SER APAGADO

SELECT * FROM FUNCIONARIOS;

/*
110	Joao Marcelo
120	Mariana Santos
130	Carlos Eduardo
140	Adriano Santos
150	Neide Ferreira
160	Laura Beatriz
170	Maria Ester
180	Sergio Fonseca
190	Rubens Prado
200	Maria Jose
210	Carla Balbino
220	Cristovao Ramos
230	Beatriz Ramos
240	Diego Balbino
250	Maria da Graças
260	Cristiane Brota
270	Messias Bolsonaro
*/