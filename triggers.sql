------------------------------
--		01          --
------------------------------
CREATE OR REPLACE TRIGGER trig1
    BEFORE INSERT ON Recette_contient_Ingrediant
        FOR EACH ROW
    BEGIN 
        DECLARE 
            v_nbre_ingrediants NUMBER;
        BEGIN 
            SELECT COUNT(ingrediant_id_ingrediant) INTO v_nbre_ingrediants
            FROM Recette_contient_Ingrediant
            WHERE recette_id_recette = :new.recette_id_recette;
            IF v_nbre_ingrediants >= 20 THEN
                raise_application_error(-20000, 'Pas plus de 20 ingrédients par recettes');
            END IF;
        END;
    END;
/

------------------------------
--              02          --
------------------------------
CREATE OR REPLACE TRIGGER trig2 
    BEFORE INSERT OR UPDATE
    ON Liste_d_achat
    FOR EACH ROW
    BEGIN
        BEGIN
            IF :new.date_liste >= ADD_MONTHS(SYSDATE, 1) THEN 
                raise_application_error(-20000, 'La liste des ingredients a acheter ne peut pas etre generee plus d un mois a l avance');
            END IF;
        END;
    END;
/

------------------------------
--              03          --
------------------------------
CREATE OR REPLACE TRIGGER trig3
    BEFORE INSERT OR UPDATE 
        ON Recette
        FOR EACH ROW 
    BEGIN 
        DECLARE 
            v_duree_total Recette.duree_total%TYPE;
            v_duree Etape.duree%TYPE;
        BEGIN
            SELECT SUM(duree) INTO v_duree FROM Etape WHERE recette_id_recette = :new.id_recette;
            SELECT duree_total INTO v_duree_total FROM Recette WHERE id_recette = :new.id_recette;
            IF v_duree_total < v_duree 
                THEN raise_application_error(-20000, 'La duree d une recette est égale au moins au minimum de la durée de ses étape');
            END IF;
        END;
    END;
/


------------------------------
--              04          --
------------------------------
CREATE OR REPLACE TRIGGER trig4
AFTER UPDATE OR DELETE ON Recette_contient_Ingrediant
FOR EACH ROW
DECLARE
    var_calories NUMERIC;
BEGIN
     SELECT qualite into var_calories from Ingrediant where :old.ingrediant_id_ingrediant = id_ingrediant;
        UPDATE Qualite SET Qualite.qualite_calories = Qualite.qualite_calories - (var_calories * :old.quantite_unit)
        WHERE :old.recette_id_recette = recette_id_recette;
    end;
/


------------------------------
--              05          --
------------------------------
create or replace trigger menu_archive
    before delete on Menu
    for each row
    begin
        insert into ArchiveMenu(id_archive_menu,recette_id_recette,utilisateur_id_user,
                    date_archive_menu)
        values(:old.id_menu,:old.recette_id_recette,:old.utilisateur_id_user,:old.date_menu);
        dbms_output.put_line('menu est archivé');
end;
/
-------------------------------
create or replace trigger achat_archive
    before delete on Liste_d_achat
    for each row
    begin
        insert into ArchiveListe(id_archive_achat,ingrediant_id_ingrediant,utilisateur_id_user,
            date_archive_liste)
        values(:old.id_Liste_d_achat,:old.ingrediant_id_ingrediant,:old.utilisateur_id_user,:old.date_liste);
        dbms_output.put_line('achat est archivé');
end;
/
-------------------------------
create or replace trigger dispose_archive
    before delete on Dispose
    for each row
    begin
        insert into ArchiveDispose(id_archive_dispose,ingrediant_id_ingrediant,utilisateur_id_user,
            date_archive_dispose)
        values(:old.id_dispose,:old.ingrediant_id_ingrediant,:old.utilisateur_id_user,:old.date_dispose);
        dbms_output.put_line('dispose est archivé');
end;
/

