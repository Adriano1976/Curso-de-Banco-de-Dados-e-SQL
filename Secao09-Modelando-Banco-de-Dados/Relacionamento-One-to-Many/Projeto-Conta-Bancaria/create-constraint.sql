ALTER TABLE CONTA  
ADD CONSTRAINT FK_BANCO_CONTA
FOREIGN KEY (ID_BANCO)
REFERENCES BANCO (IDBANCO);

SHOW CREATE TABLE CONTA;

/*
| CONTA | CREATE TABLE `conta` (
  `IDCONTA` int NOT NULL AUTO_INCREMENT,
  `NUMERO` int NOT NULL,
  `SALDO` decimal(14,2) NOT NULL,
  `LIMITE` decimal(14,2) NOT NULL,
  `ID_BANCO` int NOT NULL,
  PRIMARY KEY (`IDCONTA`),
  UNIQUE KEY `ID_BANCO` (`ID_BANCO`),
  CONSTRAINT `FK_BANCO_CONTA` FOREIGN KEY (`ID_BANCO`) REFERENCES `banco` (`IDBANCO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/
