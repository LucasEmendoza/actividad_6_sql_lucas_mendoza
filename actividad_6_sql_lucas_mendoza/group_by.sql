SELECT species_animal.name AS Nombre, 
species_animal.amount AS Cantidad,
(CASE amount
	WHEN 0 THEN 'Irreparble'
	ELSE 'Esperanza'
END) AS 'Caso' 
FROM species_animal
GROUP BY Caso
