INSERT INTO Utilisateur(id_user, login, prenom, nom, adresse_email, mdp) VALUES (1,'sandy','sundus','alkebsi','sundus.alkebsi@gmail.com','sisi123');
INSERT INTO Utilisateur(id_user, login, prenom, nom, adresse_email, mdp) VALUES (2,'selenaaa','selena','gomez','selenagomez@gmail.com','itsmeselena');
INSERT INTO Utilisateur(id_user, login, prenom, nom, adresse_email, mdp) VALUES (3,'taylorrr','taylor','swift','taylorswift@gmail.com','itsmetaylor');
INSERT INTO Utilisateur(id_user, login, prenom, nom, adresse_email, mdp) VALUES (4,'arianaaa','ariana','grande','arianagrande@gmail.com','itsmeariana');
INSERT INTO Utilisateur(id_user, login, prenom, nom, adresse_email, mdp) VALUES (5,'justinnn','justin','beiber','justinbeiber@gmail.com','itsmejustin');
INSERT INTO Utilisateur(id_user, login, prenom, nom, adresse_email, mdp) VALUES (6,'jhonnn','jhon','smith','jhonsmith@gmail.com','itsmejhon');
INSERT INTO Utilisateur(id_user, login, prenom, nom, adresse_email, mdp) VALUES (7,'kimwoobinnn','woobin','kim','kimwoobin@gmail.com','itsmewoobin');
INSERT INTO Utilisateur(id_user, login, prenom, nom, adresse_email, mdp) VALUES (8,'hyonbinnn','bin','hyon','hyonbin@gmail.com','itsmebin');
INSERT INTO Utilisateur(id_user, login, prenom, nom, adresse_email, mdp) VALUES (9,'parkshinhyeee','shinhye','park','parkshinhye@gmail.com','itsmeshinhye');
INSERT INTO Utilisateur(id_user, login, prenom, nom, adresse_email, mdp) VALUES (10,'leeminhooo','minho','lee','leeminho@gmail.com','itsmeminho');

INSERT INTO Regime (id_regime,nom_regime ) VALUES (1,'Vegan');
INSERT INTO Regime (id_regime,nom_regime ) VALUES (2,'Végétrian');
INSERT INTO Regime (id_regime,nom_regime ) VALUES (3,'Sans glutin');
INSERT INTO Regime (id_regime,nom_regime ) VALUES (4,'Détox');
INSERT INTO Regime (id_regime,nom_regime ) VALUES (7,'protéiné');
INSERT INTO Regime (id_regime,nom_regime ) VALUES (8,'Hyperprotéiné');
INSERT INTO Regime (id_regime,nom_regime ) VALUES (9,'Anticellulite');
INSERT INTO Regime (id_regime,nom_regime ) VALUES (10,'Sans sel');


