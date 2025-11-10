-- Requête 1 :  Afficher la liste des noms des focaccias par ordre alphabétique croissant : 
SELECT nom 
FROM tifosi.foccacia
ORDER BY nom ASC; 
-- on attend en résultat la liste des focaccias dans l'ordre alphabétique : Américaine, Emmenralaccia...
-- résultat obtenu : 'Américaine' 'Emmentalaccia''Gorgonzollaccia''Hawaienne''Mozaccia''Raclaccia''Tradilizione'

-- Requête 2 : Afficher le nombre total d'ingrédients : 
SELECT COUNT(*) AS total_ingredients
FROM tifosi.ingredient; 
-- on attend en résultat le nombre total d'ingrédients soit 25.
-- résultat obtenu : 25

-- Requête 3 :  Afficher le prix moyen des focaccias : 
SELECT AVG(prix_foccacia) AS AveragePrice
FROM tifosi.foccacia; 
-- on attend en résultat la moyenne des prix des foccacia soit : 10,375.
-- résultat obtenu : 10.375


-- Requête 4 :  Afficher la liste des boissons avec leur marque, triée par nom de boisson : 
SELECT b.nom_boisson, m.nom_marque
FROM tifosi.boisson b
JOIN tifosi.marque m 
  ON b.id_marque = m.id_marque
ORDER BY b.nom_boisson ASC;
-- on attend en résultat : Pepsi -> Pepsico...
-- résultat obtenu : 
'Capri-sun','Coca-cola'
'Coca-cola orange','Coca-cola'
'Coca-cola original','Coca-cola'
'Coca-cola zéro','Coca-cola'
'Eau de source','Cristalline'
'Fanta citron','Coca-cola'
'Lipton peach','Pepsico'
'Lipton zéro citron','Pepsico'
'Monster energy ultra blue','Monster'
'Monster energy ultra gold','Monster'
'Pepsi','Pepsico'
'Pepsi Max Zéro','Pepsico'

-- Requête 5 :  Afficher la liste des ingrédients pour une Raclaccia : 
SELECT ingredients_foccacia
FROM tifosi.foccacia
WHERE nom_foccacia = 'Raclaccia';
-- on attend en résultat : Base tomate, raclette...
-- résultat obtenu : Base tomate, raclette, cresson, ail, champignon, parmesan, poivre

-- Requête 6 :  Afficher le nom et le nombre d'ingrédients pour chaque foccacia,
SELECT nom_foccacia, (LENGTH(ingredients_foccacia) - LENGTH(REPLACE(ingredients_foccacia, ',', '')) + 1) AS nb_ingredients
FROM tifosi.foccacia;
-- on attend en résultat : Mozaccia = 10
-- résultat obtenu : 
'Gorgonzollaccia','8'
'Raclaccia','7'
'Emmentalaccia','7'
'Tradilizione','9'
'Hawaienne','9'
'Américaine','8'
'Paysanne','12'

-- Requête 7 :  Afficher le nom de la focaccia qui a le plus d'ingrédients,
SELECT nom_foccacia
FROM tifosi.foccacia
ORDER BY (LENGTH(ingredients_foccacia) - LENGTH(REPLACE(ingredients_foccacia, ',', '')) + 1) DESC
LIMIT 1
-- on attend en résultat : Paysanne
-- résultat obtenu : Paysanne

-- Requête 8 :  Afficher la liste des focaccia qui contiennent de l'ail :
SELECT nom_foccacia
FROM tifosi.foccacia
WHERE ingredients_foccacia LIKE '%Ail%';
-- on attend en résultat une liste des foccacia avec de l'ail.
-- résultat obtenu : 
'Mozaccia'
'Gorgonzollaccia'
'Raclaccia'
'Paysanne'

-- Requête 9 :  Afficher la liste des ingrédients inutilisés :
SELECT i.id_ingredient, i.nom_ingredient
FROM tifosi.ingredient i
LEFT JOIN tifosi.comprend c ON i.id_ingredient = c.id_ingredient
WHERE c.id_foccacia IS NULL;
-- on attend en résultat une liste des aliments non utilisés dans les foccacias.
-- résultat obtenu : 
'14','Oeuf'
'23','Salami'
'24','Tomate cerise'
-- Requête 10 :  Afficher la liste des focaccias qui n'ont pas de champignons :
SELECT f.id_foccacia, f.nom_foccacia
FROM tifosi.foccacia f
WHERE f.id_foccacia NOT IN (
    SELECT c.id_foccacia
    FROM tifosi.comprend c
    JOIN tifosi.ingredient i ON c.id_ingredient = i.id_ingredient
    WHERE i.nom_ingredient = 'Champignon');
-- on attend en résultat une liste des foccacias sans champignon.
-- résultat obtenu : 
'6','Hawaienne'
'7','Américaine'


