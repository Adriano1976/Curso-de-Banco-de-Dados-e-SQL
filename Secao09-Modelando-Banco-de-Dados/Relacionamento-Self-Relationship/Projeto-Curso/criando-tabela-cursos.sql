CREATE TABLE CURSOS(
	IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	HORAS INT,
	VALOR FLOAT(10,2),
	ID_PREREQ INT
);

ALTER TABLE CURSOS 
ADD CONSTRAINT FK_PREREQ
FOREIGN KEY(ID_PREREQ) 
REFERENCES CURSOS(IDCURSO);


DESC CURSOS;

/*
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDCURSO   | int         | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(30) | YES  |     | NULL    |                |
| HORAS     | int         | YES  |     | NULL    |                |
| VALOR     | float(10,2) | YES  |     | NULL    |                |
| ID_PREREQ | int         | YES  | MUL | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
*/


SHOW CREATE TABLE CURSOS;

/*
| CURSOS | CREATE TABLE `cursos` (
  `IDCURSO` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(30) DEFAULT NULL,
  `HORAS` int DEFAULT NULL,
  `VALOR` float(10,2) DEFAULT NULL,
  `ID_PREREQ` int DEFAULT NULL,
  PRIMARY KEY (`IDCURSO`),
  KEY `FK_PREREQ` (`ID_PREREQ`),
  CONSTRAINT `FK_PREREQ` FOREIGN KEY (`ID_PREREQ`) REFERENCES `cursos` (`IDCURSO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/
