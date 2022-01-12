ALTER TABLE TURMA
ADD CONSTRAINT FK_ORIENTACAO_TURMA
FOREIGN KEY (ID_ORIENTACAO)
REFERENCES ORIENTACAO (IDORIENTACAO);

SHOW CREATE TABLE TURMA;

/*
| TURMA | CREATE TABLE `turma` (
  `IDTURMA` int NOT NULL AUTO_INCREMENT,
  `SALA` int NOT NULL,
  `CAPACIDADE` int NOT NULL,
  `ID_ORIENTACAO` int NOT NULL,
  PRIMARY KEY (`IDTURMA`),
  KEY `FK_ORIENTACAO_TURMA` (`ID_ORIENTACAO`),
  CONSTRAINT `FK_ORIENTACAO_TURMA` FOREIGN KEY (`ID_ORIENTACAO`) REFERENCES `orientacao` (`IDORIENTACAO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/