INSERT INTO Recette(id_recette, nom_recette, description, duree_total, prix, difficulte, utilisateur_id_user, regime_id_regime, nbr_personne) VALUES (1,'Pizza','yummy in my tummy',30,3,2,5,7,3);
INSERT INTO Recette(id_recette, nom_recette, description, duree_total, prix, difficulte, utilisateur_id_user, regime_id_regime, nbr_personne) VALUES (2,'mashed potaato','easy easy',40,2,3,1,7,4);
INSERT INTO Recette(id_recette, nom_recette, description, duree_total, prix, difficulte, utilisateur_id_user, regime_id_regime, nbr_personne) VALUES (3,'fish','lets eat fush',60,4,5,4,7,3);
INSERT INTO Recette(id_recette, nom_recette, description, duree_total, prix, difficulte, utilisateur_id_user, regime_id_regime, nbr_personne) VALUES (4,'salad','wow salade',15,1,1,4,1,3);
INSERT INTO Recette(id_recette, nom_recette, description, duree_total, prix, difficulte, utilisateur_id_user, regime_id_regime, nbr_personne) VALUES (5,'steak','gimme steak plzz',45,4,5,6,8,1);
INSERT INTO Recette(id_recette, nom_recette, description, duree_total, prix, difficulte, utilisateur_id_user, regime_id_regime, nbr_personne) VALUES (6,'jus d orange','fresh orange',10,5,1,7,1,2);
INSERT INTO Recette(id_recette, nom_recette, description, duree_total, prix, difficulte, utilisateur_id_user, regime_id_regime, nbr_personne) VALUES (7,'chicken winges','fast food good food',30,3,4,null,null,4);
INSERT INTO Recette(id_recette, nom_recette, description, duree_total, prix, difficulte, utilisateur_id_user, regime_id_regime, nbr_personne) VALUES (8,'pasta','time for pasta',30,2,2,8,7,3);
INSERT INTO Recette(id_recette, nom_recette, description, duree_total, prix, difficulte, utilisateur_id_user, regime_id_regime, nbr_personne) VALUES (9,'soupe de fruits de mer','nothing better than seafood soup',30,3,4,null,8,4);
INSERT INTO Recette(id_recette, nom_recette, description, duree_total, prix, difficulte, utilisateur_id_user, regime_id_regime, nbr_personne) VALUES (10,'champinion soup','love champinion',45,4,4,null,null,4);
INSERT INTO Recette(id_recette, nom_recette, description, duree_total, prix, difficulte, utilisateur_id_user, regime_id_regime, nbr_personne) VALUES (11,'salade tendy','vegan salade trendy ',10,5,3,null,1,3);
INSERT INTO Recette(id_recette, nom_recette, description, duree_total, prix, difficulte, utilisateur_id_user, regime_id_regime, nbr_personne) VALUES (12,'appel tarte','some desert plzz',60,4,5,null,null,5);
INSERT INTO Recette(id_recette, nom_recette, description, duree_total, prix, difficulte, utilisateur_id_user, regime_id_regime, nbr_personne) VALUES (13,'brownie','ohh my chocolate ',45,1,4,null,null,5);


INSERT INTO Category ( id_category, nom_category ) VALUES (1,'vegetables and legumes');
INSERT INTO Category ( id_category, nom_category ) VALUES (2,'milk product');
INSERT INTO Category ( id_category, nom_category ) VALUES (3,'sucres et produits sucrés');
INSERT INTO Category ( id_category, nom_category ) VALUES (4,'matières grasses');
INSERT INTO Category ( id_category, nom_category ) VALUES (5,'boissons');
INSERT INTO Category ( id_category, nom_category ) VALUES (6,'viandes, poisson, oeufs');
INSERT INTO Category ( id_category, nom_category ) VALUES (7,'céreales et dérivés');






INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (1,'tomato','vegetables and legumes','high-quality',1 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (2,'fromage','milk product ','good',1 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (3,'poisson','viandes, poisson, oeufs','good',3 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (4,'farine','céreales et dérivés','good',1 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (5,'ouefs','viandes, poisson, oeufs','good',1 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (6,'champinion','vegetables and legumes','good',1 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (7,'steak','viandes, poisson','good',2 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (8,'potato','vegetables and legume','moyen',3 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (9,'jus d orange ','boissons','moyen',3 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (10,'bagettes','céreales et dérivés','good',3 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (11,'fruits de mer','viandes, poisson, oeufs','good',4);
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (12,'oignon','vegetables and legumes','good',3 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (13,'épinard','vegetables and legumes','good',5 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (14,'chou rouge','vegetables and legumes','good',5 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (15,'salade','vegetables and legumes','good',5 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (16,'brocoli','vegetables and legumes','good',5 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (17,'coca cola','boissons','pas mal',3 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (18,'café ','boissons','high-quality',3 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (19,'thé vert ','boissons','high-quality',3 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (20,'fusion d herbs','boissons','high-quality',3 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (21,'buerre','matières grasses','high-quality',6 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (22,'huile d olive','matières grasses','high-quality',6 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (23,'huile de noix de cocc','matières grasses','high-quality',6);
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (24,'sucre','sucres et produits sucrés','good',6 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (25,'apple','vegetables and legumes','good',6 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (26,'chocolat ','sucres et produits sucrés','good',6 );
INSERT INTO Ingrediant (id_ingrediant, nom_ingrediant, type, qualite, utilisateur_id_user ) VALUES (27,'poulets','viandes, poisson, oeufs','good',3 );

INSERT INTO Img_vid ( id_Img_vid, img_vid_link, img_or_vid, recette_id_recette )
VALUES
(1,'https://www.atelierdeschefs.com/media/recette-e30299-pizza-pepperoni-tomate-mozza.jpg','i',1);


INSERT INTO Etape ( id_etape, nom_etape, duree, recette_id_recette ) VALUES (1,'put the pizza ont the oven',15, 1 );
INSERT INTO Etape ( id_etape, nom_etape, duree, recette_id_recette ) VALUES (2,'put the butter on the potatos',10, 2 );
INSERT INTO Etape ( id_etape, nom_etape, duree, recette_id_recette ) VALUES (3,'clean the fish and marinate it',20, 3 );
INSERT INTO Etape ( id_etape, nom_etape, duree, recette_id_recette ) VALUES (4,'chope the vegtables',15, 4 );
INSERT INTO Etape ( id_etape, nom_etape, duree, recette_id_recette ) VALUES (5,'marinate the steak',10, 5 );
INSERT INTO Etape ( id_etape, nom_etape, duree, recette_id_recette ) VALUES (6,'squeeze the orange ',10, 6 );
INSERT INTO Etape ( id_etape, nom_etape, duree, recette_id_recette ) VALUES (7,'fry the chicken',30, 7 );
INSERT INTO Etape ( id_etape, nom_etape, duree, recette_id_recette ) VALUES (8,'put the cheese on the pasta',5, 8 );
INSERT INTO Etape ( id_etape, nom_etape, duree, recette_id_recette ) VALUES (9,'put the sea food on the soup',5, 9 );
INSERT INTO Etape ( id_etape, nom_etape, duree, recette_id_recette ) VALUES (10,'chop the champinion',10, 10 );
INSERT INTO Etape ( id_etape, nom_etape, duree, recette_id_recette ) VALUES (11,' chop the vegetables into tiny slices ',10, 11);
INSERT INTO Etape ( id_etape, nom_etape, duree, recette_id_recette ) VALUES (12,'marinate the appele with suger an cinamon ',10, 12);
INSERT INTO Etape ( id_etape, nom_etape, duree, recette_id_recette ) VALUES (13,'melt the choclate bar',10, 13);

INSERT INTO Qualite ( id_qualite, qualite_calories, qualite_lipides, qualite_glucides, qualite_protides, recette_id_recette ) VALUES (1,1120,10,130,12,1 );
INSERT INTO Qualite ( id_qualite, qualite_calories, qualite_lipides, qualite_glucides, qualite_protides, recette_id_recette ) VALUES (2,1130,20,140,13,2 );
INSERT INTO Qualite ( id_qualite, qualite_calories, qualite_lipides, qualite_glucides, qualite_protides, recette_id_recette ) VALUES (3,1140,30,150,14,3 );
INSERT INTO Qualite ( id_qualite, qualite_calories, qualite_lipides, qualite_glucides, qualite_protides, recette_id_recette ) VALUES (4,1150,40,160,15,4 );
INSERT INTO Qualite ( id_qualite, qualite_calories, qualite_lipides, qualite_glucides, qualite_protides, recette_id_recette ) VALUES (5,1160,50,170,16,5 );
INSERT INTO Qualite ( id_qualite, qualite_calories, qualite_lipides, qualite_glucides, qualite_protides, recette_id_recette ) VALUES (6,1170,60,180,17,6 );
INSERT INTO Qualite ( id_qualite, qualite_calories, qualite_lipides, qualite_glucides, qualite_protides, recette_id_recette ) VALUES (7,1180,70,190,18,7 );
INSERT INTO Qualite ( id_qualite, qualite_calories, qualite_lipides, qualite_glucides, qualite_protides, recette_id_recette ) VALUES (8,1190,80,120,19,8 );
INSERT INTO Qualite ( id_qualite, qualite_calories, qualite_lipides, qualite_glucides, qualite_protides, recette_id_recette ) VALUES (9,1110,90,110,20,9 );


INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(1,1,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(1,2,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(1,4,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(1,6,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(1,5,null,null );

INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(2,21,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(2,2,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(2,8,null,null );

INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(3,3,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(3,21,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(3,22,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(3,16,null,null );

INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(4,1,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(4,13,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(4,14,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(4,15,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(4,16,null,null );

INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(5,6,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(5,22,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(5,7,null,null );


INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(6,1,null,null );


INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(7,24,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(7,9,null,null );

INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(8,1,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(8,2,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(8,6,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(8,21,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(8,22,null,null );


INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(9,3,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(9,6,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(9,16,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(9,11,null,null );



INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(10,6,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(10,12,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(10,21,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(10,22,null,null );


INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(11,1,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(11,6,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(11,12,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(11,13,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(11,14,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(11,15,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(11,16,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(11,22,null,null );


INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(12,4,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(12,5,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(12,25,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(12,24,null,null );



INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(13,26,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(13,24,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(13,4,null,null );
INSERT INTO Recette_contient_Ingrediant ( recette_id_recette, ingrediant_id_ingrediant, quantite_unit, quantite_gramme ) VALUES(13,5,null,null );




INSERT INTO Menu ( id_menu, recette_id_recette, utilisateur_id_user, date_menu ) VALUES (1,1,1, (to_date('2021/11/22', 'yyyy/mm/dd')));
INSERT INTO Menu ( id_menu, recette_id_recette, utilisateur_id_user, date_menu ) VALUES (2,2,2, (to_date('2021/11/23', 'yyyy/mm/dd')));
INSERT INTO Menu ( id_menu, recette_id_recette, utilisateur_id_user, date_menu ) VALUES (3,3,3, (to_date('2021/11/24', 'yyyy/mm/dd')));
INSERT INTO Menu ( id_menu, recette_id_recette, utilisateur_id_user, date_menu ) VALUES (4,4,4, (to_date('2021/11/25', 'yyyy/mm/dd')));
INSERT INTO Menu ( id_menu, recette_id_recette, utilisateur_id_user, date_menu ) VALUES (5,5,5, (to_date('2021/11/27', 'yyyy/mm/dd')));
INSERT INTO Menu ( id_menu, recette_id_recette, utilisateur_id_user, date_menu ) VALUES (6,6,6, (to_date('2021/11/27', 'yyyy/mm/dd')));
INSERT INTO Menu ( id_menu, recette_id_recette, utilisateur_id_user, date_menu ) VALUES (7,7,7, (to_date('2021/11/28', 'yyyy/mm/dd')));
INSERT INTO Menu ( id_menu, recette_id_recette, utilisateur_id_user, date_menu ) VALUES (8,8,8, (to_date('2021/11/29', 'yyyy/mm/dd')));
INSERT INTO Menu ( id_menu, recette_id_recette, utilisateur_id_user, date_menu ) VALUES (9,9,9, (to_date('2021/11/30', 'yyyy/mm/dd')));
INSERT INTO Menu ( id_menu, recette_id_recette, utilisateur_id_user, date_menu ) VALUES (10,10,10, (to_date('2021/12/22', 'yyyy/mm/dd')));
INSERT INTO Menu ( id_menu, recette_id_recette, utilisateur_id_user, date_menu ) VALUES (11,11,9, (to_date('2021/12/23', 'yyyy/mm/dd')));
INSERT INTO Menu ( id_menu, recette_id_recette, utilisateur_id_user, date_menu ) VALUES (12,12,8, (to_date('2021/12/24', 'yyyy/mm/dd')));
INSERT INTO Menu ( id_menu, recette_id_recette, utilisateur_id_user, date_menu ) VALUES (13,13,7, (to_date('2021/12/25', 'yyyy/mm/dd')));


INSERT INTO Dispose ( id_dispose, ingrediant_id_ingrediant, utilisateur_id_user, date_dispose ) VALUES (1,1,1, (to_date('2021/11/22', 'yyyy/mm/dd')) );
INSERT INTO Dispose ( id_dispose, ingrediant_id_ingrediant, utilisateur_id_user, date_dispose ) VALUES (2,2,2, (to_date('2021/11/23', 'yyyy/mm/dd')) );
INSERT INTO Dispose ( id_dispose, ingrediant_id_ingrediant, utilisateur_id_user, date_dispose ) VALUES (3,3,3, (to_date('2021/11/24', 'yyyy/mm/dd')) );
INSERT INTO Dispose ( id_dispose, ingrediant_id_ingrediant, utilisateur_id_user, date_dispose ) VALUES (4,4,4, (to_date('2021/11/25', 'yyyy/mm/dd')) );
INSERT INTO Dispose ( id_dispose, ingrediant_id_ingrediant, utilisateur_id_user, date_dispose ) VALUES (5,5,5, (to_date('2021/11/26', 'yyyy/mm/dd')) );
INSERT INTO Dispose ( id_dispose, ingrediant_id_ingrediant, utilisateur_id_user, date_dispose ) VALUES (6,6,6, (to_date('2021/11/27', 'yyyy/mm/dd')) );
INSERT INTO Dispose ( id_dispose, ingrediant_id_ingrediant, utilisateur_id_user, date_dispose ) VALUES (7,7,7, (to_date('2021/11/28', 'yyyy/mm/dd')) );
INSERT INTO Dispose ( id_dispose, ingrediant_id_ingrediant, utilisateur_id_user, date_dispose ) VALUES (8,8,8, (to_date('2021/11/29', 'yyyy/mm/dd')) );
INSERT INTO Dispose ( id_dispose, ingrediant_id_ingrediant, utilisateur_id_user, date_dispose ) VALUES (9,9,9, (to_date('2021/11/30', 'yyyy/mm/dd')) );
INSERT INTO Dispose ( id_dispose, ingrediant_id_ingrediant, utilisateur_id_user, date_dispose ) VALUES (10,10,10,(to_date('2021/12/01', 'yyyy/mm/dd')) );
INSERT INTO Dispose ( id_dispose, ingrediant_id_ingrediant, utilisateur_id_user, date_dispose ) VALUES (11,11,9, (to_date('2021/12/02', 'yyyy/mm/dd')) );
INSERT INTO Dispose ( id_dispose, ingrediant_id_ingrediant, utilisateur_id_user, date_dispose ) VALUES (12,12,8, (to_date('2021/12/03', 'yyyy/mm/dd')) );
INSERT INTO Dispose ( id_dispose, ingrediant_id_ingrediant, utilisateur_id_user, date_dispose ) VALUES (13,13,7, (to_date('2021/12/04', 'yyyy/mm/dd')) );
INSERT INTO Dispose ( id_dispose, ingrediant_id_ingrediant, utilisateur_id_user, date_dispose ) VALUES (14,14,6, (to_date('2021/12/05', 'yyyy/mm/dd')) );
INSERT INTO Dispose ( id_dispose, ingrediant_id_ingrediant, utilisateur_id_user, date_dispose ) VALUES (15,15,5, (to_date('2021/12/06', 'yyyy/mm/dd')) );




INSERT INTO Liste_d_achat ( id_Liste_d_achat, ingrediant_id_ingrediant, utilisateur_id_user, date_liste ) VALUES (1,16,1, (to_date('2021/12/01', 'yyyy/mm/dd')) );
INSERT INTO Liste_d_achat ( id_Liste_d_achat, ingrediant_id_ingrediant, utilisateur_id_user, date_liste ) VALUES (2,17,2, (to_date('2021/12/02', 'yyyy/mm/dd')) );
INSERT INTO Liste_d_achat ( id_Liste_d_achat, ingrediant_id_ingrediant, utilisateur_id_user, date_liste ) VALUES (3,18,3, (to_date('2021/12/03', 'yyyy/mm/dd')) );
INSERT INTO Liste_d_achat ( id_Liste_d_achat, ingrediant_id_ingrediant, utilisateur_id_user, date_liste ) VALUES (4,19,4, (to_date('2021/12/04', 'yyyy/mm/dd')) );
INSERT INTO Liste_d_achat ( id_Liste_d_achat, ingrediant_id_ingrediant, utilisateur_id_user, date_liste ) VALUES (5,20,5, (to_date('2021/12/05', 'yyyy/mm/dd')) );
INSERT INTO Liste_d_achat ( id_Liste_d_achat, ingrediant_id_ingrediant, utilisateur_id_user, date_liste ) VALUES (6,21,6, (to_date('2021/12/06', 'yyyy/mm/dd')) );
INSERT INTO Liste_d_achat ( id_Liste_d_achat, ingrediant_id_ingrediant, utilisateur_id_user, date_liste ) VALUES (7,22,7, (to_date('2021/12/07', 'yyyy/mm/dd')) );
INSERT INTO Liste_d_achat ( id_Liste_d_achat, ingrediant_id_ingrediant, utilisateur_id_user, date_liste ) VALUES (8,23,9, (to_date('2021/12/08', 'yyyy/mm/dd')) );
INSERT INTO Liste_d_achat ( id_Liste_d_achat, ingrediant_id_ingrediant, utilisateur_id_user, date_liste ) VALUES (9,24,10, (to_date('2021/12/09', 'yyyy/mm/dd')) );
INSERT INTO Liste_d_achat ( id_Liste_d_achat, ingrediant_id_ingrediant, utilisateur_id_user, date_liste ) VALUES (10,25,9, (to_date('2021/12/10', 'yyyy/mm/dd')) );
INSERT INTO Liste_d_achat ( id_Liste_d_achat, ingrediant_id_ingrediant, utilisateur_id_user, date_liste ) VALUES (11,26,8, (to_date('2021/12/11', 'yyyy/mm/dd')) );
INSERT INTO Liste_d_achat ( id_Liste_d_achat, ingrediant_id_ingrediant, utilisateur_id_user, date_liste ) VALUES (12,27,7, (to_date('2021/12/12', 'yyyy/mm/dd')) );

INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (1,1,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (1,2,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (2,1,'Y' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (3,7,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (4,3,'Y' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (5,7,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (6,2,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (6,1,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (7,1,'Y' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (7,7,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (8,1,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (8,2,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (9,1,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (9,2,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (10,3,'Y' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (11,1,'Y' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (11,7,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (11,8,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (12,1,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (13,1,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (14,1,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (15,1,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (12,2,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (13,2,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (14,2,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (15,2,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (16,1,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (16,2,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (17,4,'Y' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (18,4,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (19,4,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (20,4,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (18,1,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (19,1,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (20,1,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (18,2,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (19,2,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (20,2,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (21,1,'Y' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (21,9,'Y' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (22,1,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (23,1,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (24,4,'Y' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (25,1,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (25,2,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (25,4,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (26,1,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (27,1,'Y' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (27,2,'Y' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (27,7,'N' );
INSERT INTO Interdit ( ingrediant_id_ingrediant, regime_idRegime, interdit ) VALUES (27,8,'N' );



INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (1,1);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (1,6);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (1,8);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (1,12);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (1,13);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (1,14);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (1,15);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (1,16);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (1,25);



INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (2,2);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (2,21);

INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (3,24);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (3,26);


INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (4,21);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (4,22);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (4,23);


INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (5,18);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (5,19);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (5,20);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (5,9);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (5,17);


INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (6,3);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (6,5);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (6,7);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (6,27);
INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (6,11);


INSERT INTO Ingrediant_category (cat_id_category, ingrediant_id_ingrediant) VALUES (7,4);




