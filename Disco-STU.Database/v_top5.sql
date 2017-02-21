CREATE VIEW v_top5 AS
SELECT TOP 5 WITH TIES AVG(p.Puntuacion) AS n5,d.IdDisco, d.Titulo
FROM disco AS d
INNER JOIN puntuacion AS p
	on d.idDisco = p.iddisco
GROUP BY d.IdDisco, d.Titulo
ORDER BY n5 DESC
GO