%_Projet_prolog_Quoridor

%_I)Definition_des_termes

%_A_Definition_elements_base
%coordonnees(x,y)

%_B_Definition_Pion
%infosPion(Id,PointDepart,Position,LigneArrivee)

%_C_Definition_Joueur
%infosJoueur(Id,NombrePartiesGagnees)
%pionPartie(pion)
%joueur(infosJoueur(Nom,NombrePartiesGagnees),?pionPartie(pion),?NombreMursRestant)

%_D_Definition_Partie
%partie(NbJoueurs,Etat,JoueurActif)

%_E_Definition_Mur
%mur(coordonnes(x,y),coordonnees(x1,y1))
%listeMur([])

%_II)Base_de_donnees

%Pion
%infosPion(Id,PointDepart,Position,LigneArrivee)
%pion('P1',coordonnees(0,4),coordonnees(0,4),coordonnees(9,0)).
%pion('P2',coordonnees(9,4),coordonnees(9,4),coordonnees(0,9)).
%pion('P3',coordonnees(9,4),coordonnees(9,4),coordonnees(0,9)).
%pion('P4',coordonnees(9,4),coordonnees(9,4),coordonnees(0,9)).

%Joueurs_noormalement_ok
%joueur(nom,coordonnées,nbmur)
%joueur(['J1', coordonnees(0,4), 10]).
%joueur(['J2', coordonnees(9,4)], 10]).

%Mur
%listeMur([]).

%_III)Fonction_jeu

%Lancer_Partie

%On_recommence_le_code

%A)Initialisation_predicats_base

%Joueurs_noormalement_ok
%joueur(nom,coordonnées,nbmur)

:- dynamic(joueur/1)
joueur(['J1', coordonnees(0,4), 10]).
joueur(['J2', coordonnees(9,4)], 10]).

%Etat_plateau
%([positionJoueur1,positionJoueur2, [liste mur]])

:- dynamic(plateau/1)
plateau([[X1,Y1],[X2,Y2],[]]).




