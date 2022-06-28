SELECT species_animal.name AS 'Nombre',
habitats.name AS 'Habitad', 
types_nutrition.name AS Alimentacion, 
displacements_form.name AS Desplazamiento,
conservations_status.name AS 'Estado de conservacion',
types_specie.name AS 'Tipo de especie',
embryonics_development.name AS 'Desarrollo embrionario',
species_animal.amount AS 'Cantidad'
FROM species_animal

JOIN habitats_species_animal ON species_animal.id = habitats_species_animal.specie_animal_id
JOIN habitats ON habitats_species_animal.habitat_id = habitats.id
JOIN types_nutrition ON species_animal.type_nutrition_id = types_nutrition.id
JOIN displacements_form ON species_animal.displacement_form_id = displacements_form.id                   
JOIN conservations_status ON species_animal.conservation_status_id = conservations_status.id
JOIN embryonics_development ON species_animal.development_embryonic_id = embryonics_development.id
JOIN types_specie ON species_animal.type_specie = types_specie.id

ORDER BY Cantidad desc


