
-- Table Utilisateur

CREATE TABLE Utilisateur (
  id_user INT CHECK (id_user > 0) NOT NULL,
  login VARCHAR(45) NOT NULL,
  adresse_email VARCHAR(45) NOT NULL,
  mdp VARCHAR(45) NOT NULL,
  prenom VARCHAR(45) NULL,
  nom VARCHAR(45) NULL,
  PRIMARY KEY (id_user),
  CONSTRAINT login_UNIQUE UNIQUE (login )
);


-- Table Recette

CREATE TABLE Recette (
  id_recette INT NOT NULL,
  nom_recette VARCHAR(45) NOT NULL,
  description VARCHAR(45) NULL,
  duree_total INT CHECK (duree_total > 0) NOT NULL,
  prix INT CHECK (prix > 0) NULL,
  difficulte INT CHECK (difficulte > 0) NULL,
  utilisateur_id_user INT NOT NULL,
  PRIMARY KEY (id_recette)
);

-- Alter Tables Recette 

ALTER TABLE Recette
	ADD CONSTRAINT fk_recette_User1
    FOREIGN KEY (utilisateur_id_user)
    REFERENCES Utilisateur (id_user)
    ON DELETE CASCADE;


ALTER TABLE Recette
	ADD  CONSTRAINT ch_prix CHECK (prix between 1 and 5);

ALTER TABLE Recette
	ADD  CONSTRAINT ch_diff CHECK (difficulte between 1 and 5);




------------------------------------------------------
-- Table Categorie

CREATE TABLE Categorie (
  id_category INT NOT NULL,
  nom_category VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_category)
);

------------------------------------------------------



-- Table Ingrediant

CREATE TABLE Ingrediant (
  id_ingrediant INT CHECK (id_ingrediant > 0) NOT NULL,
  nom_ingrediant VARCHAR(45) NOT NULL,
  type VARCHAR(45) NULL,
  qualite VARCHAR(45) NULL,
  Categorie_id_category INT NOT NULL,
  PRIMARY KEY (id_ingrediant, Categorie_id_category),
  CONSTRAINT id_UNIQUE UNIQUE (id_ingrediant)
);


-- Alter Tables Ingrediant 

ALTER TABLE Ingrediant
	ADD CONSTRAINT fk_ingrediant_Categorie1
    FOREIGN KEY (Categorie_id_category)
    REFERENCES Categorie (id_category)
    ON DELETE CASCADE;


-- Table Regime

CREATE TABLE Regime (
  id_regime INT NOT NULL,
  nom_regime VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_regime)
);




------------------------------------------------------
-- Table Img_vid

CREATE TABLE Img_vid (
  id_Img_vid INT CHECK (id_Img_vid > 0) NOT NULL,
  img_vid_link VARCHAR(45) NOT NULL,
  img_or_vid VARCHAR(45) NULL,
  recette_id_recette INT NOT NULL,
  PRIMARY KEY (id_Img_vid)
);

-- Alter Tables Img_vid 

ALTER TABLE Img_vid
	ADD CONSTRAINT fk_Img_vid_recette1
    FOREIGN KEY (recette_id_recette)
    REFERENCES Recette (id_recette)
    ON DELETE CASCADE;


-- Table Etape

CREATE TABLE Etape (
  id_etape INT CHECK (id_etape > 0) NOT NULL,
  nom_etape VARCHAR(45) NOT NULL,
  duree INT NULL,
  recette_id_recette INT NOT NULL,
  PRIMARY KEY (id_etape)
);

-- Alter Tables Etape 

ALTER TABLE Etape
	ADD CONSTRAINT fk_Etape_recette1
    FOREIGN KEY (recette_id_recette)
    REFERENCES Recette (id_recette)
    ON DELETE CASCADE;



-- Table Qualite

CREATE TABLE Qualite (
  id_qualite INT NOT NULL,
  qualite_calories VARCHAR(45) NULL,
  qualite_lipides VARCHAR(45) NULL,
  qualite_glucides VARCHAR(45) NULL,
  qualite_protides VARCHAR(45) NULL,
  recette_id_recette INT NOT NULL,
  PRIMARY KEY (id_qualite)
);


-- Alter Tables Qualite 

ALTER TABLE Qualite
	ADD CONSTRAINT fk_Qualite_recette1
    FOREIGN KEY (recette_id_recette)
    REFERENCES Recette (id_recette)
    ON DELETE CASCADE;


---------------------------------------------------------


--Table Recette_contient_Ingredient

CREATE TABLE Recette_contient_Ingredient (
  recette_id_recette INT NOT NULL,
  ingrediant_id_ingrediant INT NOT NULL,
  quantite_unit INT NULL,
  quantite_game INT NULL,
  nbr_personne INT NOT NULL,
  PRIMARY KEY (recette_id_recette, ingrediant_id_ingrediant)
);


