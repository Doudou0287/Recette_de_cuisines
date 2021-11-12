
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

-- Table Regime

CREATE TABLE Regime (
  id_regime INT NOT NULL,
  nom_regime VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_regime)
);

----------------------------------------------------------

-- Table Recette

CREATE TABLE Recette (
  id_recette INT NOT NULL,
  nom_recette VARCHAR(45) NOT NULL,
  description varchar(4000) NULL,
  duree_total DATE NOT NULL,
  prix INT CHECK (prix > 0) NULL,
  difficulte INT CHECK (difficulte > 0) NULL,
  utilisateur_id_user INT NULL,
  regime_id_regime INT NULL,
  PRIMARY KEY (id_recette)
);

-- Alter Tables Recette 

ALTER TABLE Recette
	ADD CONSTRAINT fk_recette_User1
    FOREIGN KEY (utilisateur_id_user)
    REFERENCES Utilisateur (id_user)
    ON DELETE CASCADE;



ALTER TABLE Recette
	ADD CONSTRAINT fk_recette_regime
    FOREIGN KEY (regime_id_regime)
    REFERENCES Regime (id_regime)
    ON DELETE CASCADE;


ALTER TABLE Recette
	ADD  CONSTRAINT ch_prix CHECK (prix between 1 and 5);

ALTER TABLE Recette
	ADD  CONSTRAINT ch_diff CHECK (difficulte between 1 and 5);




------------------------------------------------------
-- Table Category

CREATE TABLE Category (
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
  category_id_category INT NOT NULL,
  utilisateur_id_user INT NULL,
  PRIMARY KEY (id_ingrediant)
);


-- Alter Tables Ingrediant 

ALTER TABLE Ingrediant
	ADD CONSTRAINT fk_ingrediant_Categorie1
    FOREIGN KEY (category_id_category)
    REFERENCES Category (id_category)
    ON DELETE CASCADE;
    
ALTER TABLE Ingrediant
	ADD CONSTRAINT fk_ingrediant_user
    FOREIGN KEY (utilisateur_id_user)
    REFERENCES Utilisateur (id_user)
    ON DELETE CASCADE;






------------------------------------------------------
-- Table Img_vid

CREATE TABLE Img_vid (
  id_Img_vid INT CHECK (id_Img_vid > 0) NOT NULL,
  img_vid_link VARCHAR(4000) NOT NULL,
  img_or_vid CHAR(1) NULL,
  recette_id_recette INT NOT NULL,
  PRIMARY KEY (id_Img_vid)
);

-- Alter Tables Img_vid 

ALTER TABLE Img_vid
	ADD CONSTRAINT fk_Img_vid_recette1
    FOREIGN KEY (recette_id_recette)
    REFERENCES Recette (id_recette)
    ON DELETE CASCADE;

ALTER TABLE Img_vid
	ADD  CONSTRAINT ch_img_or_vid CHECK (img_or_vid = 'i' or img_or_vid = 'v');

-- Table Etape

CREATE TABLE Etape (
  id_etape INT CHECK (id_etape > 0) NOT NULL,
  nom_etape VARCHAR(45) NOT NULL,
  duree DATE NULL,
  recette_id_recette INT NULL,
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

CREATE TABLE Recette_contient_Ingrediant (
  recette_id_recette INT NOT NULL,
  ingrediant_id_ingrediant INT NOT NULL,
  quantite_unit INT NULL,
  quantite_gramme INT NULL,
  nbr_personne INT NOT NULL,
  PRIMARY KEY (recette_id_recette, ingrediant_id_ingrediant)
);


---------------------------------------------------------
-- Table Menu

CREATE TABLE Menu (
  id_menu INT CHECK (id_menu > 0) NOT NULL,
  recette_id_recette INT NOT NULL,
  utilisateur_id_user INT NOT NULL,
  date_menu DATE NOT NULL,
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
  date_dispose DATE NOT NULL,
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
  regime_idRegime INT NOT NULL,
  ingrediant_id_ingrediant INT NOT NULL,
  interdit CHAR(1) CHECK ((interdit = 'Y') or (interdit = 'N')) NOT NULL,
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


