set wrap off
----------------------------------
--              01              --
----------------------------------

SELECT id_recette, nom_recette 
FROM Recette r 
INNER JOIN Qualite q 
ON r.id_recette= q.recette_id_recette
where q.qualite_calories / r.nbr_personne < 200 
AND r.id_recette NOT IN (
        SELECT id_recette FROM  Recette
    WHERE 
    id_recette IN ( 
            SELECT recette_id_recette 
            FROM Recette_contient_Ingrediant 
            WHERE ingrediant_id_ingrediant IN 
            (
                SELECT Interdit.ingrediant_id_ingrediant 
                FROM Regime , Interdit 
                WHERE Regime.id_regime = Interdit.regime_idRegime 
                AND Regime.nom_regime = 'gluten'
                AND Interdit.interdit = 1
            )
        )
    AND
     r.id_recette IN (
        SELECT recette_id_recette 
        FROM Menu 
        WHERE recette_id_recette = r.id_recette )
); 

----------------------------------
--        02        --
----------------------------------
SELECT * 
FROM Recette 
WHERE id_recette 
IN 
( SELECT recette_id_recette 
        FROM Menu 
        HAVING COUNT(recette_id_recette) = (SELECT MAX(COUNT(recette_id_recette)) FROM Menu GROUP BY recette_id_recette )
        GROUP BY recette_id_recette
);

----------------------------------
--              03              --
----------------------------------
SELECT Ingrediant.nom_ingrediant,
        COUNT(DISTINCT Recette_contient_Ingrediant.recette_id_recette) AS nb_recettes, 
        COUNT(DISTINCT Ingrediant_category.cat_id_category) AS nb_categories
FROM Ingrediant, Recette_contient_Ingrediant,  Ingrediant_category 
WHERE Ingrediant.id_ingrediant = Recette_contient_Ingrediant.ingrediant_id_ingrediant AND 
Ingrediant.id_ingrediant = Ingrediant_category.ingrediant_id_ingrediant
GROUP BY Ingrediant.nom_ingrediant;



----------------------------------
--              04              --
----------------------------------
SELECT Utilisateur.id_user, Utilisateur.login, Utilisateur.prenom, Utilisateur.nom
FROM Utilisateur, Recette, Regime
WHERE Utilisateur.id_user = Recette.utilisateur_id_user
AND Recette.regime_id_regime = Regime.id_regime
AND Regime.nom_regime ='végétarien';


----------------------------------
--              05              --
----------------------------------
SELECT u.login, u.nom, u.prenom, u.adresse_email, 
    (SELECT COUNT(id_recette) FROM Recette WHERE utilisateur_id_user = u.id_user) AS nb_recettes,
    (SELECT COUNT(id_ingrediant) FROM Ingrediant WHERE utilisateur_id_user = u.id_user) AS nb_ingrediant,
    (SELECT COUNT(id_menu) FROM Menu WHERE utilisateur_id_user = u.id_user AND
    date_menu >= SYSDATE) AS nb_recette_prevu
FROM Utilisateur u;


