

----------------------------------
--           LES INDEX          --
----------------------------------

CREATE INDEX X1 ON Regime (nom_regime);
CREATE INDEX X2 ON Interdit (interdit);

CREATE INDEX X3 ON Qualite (qualite_calories);
CREATE INDEX X4 ON Recette (nbr_personne,duree_total);

CREATE INDEX X5 ON Ingrediant (qualite);
CREATE INDEX X6 ON Qualite (recette_id_recette);
