
-- Criando um constraint PK_USUARIO_PERFIL e alterando ID_USUARIO em uma chave estrangeira.

ALTER TABLE PERFIL 
ADD CONSTRAINT FK_USUARIO_PERFIL
FOREIGN KEY(id_usuario) 
REFERENCES USUARIO (idusuario);

-- Conferindo para ver se o relacionamento foi realmente criada entre as tabelas.

SHOW CREATE TABLE PERFIL;

/*
| PERFIL | CREATE TABLE `perfil` (
  `idperfil` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `profissao` varchar(100) DEFAULT NULL,
  `onde_estudou` varchar(100) DEFAULT NULL,
  `hobbies` varchar(100) DEFAULT NULL,
  `gosto_musical` varchar(100) DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`idperfil`),
  UNIQUE KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `FK_USUARIO_PERFIL` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
*/
