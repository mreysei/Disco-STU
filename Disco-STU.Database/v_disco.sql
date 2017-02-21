CREATE VIEW v_disco AS
SELECT d.IdDisco, t.IdTipo, d.Titulo, d.Agno, i.Interprete 
FROM interprete AS i
INNER JOIN disco AS d
	on i.IdInterprete = d.IdInterprete
INNER JOIN discotipo AS dt
	on d.IdDisco = dt.IdDisco
INNER JOIN tipo AS t
	on dt.IdTipo = t.IdTipo
GO