---------------------------------------------------------
-- Table Menu

CREATE TABLE Menu (
  id_menu INT CHECK (id_menu > 0) NOT NULL,
  recette_id_recette INT NOT NULL,
  utilisateur_id_user INT NOT NULL,
  date_menu VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_menu, recette_id_recette, utilisateur_id_user)
);
  
-- Alter Tables Menu 

ALTER TABLE Menu
	ADD CONSTRAINT fk_menu1
    FOREIGN KEY (recette_id_recette)
    REFERENCES Recette (id_recette)
    ON DELETE CASCADE;

ALTER TABLE Menu
	ADD CONSTRAINT fk_menu
    FOREIGN KEY (utilisateur_id_user)
    REFERENCES Utilisateur (id_user)
    ON DELETE CASCADE;



--Table Dispose

CREATE TABLE Dispose (
  id_dispose INT CHECK (id_dispose > 0) NOT NULL,
  utilisateur_id_user INT NOT NULL,
  ingrediant_id_ingrediant INT NOT NULL,
  date_dispose INT NOT NULL,
  PRIMARY KEY (id_dispose, utilisateur_id_user, ingrediant_id_ingrediant)
);
  
-- Alter Tables Dispose 

ALTER TABLE Dispose
	ADD CONSTRAINT fk_dispose
    FOREIGN KEY (utilisateur_id_user)
    REFERENCES Utilisateur (id_user)
    ON DELETE CASCADE;

    
ALTER TABLE Dispose
	ADD CONSTRAINT fk_dispose1
    FOREIGN KEY (ingrediant_id_ingrediant)
    REFERENCES Ingrediant (id_ingrediant)
    ON DELETE CASCADE;


------------------------------------------------------------------------

--Table Liste_d_achat

CREATE TABLE Liste_d_achat (
  id_Liste_d_achat INT CHECK (id_Liste_d_achat > 0) NOT NULL,
  utilisateur_id_user INT NOT NULL,
  ingrediant_id_ingrediant INT NOT NULL,
  date_liste DATE NOT NULL,
  PRIMARY KEY (id_Liste_d_achat, utilisateur_id_user, ingrediant_id_ingrediant)
);

-- Alter Tables Liste_d_achat 

ALTER TABLE Liste_d_achat
	ADD CONSTRAINT fk_Liste_d_achat_utilisateur
    FOREIGN KEY (utilisateur_id_user)
    REFERENCES Utilisateur (id_user)
    ON DELETE CASCADE;


ALTER TABLE Liste_d_achat
	ADD CONSTRAINT fk_Liste_d_achat_ingrediant
    FOREIGN KEY (ingrediant_id_ingrediant)
    REFERENCES Ingrediant (id_ingrediant)
    ON DELETE CASCADE;



-- Table Ingredient_regime 


CREATE TABLE Interdit (
  interdit CHAR(1) CHECK ((interdit = 'Y') or (interdit = 'N')) NOT NULL,
  regime_idRegime INT NOT NULL,
  ingrediant_id_ingrediant INT NOT NULL,
  PRIMARY KEY (regime_idRegime, ingrediant_id_ingrediant)
);


-- Alter Tables Ingredient_regime

ALTER TABLE Interdit
	ADD CONSTRAINT fk_Ingredient_regime_ingrediant1
    FOREIGN KEY (ingrediant_id_ingrediant)
    REFERENCES Ingrediant (id_ingrediant)
    ON DELETE CASCADE;

ALTER TABLE Interdit
	ADD CONSTRAINT fk_Ingredient_regime_Regime1
    FOREIGN KEY (regime_idRegime)
    REFERENCES Regime (id_regime)
    ON DELETE CASCADE;


--------------------------------------------------------------------------------
------------------------------------------


CREATE TABLE ArchiveMenu (
  recette_id_recette INT NOT NULL,
  utilisateur_id_user INT NOT NULL,
  date_archive_menu DATE NOT NULL,
  PRIMARY KEY (recette_id_recette, utilisateur_id_user)
);

CREATE TABLE ArchiveDispose (
  ingrediant_id_ingrediant INT NOT NULL,
  utilisateur_id_user INT NOT NULL,
  date_archive_dispose DATE NOT NULL,
  PRIMARY KEY (ingrediant_id_ingrediant, utilisateur_id_user)
);

CREATE TABLE ArchiveListe (
  ingrediant_id_ingrediant INT NOT NULL,
  utilisateur_id_user INT NOT NULL,
  date_archive_liste DATE NOT NULL,
  PRIMARY KEY (ingrediant_id_ingrediant, utilisateur_id_user)
);



