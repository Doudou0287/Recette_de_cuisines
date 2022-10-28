----------------------------------
--              01              --
----------------------------------

CREATE OR REPLACE FUNCTION fun1(
    v_id_recette IN Recette.id_recette%TYPE,
    v_send IN Ingrediant.id_ingrediant%TYPE,
    v_recived In Ingrediant.id_ingrediant%TYPE
) RETURN CLOB IS 
BEGIN 
    DECLARE 
        CURSOR c_etape IS
            SELECT nom_etape, duree
        FROM Etape
        WHERE recette_id_recette = v_id_recette;
    v_ingrediant1  Ingrediant.nom_ingrediant%TYPE;
    v_ingrediant2 Ingrediant.nom_ingrediant%TYPE;
    v_var CLOB := '';

    BEGIN 
        SELECT nom_ingrediant INTO v_ingrediant1 FROM Ingrediant WHERE id_ingrediant = v_send;
        SELECT nom_ingrediant Into v_ingrediant2 FROM Ingrediant WHERE 
id_ingrediant = v_recived;



    FOR v_etape IN c_etape LOOP
        v_var  := v_var || REPLACE(v_etape.nom_etape, v_ingrediant1, v_ingrediant2);

        v_var := v_var || CHR(10);
    END LOOP;

    RETURN v_var;
    END;
END;
/
----------------------------------
--              02              --
----------------------------------

CREATE OR REPLACE FUNCTION fun2(
  v_id_recette IN Recette.id_recette%TYPE,
  v_nb_persones IN Recette.nbr_personne%TYPE
) RETURN CLOB IS
BEGIN
  DECLARE
    v_nb_persones_origin Recette.nbr_personne%TYPE;
    CURSOR c_ingrs IS
      SELECT ir.ingrediant_id_ingrediant, ir.quantite_unit, i.nom_ingrediant
        FROM Recette_contient_Ingrediant ir, Ingrediant i
        WHERE ir.ingrediant_id_ingrediant = i.id_ingrediant AND ir.recette_id_recette = v_id_recette;
    v_res CLOB :=  '';
  BEGIN
    SELECT nbr_personne INTO v_nb_persones_origin
      FROM Recette
      WHERE id_recette = v_id_recette;

    FOR v_ingr IN c_ingrs LOOP
      v_res := v_res || '  - ' || v_ingr.nom_ingrediant || ' with quantite :  ' || (v_ingr.quantite_unit / v_nb_persones_origin) * v_nb_persones  || CHR(10);
    END LOOP;

    RETURN v_res;
  END;
END;
/
----------------------------------
--              04              --
----------------------------------
CREATE OR REPLACE FUNCTION fun4(
    v_id_recette IN Recette.id_recette%TYPE,
    v_nom_regime IN Regime.nom_regime%TYPE
) RETURN BOOLEAN IS
BEGIN 
    DECLARE 
    v_bool BOOLEAN := TRUE;
    CURSOR c_recette IS
        SELECT recette_id_recette FROM Recette_contient_Ingrediant WHERE ingrediant_id_ingrediant IN 
        ( SELECT Interdit.ingrediant_id_ingrediant FROM Regime, Interdit
            WHERE Interdit.regime_idRegime = Regime.id_regime 
            AND Regime.nom_regime = v_nom_regime );
    
    BEGIN 
        FOR v_recette IN c_recette LOOP
        IF v_recette.recette_id_recette = v_id_recette THEN 
            v_bool := FALSE;
        END IF;
        END LOOP;
        RETURN v_bool;
    END;
END;
/
----------------------------------
--              05              --
----------------------------------

CREATE OR REPLACE function fun5(id_menu INTEGER, id_user INTEGER, date_liste DATE) RETURN CLOB IS

v_res CLOB :=  '';
 BEGIN
DECLARE 
v_ingrediant Ingrediant.id_ingrediant%TYPE;
CURSOR sd IS
    SELECT Recette_contient_ingrediant.ingrediant_id_ingrediant as v_ingrediant FROM Recette_contient_ingrediant INNER JOIN Menu
        ON Menu.recette_id_recette = Recette_contient_ingrediant.recette_id_recette
        WHERE Menu.id_menu = id_menu GROUP BY v_ingrediant;


BEGIN 
FOR e IN sd LOOP
         INSERT INTO Liste_d_achat VALUES(5, e.v_ingrediant, id_user, date_liste);
     END loop;
COMMIT;
END;
END;
/
