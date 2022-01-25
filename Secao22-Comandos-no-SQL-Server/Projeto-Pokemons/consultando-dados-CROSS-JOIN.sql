
-- CROSS JOIN: Retorna todas as combinações entre os registros da tabela à esquerda
-- e à direita.

-- TODAS AS COMBINAÇÕES POSSÍVEIS

SELECT
J1.FORMA AS "JOGADOR 1",
J2.FORMA AS "JOGADOR 2"
FROM JOKENPO AS "J1"
CROSS JOIN JOKENPO AS "J2"
GO  

/*
JOGADOR 1                      JOGADOR 2
------------------------------ ------------------------------
pedra                          pedra
papel                          pedra
tesoura                        pedra
pedra                          papel
papel                          papel
tesoura                        papel
pedra                          tesoura
papel                          tesoura
tesoura                        tesoura

(9 linha(s) afetadas)
*/


-- COMBINAÇÕES DE JOGADAS DIFERENTES

SELECT
J1.FORMA AS "JOGADOR 1",
J2.FORMA AS "JOGADOR 2"
FROM JOKENPO AS "J1"
CROSS JOIN JOKENPO AS "J2"
WHERE J1.FORMA <> J2.FORMA
GO  

/*
JOGADOR 1                      JOGADOR 2
------------------------------ ------------------------------
papel                          pedra
tesoura                        pedra
pedra                          papel
tesoura                        papel
pedra                          tesoura
papel                          tesoura
*/
