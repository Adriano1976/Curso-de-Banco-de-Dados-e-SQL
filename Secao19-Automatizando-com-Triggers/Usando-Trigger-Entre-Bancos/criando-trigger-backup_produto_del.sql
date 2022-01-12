/*
USANDO NA TRIGGER -> INSERT não podemos usar OLD, apenas NEW.
USANDO NA TRIGGER ->DELETE não podemos usar NEW, apenas OLD.
USANDO NA TRIGGER ->UPDATE  podemos usar NEW ou OLD.

Portanto, são conceitos utilizados em triggers! 
OLD quando voce quer recuperar o valor antigo (que esta na tabela) e 
NEW quando voce quer pegar o valor que vai entrar na tabela!

 A gente insere NULL no Mysql pra ele incrementar a chave primária, 
 não é pra colocar valor nulo!
*/

DELIMITER $

CREATE TRIGGER BACKUP_PRODUTO_DEL
BEFORE DELETE ON PRODUTO
FOR EACH ROW
BEGIN

	INSERT INTO BACKUP.BKP_PRODUTO 
    VALUES(NULL, OLD.IDPRODUTO, OLD.NOME, OLD.VALOR, 'D');

END
$

DELIMITER ;
