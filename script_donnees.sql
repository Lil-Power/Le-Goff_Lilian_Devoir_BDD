USE tifosi;

INSERT INTO ingredient (nom_ingredient)
VALUES
('Ail'),
('Ananas'),
('Artichaut'),
('Bacon'),
('Base tomate'),
('Base crème'),
('Champignon'),
('Chèvre'),
('Cresson'),
('Emmental'),
('Gorgonzola'),
('Jambon cuit'),
('Jambon fumé'),
('Oeuf'),
('Oignon'),
('Olive noire'),
('Olive verte'),
('Parmesan'),
('Piment'),
('Poivre'),
('Pomme de terre'),
('Raclette'),
('Salami'),
('Tomate cerise'),
('Mozarella');

USE tifosi;
INSERT INTO boisson (nom_boisson)
VALUES 
('Coca-cola zéro'),
('Coca-cola original'),
('Fanta citron'),
('Coca-cola orange'),
('Capri-sun'),
('Pepsi'),
('Pepsi Max Zéro'),
('Lipton zéro citron'),
('Lipton peach'),
('Monster energy ultra gold'),
('Monster energy ultra blue'),
('Eau de source');


USE tifosi;
INSERT INTO foccacia (nom_foccacia, prix_foccacia, ingredients_foccacia)
VALUES 
('Mozaccia', 9.80, 'Base tomate, Mozarella, cresson, jambon fumé, ail, artichaut, champignon, parmesan, poivre, olive noire'),
('Gorgonzollaccia', 10.80, 'Base tomate, Gorgonzola, cresson, ail, champignon, parmesan, poivre, olive noire'),
('Raclaccia', 8.90, 'Base tomate, raclette, cresson, ail, champignon, parmesan, poivre'),
('Emmentalaccia', 9.80, 'Base crème, Emmental, cresson, champignon, parmesan, poivre, oignon'),
('Tradilizione', 8.90, 'Base tomate, Mozarella, cresson, jambon cuit, champignon(80), parmesan, poivre, olive noire(10), olive verte(10)'),
('Hawaienne', 11.20, 'Base tomate, Mozarella, cresson, bacon, ananas, piment, parmesan, poivre, olive noire'),
('Américaine', 10.80, 'Base tomate, Mozarella, cresson, bacon, pomme de terre(40), parmesan, poivre, olive noire'),
('Paysanne', 12.80, 'Base crème, Chèvre, cresson, pomme de terre, jambon fumé, ail, artichaut, champignon, parmesan, poivre, olive noire, œuf');

USE tifosi;
INSERT INTO marque (nom_marque)
VALUES 
('Coca-cola'),
('Cristalline'),
('Monster'),
('Pepsico');
