%_Projet_prolog_Quoridor

%_I)Definition_des_termes

%_A_Definition_elements_base
%coordonnees(x,y)

%_B_Definition_Pion
%infosPion(Id,PointDepart,Position,LigneArrivee)

%_C_Definition_Joueur
%infosJoueur(Nom,NombrePartiesGagnees)
%pionPartie(pion)
%joueur(infosJoueur(Nom,NombrePartiesGagnees),?pionPartie(pion),?NombreMursRestant)

%_D_Definition_Partie
%partie(NbJoueurs,Etat,JoueurActif)

%_E_Definition_Mur
%mur(coordonnes(x,y),coordonnees(x1,y1))
%listeMur([])

%_II)Base_de_donnees

%Pion
pion('P1',coordonnees(0,4),coordonnees(0,4),coordonnees(9,0)).
pion('P2',coordonnees(9,4),coordonnees(9,4),coordonnees(0,9)).
pion('P3',coordonnees(9,4),coordonnees(9,4),coordonnees(0,9)).
pion('P4',coordonnees(9,4),coordonnees(9,4),coordonnees(0,9)).

%Joueurs
joueur('Jerome',0,pion1,10).
joueur('Pierre-Alexandre',1,pion2,10).

%Mur
listeMur([]).

%_III)Fonction_jeu

%Lancer_Partie

