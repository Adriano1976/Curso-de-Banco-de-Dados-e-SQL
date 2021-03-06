-- CORRECAO COD do OBJETO (PK, FK)
-- TABELA PERTENCENTE _ TABELA DE ONDE VEM

ALTER TABLE CONSULTA ADD CONSTRAINT FK_CONSULTA_PACIENTE
FOREIGN KEY(ID_PACIENTE) REFERENCES PACIENTE(IDPACIENTE);

-- Query OK, 0 rows affected (9.43 sec)

ALTER TABLE CONSULTA ADD CONSTRAINT FK_CONSULTA_MEDICO
FOREIGN KEY(ID_MEDICO) REFERENCES MEDICO(IDMEDICO);

-- Query OK, 0 rows affected (5.41 sec)

ALTER TABLE CONSULTA ADD CONSTRAINT FK_CONSULTA_HOSPITAL
FOREIGN KEY(ID_HOSPITAL) REFERENCES HOSPITAL(IDHOSPITAL);

-- Query OK, 0 rows affected (7.37 sec)

ALTER TABLE INTERNACAO ADD CONSTRAINT FK_INTERNACAO_CONSULTA
FOREIGN KEY(ID_CONSULTA) REFERENCES CONSULTA(IDCONSULTA);

-- Query OK, 0 rows affected (4.78 sec)


SHOW CREATE TABLE CONSULTA;

/*
| CONSULTA | CREATE TABLE `consulta` (
  `IDCONSULTA` int NOT NULL AUTO_INCREMENT,
  `ID_PACIENTE` int NOT NULL,
  `ID_MEDICO` int NOT NULL,
  `ID_HOSPITAL` int NOT NULL,
  `DATA` datetime NOT NULL,
  `DIAGNOSTICO` varchar(50) NOT NULL,
  PRIMARY KEY (`IDCONSULTA`),
  KEY `FK_CONSULTA_PACIENTE` (`ID_PACIENTE`),
  KEY `FK_CONSULTA_MEDICO` (`ID_MEDICO`),
  KEY `FK_CONSULTA_HOSPITAL` (`ID_HOSPITAL`),
  CONSTRAINT `FK_CONSULTA_HOSPITAL` FOREIGN KEY (`ID_HOSPITAL`) REFERENCES `hospital` (`IDHOSPITAL`),
  CONSTRAINT `FK_CONSULTA_MEDICO` FOREIGN KEY (`ID_MEDICO`) REFERENCES `medico` (`IDMEDICO`),
  CONSTRAINT `FK_CONSULTA_PACIENTE` FOREIGN KEY (`ID_PACIENTE`) REFERENCES `paciente` (`IDPACIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/


SHOW CREATE TABLE INTERNACAO;

/*
| INTERNACAO | CREATE TABLE `internacao` (
  `IDINTERNACAO` int NOT NULL AUTO_INCREMENT,
  `ENTRADA` datetime NOT NULL,
  `QUARTO` int NOT NULL,
  `SAIDA` datetime NOT NULL,
  `OBSERVACOES` varchar(50) NOT NULL,
  `ID_CONSULTA` int DEFAULT NULL,
  PRIMARY KEY (`IDINTERNACAO`),
  UNIQUE KEY `ID_CONSULTA` (`ID_CONSULTA`),
  CONSTRAINT `FK_INTERNACAO_CONSULTA` FOREIGN KEY (`ID_CONSULTA`) REFERENCES `consulta` (`IDCONSULTA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/
