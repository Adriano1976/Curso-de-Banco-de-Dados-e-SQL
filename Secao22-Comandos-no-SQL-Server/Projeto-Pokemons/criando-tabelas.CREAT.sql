CREATE TABLE POKEMONS(
	IDPOKEMONS INT,
	NOME VARCHAR(30),
	ALTURA INT,
	PESO INT,
	XP_BASE INT,
	CONSTRAINT FK_IDPOKEMONS PRIMARY KEY(IDPOKEMONS)
)
GO 


CREATE TABLE POKEMON_TIPOS(
	ID_POKEMONS INT,
	TIPO VARCHAR(30)	
)
GO  


CREATE TABLE JOKENPO(
	FORMA VARCHAR(30)
)
GO 

