IF OBJECT_ID('v_disco', 'V') IS NOT NULL
	DROP VIEW v_disco;
GO

CREATE VIEW v_disco AS
SELECT  d.Titulo, d.Agno, i.Interprete, AVG(p.Puntuacion) AS mediaPuntuacion 
FROM interprete AS i
INNER JOIN disco AS d
	on i.IdInterprete = d.IdInterprete
INNER JOIN puntuacion AS p
	on d.IdDisco = p.iddisco
INNER JOIN discotipo AS dt
	on d.IdDisco = dt.IdDisco
INNER JOIN tipo AS t
	on dt.IdTipo = t.IdTipo
GROUP BY d.IdDisco, d.Titulo, d.Agno, i.Interprete
GO