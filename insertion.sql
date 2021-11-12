INSERT INTO Utilisateur(id_user, login, prenom, nom, adresse_email, mdp)
VALUES
(1,'sandy','sundus','alkebsi','sundus.alkebsi@gmail.com','sisi123');


INSERT INTO Recette(id_recette, nom_recette, description, duree_total, prix, difficulte, utilisateur_id_user, regime_id_regime)
VALUES
(1,'Pizza','yummy in my tummy',(to_date('30:00', 'mi:ss')),3,2,null,null);

INSERT INTO Regime (id_regime,nom_regime )
VALUES
(1,'vegan');


INSERT INTO Category ( id_category, nom_category )
VALUES
(1,'vegetables and legumes');
INSERT INTO Category ( id_category, nom_category )
VALUES
(2,' milk product');

INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, category_id_category, utilisateur_id_user )
VALUES
(1,'tomato','vegetables','high-quality',1,1 );

INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, category_id_category, utilisateur_id_user )
VALUES
(2,'fromage','type','good',2,null );


INSERT INTO Img_vid ( id_Img_vid, img_vid_link, img_or_vid, recette_id_recette )
VALUES
(1,'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg','i',1);


INSERT INTO Etape ( id_etape, nom_etape, duree, recette_id_recette )
VALUES
(1,'preparer',(to_date('10:00', 'mi:ss')), 1 );

INSERT INTO Qualite ( id_qualite, qualite_calories, qualite_lipides, qualite_glucides, qualite_protides, recette_id_recette )
VALUES
(1,1120,10,130,12,1 );


INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme, nbr_personne )
VALUES
(1,1,1,null,2 );

INSERT INTO Menu ( id_menu, recette_id_recette, utilisateur_id_user, date_menu )
VALUES
(1,1,1, (to_date('2021/11/22', 'yyyy/mm/dd')));

INSERT INTO Dispose ( id_dispose, ingrediant_id_ingrediant, utilisateur_id_user, date_dispose )
VALUES
(1,2,1, (to_date('2021/11/22', 'yyyy/mm/dd')) );

INSERT INTO Liste_d_achat ( id_Liste_d_achat, ingrediant_id_ingrediant, utilisateur_id_user, date_liste )
VALUES
(1,1,1, (to_date('2021/11/22', 'yyyy/mm/dd')) );

INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit )
VALUES
(1,1,'N' );

