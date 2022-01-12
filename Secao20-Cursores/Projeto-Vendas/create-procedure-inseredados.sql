/*
	Quando usar cursores e por que utiliza-los?
	Você vai utilizar cursores sempre que precisar varrer registro por registro, 
tendo que verificar várias colunas, e por exemplo, jogar o resultado em outra tabela!

*/

DELIMITER $

CREATE PROCEDURE INSEREDADOS()
BEGIN
	-- Controlador inicial do loop.
	DECLARE FIM INT DEFAULT 0; 

	-- Declarando as variaveis de acordo com a tabela recebedora.
	DECLARE VNOME VARCHAR(50); 
	DECLARE VAR1, VAR2, VAR3, VTOTAL, VMEDIA INT; 

	-- Declarando a variavel do vetor a ser usado.
	DECLARE REGISTRO CURSOR FOR(SELECT NOME, JAN, FEV, MAR FROM VENDEDORES);

	-- Controlador final do loop.
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET FIM = 1; 

	-- Abrirar os registros que estao na memoria RAM.
	OPEN REGISTRO;

	-- Processo inicial do loop.
	REPEAT
 		
 		-- Ira guardar os resultados dentro das variaveis.
		FETCH REGISTRO INTO VNOME, VAR1, VAR2, VAR3;

		-- Inicio condicional do processamento dos dados.
		IF NOT FIM THEN

			-- Executando os calculos dos valores informados.
			SET VTOTAL = VAR1 + VAR2 + VAR3;
			SET VMEDIA = VTOTAL / 3;

			-- Inserindo os dados e resultados dos calculos na tabela recebedora.
			INSERT INTO VEND_TOTAL VALUES(VNOME, VAR1, VAR2, VAR3, VTOTAL, VMEDIA);

		-- Final do processamento dos dados.
		END IF;

	-- Processo final do loop	
	UNTIL FIM END REPEAT;

	-- Fechando os registros que estao na memoria RAM.
	CLOSE REGISTRO;
END 
$

DELIMITER ;
