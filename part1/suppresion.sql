DELETE
FROM
    Recette
WHERE
    id_recette > 0;
    

DELETE
FROM
    Regime
WHERE
    id_regime > 0;
    

    
DELETE
FROM
    Utilisateur
WHERE
    id_user > 0;
      
DELETE
FROM
    Ingrediant
WHERE
    id_ingrediant > 0;
    
    
DELETE
FROM
    Category
WHERE
    id_category > 0;
    
   
DELETE
FROM
    Img_vid
WHERE
    id_Img_vid > 0;
    
  
DELETE
FROM
    Etape
WHERE
    id_etape > 0;
   
 
DELETE
FROM
    Etape
WHERE
    id_etape > 0;
    
    
DELETE
FROM
    Qualite
WHERE
    id_qualite > 0;
    
    
DELETE
FROM
    Recette_contient_Ingrediant
WHERE
    recette_id_recette > 0 or ingrediant_id_ingrediant > 0 ;
 
 
DELETE
FROM
    Menu
WHERE
    id_menu > 0;

DELETE
FROM
    Dispose
WHERE
    id_dispose > 0;

DELETE
FROM
    Liste_d_achat
WHERE
    id_Liste_d_achat > 0;
  
