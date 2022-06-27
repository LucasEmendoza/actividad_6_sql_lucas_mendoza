SELECT species_animal.name AS Nombre,
species_animal.amount AS 'Cantidad de ejemplares',
types_nutrition.name AS Alimentacion,
embryonics_development.name AS 'Desarrollo embrionario',
types_specie.name AS 'Tipo de especie',
conservations_status.name AS 'Estado de conservacion',
displacements_form.name AS 'Desplazamiento'
FROM species_animal

JOIN types_nutrition ON species_animal.type_nutrition_id = types_nutrition.id 
JOIN embryonics_development ON species_animal.development_embryonic_id = embryonics_development.id
JOIN types_specie ON species_animal.type_specie = types_specie.id
JOIN conservations_status ON species_animal.conservation_status_id = conservations_status.id
JOIN displacements_form ON species_animal.displacement_form_id = displacements_form.id
