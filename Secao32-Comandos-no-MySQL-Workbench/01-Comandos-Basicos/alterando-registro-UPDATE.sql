
update resultados set id_empresa = 501
where nome = 'IBM Industries Incorporated';

/*
Error Code: 1175. You are using safe update mode and you tried to update a table without 
a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences 
-> SQL Editor and reconnect.
*/



-- Se a sua sessão do MySql tiver a opção de atualizações seguras definida. Isso significa que 
-- você não pode atualizar ou excluir registros sem especificar uma chave (ex. primary key) na 
-- cláusula where. Para resulver esse problema, faça o seguinte procedimento:

set sql_safe_updates = 0;

update resultados set id_empresa = 501
where nome = 'IBM Industries Incorporated';

set sql_safe_updates = 1;


-- OBSERVAÇÃO: Outra alternativa 
-- Siga as etapas a seguir antes de executar o comando UPDATE: No MySQL Workbench

-- Vá para Edit--> Preferences
-- Clique "SQL Editor"na guia e uncheckem "Atualizações seguras"check box
-- Query--> Reconnect to Server// sai e depois entra caso precise
-- Agora execute seu procedimento
