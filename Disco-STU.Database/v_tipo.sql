CREATE VIEW v_tipo AS
SELECT COUNT(d.idDisco) AS ndiscos,t.tipo, t.idTipo 
FROM tipo AS t
INNER JOIN discotipo AS dt
	on t.idTipo = dt.idTipo
INNER JOIN disco AS d
	on dt.idDisco = d.idDisco
GROUP BY t.idTipo, t.tipo
GO