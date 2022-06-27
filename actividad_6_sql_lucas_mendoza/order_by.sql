SELECT species_animal.name AS 'Nombre',
species_animal.amount AS 'Cantidad de ejemplares',
types_nutrition.name AS Alimentacion

FROM species_animal

JOIN types_nutrition ON species_animal.type_nutrition_id = types_nutrition.id
ORDER BY Alimentacion DESC

