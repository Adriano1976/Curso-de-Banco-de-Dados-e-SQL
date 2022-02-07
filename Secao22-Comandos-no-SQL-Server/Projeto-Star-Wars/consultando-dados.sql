select * from Pilotos
GO  

select * from Planetas
GO  

select * from Naves
GO  

select * from PilotosNaves
GO  

select * from HistoricoViagens
GO  


select 
	t1.IdPiloto,
	t1.Nome,
	t1.AnoNascimento,
	t2.IdPlaneta,
	t2.Nome as NomePlaneta,
	t2.Rotacao,
	t2.Orbita,
	t2.Diametro,
	t2.Populacao
FROM Pilotos AS t1 INNER JOIN Planetas AS t2
ON t1.IdPlaneta = t2.IdPlaneta
WHERE IdPiloto = 2
GO  

SELECT * FROM HistoricoViagens AS t1
INNER JOIN Pilotos AS t2
ON t1.IdPiloto = t2.IdPiloto
INNER JOIN Naves AS t3
ON t1.IdNave = t3.IdNave
GO  

 -- ltrin -> Retira os espaços dos dados, caso tenha entre as aspas.

select * from Pilotos
where ltrim(Nome) = ltrim('Darth Vader')
GO  

select * from Pilotos
where Nome like '%Vader'  
GO  


select 
	case 
		when count(DtSaida) <> count(DtChegada) then 1
		else 0
	end Viajando,
	count(DtSaida),
	count(DtChegada) 
from HistoricoViagens
where IdPiloto = 14
go  

