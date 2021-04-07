%. Si un pion est situé sur une tuile dont une tuile voisine comporte elle-même un autre pion, alors le premier pion peut sauter au-dessus du second pion. Si la tuile qui pourrait ainsi recevoir un pion sauteur est occupée par un troisième pion, ou si un mur empêche d'accéder à cette tuile, alors le pion sauteur peut être posé sur n'importe quelle autre tuile adjacente au pion sauté.
%Les murs ne doivent pas interdire l'accès aux lignes d'arrivées des pions adverses.
%Problemes de bords, quand on veut jouer derriere un bord c'est l'autre pion qui est déplacé


% Appel de la librairie
:- dynamic(listeMurs/1).
:- dynamic(murs/3).
:- dynamic(casesJouables/1).
:- use_module(library(pce)).

%consignes
consignes :-
    write('Votre objectif est de toucher le mur oppose a celui de depart.\n'),
    write('Le premier joueur est le joueur bleu.\n'),
    write('Pour jouer, vous avez deux possibilites : deplacer votre pion ou poser un mur (jusqu a 10 chacun).\n'),
    write('Vous pouvez deplacer votre pion uniquement sur les cases en jaune, en tapant les commandes suivantes : "bas(N°J)." ou "haut(N°J)." ou "gauche(N°J)." ou "droite(N°J)." en fonction de l endroit ou vous souhaitez mettre votre pion.\n'),
    write('Pour les murs, par exemple pour poser un mur horizontal sous les cases 1 et 2 de la ligne 1, vous devez utiliser la commande "mur(h,1,1)." \n'),
    write('Pour poser un mur vertical a droite des cases 2 et 3 de la colonne 5, vous devez utiliser la commande "mur(v,2,5)." \n'),
    write('Vous ne  pouvez pas poser de mur sur un endroit deja utilise.\n'),
    write('Vous pouvez revoir les consignes a tout moment en tapant : "consignes."\n\n\n\n').


%restart le programme
restart :- 
    retractall(joueur(_,_,_)),
    retractall(murs(_,_,_)).

%Joueur(Id,[X,Y], nbMursRestants)
:- dynamic (joueur/3).

%Enumération de tous les routes possibles entre les differents points
:- dynamic (route/3).

 
%déplacement horizontal (gauche droite)
 
%1ère ligne
route((1,1),(1,2), true).
route((1,2),(1,3), true).
route((1,3),(1,4), true).
route((1,4),(1,5), true).
route((1,5),(1,6), true).
route((1,6),(1,7), true).
route((1,7),(1,8), true).
route((1,8),(1,9), true).
 
%2e ligne
route((2,1),(2,2), true).
route((2,2),(2,3), true).
route((2,3),(2,4), true).
route((2,4),(2,5), true).
route((2,5),(2,6), true).
route((2,6),(2,7), true).
route((2,7),(2,8), true).
route((2,8),(2,9), true).
 
%3e ligne
route((3,1),(3,2), true).
route((3,2),(3,3), true).
route((3,3),(3,4), true).
route((3,4),(3,5), true).
route((3,5),(3,6), true).
route((3,6),(3,7), true).
route((3,7),(3,8), true).
route((3,8),(3,9), true).
 
%4e ligne
route((4,1),(4,2), true).
route((4,2),(4,3), true).
route((4,3),(4,4), true).
route((4,4),(4,5), true).
route((4,5),(4,6), true).
route((4,6),(4,7), true).
route((4,7),(4,8), true).
route((4,8),(4,9), true).
 
%5e ligne
route((5,1),(5,2), true).
route((5,2),(5,3), true).
route((5,3),(5,4), true).
route((5,4),(5,5), true).
route((5,5),(5,6), true).
route((5,6),(5,7), true).
route((5,7),(5,8), true).
route((5,8),(5,9), true).
 
%6e ligne
route((6,1),(6,2), true).
route((6,2),(6,3), true).
route((6,3),(6,4), true).
route((6,4),(6,5), true).
route((6,5),(6,6), true).
route((6,6),(6,7), true).
route((6,7),(6,8), true).
route((6,8),(6,9), true).
 
%7e ligne
route((7,1),(7,2), true).
route((7,2),(7,3), true).
route((7,3),(7,4), true).
route((7,4),(7,5), true).
route((7,5),(7,6), true).
route((7,6),(7,7), true).
route((7,7),(7,8), true).
route((7,8),(7,9), true).
 
%8e ligne
route((8,1),(8,2), true).
route((8,2),(8,3), true).
route((8,3),(8,4), true).
route((8,4),(8,5), true).
route((8,5),(8,6), true).
route((8,6),(8,7), true).
route((8,7),(8,8), true).
route((8,8),(8,9), true).
 
%9e ligne
route((9,1),(9,2), true).
route((9,2),(9,3), true).
route((9,3),(9,4), true).
route((9,4),(9,5), true).
route((9,5),(9,6), true).
route((9,6),(9,7), true).
route((9,7),(9,8), true).
route((9,8),(9,9), true).
 
%déplacement horizontal (droite gauche)
 
%1ère ligne
route((1,9),(1,8), true).
route((1,8),(1,7), true).
route((1,7),(1,6), true).
route((1,6),(1,5), true).
route((1,5),(1,4), true).
route((1,4),(1,3), true).
route((1,3),(1,2), true).
route((1,2),(1,1), true).
 
%2e ligne
route((2,9),(2,8), true).
route((2,8),(2,7), true).
route((2,7),(2,6), true).
route((2,6),(2,5), true).
route((2,5),(2,4), true).
route((2,4),(2,3), true).
route((2,3),(2,2), true).
route((2,2),(2,1), true).
 
%3e ligne
route((3,9),(3,8), true).
route((3,8),(3,7), true).
route((3,7),(3,6), true).
route((3,6),(3,5), true).
route((3,5),(3,4), true).
route((3,4),(3,3), true).
route((3,3),(3,2), true).
route((3,2),(3,1), true).
 
%4e ligne
route((4,9),(4,8), true).
route((4,8),(4,7), true).
route((4,7),(4,6), true).
route((4,6),(4,5), true).
route((4,5),(4,4), true).
route((4,4),(4,3), true).
route((4,3),(4,2), true).
route((4,2),(4,1), true).
 
%5e ligne
route((5,9),(5,8), true).
route((5,8),(5,7), true).
route((5,7),(5,6), true).
route((5,6),(5,5), true).
route((5,5),(5,4), true).
route((5,4),(5,3), true).
route((5,3),(5,2), true).
route((5,2),(5,1), true).
 
%6e ligne
route((6,9),(6,8), true).
route((6,8),(6,7), true).
route((6,7),(6,6), true).
route((6,6),(6,5), true).
route((6,5),(6,4), true).
route((6,4),(6,3), true).
route((6,3),(6,2), true).
route((6,2),(6,1), true).
 
%7e ligne
route((7,9),(7,8), true).
route((7,8),(7,7), true).
route((7,7),(7,6), true).
route((7,6),(7,5), true).
route((7,5),(7,4), true).
route((7,4),(7,3), true).
route((7,3),(7,2), true).
route((7,2),(7,1), true).
 
%8e ligne
route((8,9),(8,8), true).
route((8,8),(8,7), true).
route((8,7),(8,6), true).
route((8,6),(8,5), true).
route((8,5),(8,4), true).
route((8,4),(8,3), true).
route((8,3),(8,2), true).
route((8,2),(8,1), true).
 
%9e ligne
route((9,9),(9,8), true).
route((9,8),(9,7), true).
route((9,7),(9,6), true).
route((9,6),(9,5), true).
route((9,5),(9,4), true).
route((9,4),(9,3), true).
route((9,3),(9,2), true).
route((9,2),(9,1), true).
 
%déplacement vertical (haut vers bas)
 
%1ère colonne
route((1,1),(2,1), true).
route((2,1),(3,1), true).
route((3,1),(4,1), true).
route((4,1),(5,1), true).
route((5,1),(6,1), true).
route((6,1),(7,1), true).
route((7,1),(8,1), true).
route((8,1),(9,1), true).
 
%2eme colonne
route((1,2),(2,2), true).
route((2,2),(3,2), true).
route((3,2),(4,2), true).
route((4,2),(5,2), true).
route((5,2),(6,2), true).
route((6,2),(7,2), true).
route((7,2),(8,2), true).
route((8,2),(9,2), true).
 
%3eme colonne
route((1,3),(2,3), true).
route((2,3),(3,3), true).
route((3,3),(4,3), true).
route((4,3),(5,3), true).
route((5,3),(6,3), true).
route((6,3),(7,3), true).
route((7,3),(8,3), true).
route((8,3),(9,3), true).
 
%4eme colonne
route((1,4),(2,4), true).
route((2,4),(3,4), true).
route((3,4),(4,4), true).
route((4,4),(5,4), true).
route((5,4),(6,4), true).
route((6,4),(7,4), true).
route((7,4),(8,4), true).
route((8,4),(9,4), true).
 
%5eme colonne
route((1,5),(2,5), true).
route((2,5),(3,5), true).
route((3,5),(4,5), true).
route((4,5),(5,5), true).
route((5,5),(6,5), true).
route((6,5),(7,5), true).
route((7,5),(8,5), true).
route((8,5),(9,5), true).
 
%6eme colonne
route((1,6),(2,6), true).
route((2,6),(3,6), true).
route((3,6),(4,6), true).
route((4,6),(5,6), true).
route((5,6),(6,6), true).
route((6,6),(7,6), true).
route((7,6),(8,6), true).
route((8,6),(9,6), true).
 
%7eme colonne
route((1,7),(2,7), true).
route((2,7),(3,7), true).
route((3,7),(4,7), true).
route((4,7),(5,7), true).
route((5,7),(6,7), true).
route((6,7),(7,7), true).
route((7,7),(8,7), true).
route((8,7),(9,7), true).
 
%8eme colonne
route((1,8),(2,8), true).
route((2,8),(3,8), true).
route((3,8),(4,8), true).
route((4,8),(5,8), true).
route((5,8),(6,8), true).
route((6,8),(7,8), true).
route((7,8),(8,8), true).
route((8,8),(9,8), true).
 
%9eme colonne
route((1,9),(2,9), true).
route((2,9),(3,9), true).
route((3,9),(4,9), true).
route((4,9),(5,9), true).
route((5,9),(6,9), true).
route((6,9),(7,9), true).
route((7,9),(8,9), true).
route((8,9),(9,9), true).
 
%déplacement vertical (bas haut)
 
%1ère colonne
route((9,1),(8,1), true).
route((8,1),(7,1), true).
route((7,1),(6,1), true).
route((6,1),(5,1), true).
route((5,1),(4,1), true).
route((4,1),(3,1), true).
route((3,1),(2,1), true).
route((2,1),(1,1), true).
 
%2eme colonne
route((9,2),(8,2), true).
route((8,2),(7,2), true).
route((7,2),(6,2), true).
route((6,2),(5,2), true).
route((5,2),(4,2), true).
route((4,2),(3,2), true).
route((3,2),(2,2), true).
route((2,2),(1,2), true).
 
%3eme colonne
route((9,3),(8,3), true).
route((8,3),(7,3), true).
route((7,3),(6,3), true).
route((6,3),(5,3), true).
route((5,3),(4,3), true).
route((4,3),(3,3), true).
route((3,3),(2,3), true).
route((2,3),(1,3), true).
 
%4eme colonne
route((9,4),(8,4), true).
route((8,4),(7,4), true).
route((7,4),(6,4), true).
route((6,4),(5,4), true).
route((5,4),(4,4), true).
route((4,4),(3,4), true).
route((3,4),(2,4), true).
route((2,4),(1,4), true).
 
%5eme colonne
route((9,5),(8,5), true).
route((8,5),(7,5), true).
route((7,5),(6,5), true).
route((6,5),(5,5), true).
route((5,5),(4,5), true).
route((4,5),(3,5), true).
route((3,5),(2,5), true).
route((2,5),(1,5), true).
 
%6eme colonne
route((9,6),(8,6), true).
route((8,6),(7,6), true).
route((7,6),(6,6), true).
route((6,6),(5,6), true).
route((5,6),(4,6), true).
route((4,6),(3,6), true).
route((3,6),(2,6), true).
route((2,6),(1,6), true).
 
%7eme colonne
route((9,7),(8,7), true).
route((8,7),(7,7), true).
route((7,7),(6,7), true).
route((6,7),(5,7), true).
route((5,7),(4,7), true).
route((4,7),(3,7), true).
route((3,7),(2,7), true).
route((2,7),(1,7), true).
 
%8eme colonne
route((9,8),(8,8), true).
route((8,8),(7,8), true).
route((7,8),(6,8), true).
route((6,8),(5,8), true).
route((5,8),(4,8), true).
route((4,8),(3,8), true).
route((3,8),(2,8), true).
route((2,8),(1,8), true).
 
%9eme colonne
route((9,9),(8,9), true).
route((8,9),(7,9), true).
route((7,9),(6,9), true).
route((6,9),(5,9), true).
route((5,9),(4,9), true).
route((4,9),(3,9), true).
route((3,9),(2,9), true).
route((2,9),(1,9), true).

% libération des ressources
liberer :-
    free(@grilleBase),
    libererGrille,
    free(@mur1),free(@mur2),free(@mur3),free(@mur4),free(@mur5),free(@mur6),free(@mur7),free(@mur8),free(@mur9),free(@mur10),free(@mur11),free(@mur12),free(@mur13),free(@mur14),free(@mur15),free(@mur16),free(@mur17),free(@mur18),free(@mur19),free(@mur20),free(@pion1),free(@pion2).

libererGrille:-
    libererLigne(1),libererLigne(2),libererLigne(3),libererLigne(4),libererLigne(5),libererLigne(6),libererLigne(7),libererLigne(8),libererLigne(9).

libererLigne(X):-
    atom_concat('carreBlanc1',X,Carre),
    libererCarre(Carre),
    atom_concat('carreBlanc2',X,Carre2),
    libererCarre(Carre2),
    atom_concat('carreBlanc3',X,Carre3),
    libererCarre(Carre3),
    atom_concat('carreBlanc4',X,Carre4),
    libererCarre(Carre4),
    atom_concat('carreBlanc5',X,Carre5),
    libererCarre(Carre5),
    atom_concat('carreBlanc6',X,Carre6),
    libererCarre(Carre6),
    atom_concat('carreBlanc7',X,Carre7),
    libererCarre(Carre7),
    atom_concat('carreBlanc8',X,Carre8),
    libererCarre(Carre8),
    atom_concat('carreBlanc9',X,Carre9),
    libererCarre(Carre9).

libererCarre(X):-
    free(@X).

%vérifier qu'aucun bout de mur n'est sur la case X,Y
murvOccupe(X,Y) :-
    (
     murs(v,X,Y);
     X1 is X-1, murs(v,X1,Y);
     X1 is X+1, murs(v,X1,Y)
    ),
    write('\n Il y a deja un mur a cet emplacement. Veuillez recommencer. \n').


murhOccupe(X,Y) :-
    (murs(h,X,Y);
    Y1 is Y-1, murs(h,X,Y1);
    Y1 is Y+1, murs(h,X,Y1)
    ),
    write('Il y a deja un mur a cet emplacement. Veuillez recommencer.').

%vérifier qu'aucun mur n'est perpendiculaire 
murPerpendiculaire(X,Y) :-
    (murs(v,X,Y);
     murs(h,X,Y)),
    write('Vous ne pouvez pas croiser les murs').

%Verifier si un chemin existe entre deux points
chemin(Depart, Arrivee, Chemin):-
    chemin(Depart, Arrivee, [Depart], Chemin). % ne sert qu'à ajouter le troisième argument
% c'est le chemin déjà parcouru, donc la ville de départ au début

% si je suis à la ville d'arrivée, c'est que le travail est fini :
% le chemin déjà parcouru est alors le chemin recherché
chemin(Arrivee, Arrivee, Chemin, Chemin):-!.

chemin(Depart, Arrivee,CheminParcouru, CheminComplet):-
    findall(Ville, route(Depart, Ville, true), ListeVillesAccessibles),  % construit la liste des voisines immédiates
    member(ProchaineEtape, ListeVillesAccessibles), % choisit une étape dans cette liste
    not(member(ProchaineEtape, CheminParcouru)), % je ne reviens pas sur mes pas
    append( CheminParcouru,[ProchaineEtape], NouveauChemin), % j'ajoute l'étape au parcours
    chemin(ProchaineEtape, Arrivee, NouveauChemin, CheminComplet). % récursivement jusqu'à l'arrivée


%verifier que aucun joueur n'est sur la case X,Y
caseOccupee(X,Y) :-
    joueur(_,[X,Y],_).

bloqueBas(X,Y) :-
    murs(h,X,Y) ;
    Z is Y-1, murs(h,X,Z).

bloqueHaut(X,Y) :-
    Z is X-1, murs(h,Z,Y) ;
    Z is X-1, W is Y-1, murs(h,Z,W).

bloqueGauche(X,Y) :-
    W is Y-1, murs(v,X,W) ;
    Z is X-1, W is Y-1, murs(v,Z,W).

bloqueDroite(X,Y) :-
    murs(v,X,Y) ;
    Z is X-1, murs(v,Z,Y).

caseAccessible(X,Y) :-
    X =< 9,X > 0,Y =< 9,Y > 0,not(caseOccupee(X,Y)).



%Faire se deplacer le joueur J en bas
bas(J):-
    joueur(J,[X,Y],N),
    Z is X+1,
    (   caseAccessible(Z,Y), not(bloqueBas(X,Y)), Zdef is Z; %si case libre et pas de mur : Zdef prend Z
        Z2 is X+2, caseAccessible(Z2,Y), not(bloqueBas(X,Y)), not(bloqueBas(Z,Y)), Zdef is Z2), 
    retract(joueur(J,[X,Y],N)),
    (J==1,bleu(Zdef,Y, N);J==2,rouge(Zdef,Y, N)).

%Faire se deplacer le joueur J en haut
haut(J) :-
    joueur(J,[X,Y],N),
    Z is X-1,
    (caseAccessible(Z,Y), not(bloqueHaut(X,Y)), Zdef is Z; %si case libre et pas de mur : Zdef prend Z
     Z2 is X-2, caseAccessible(Z2,Y), not(bloqueHaut(X,Y)), not(bloqueHaut(Z,Y)), Zdef is Z2), %si case libre et pas de mur en X+1 : Zdef prend Z2
    retract(joueur(J,[X,Y],N)),
    (J==1,bleu(Zdef,Y, N);J==2,rouge(Zdef,Y, N)).


%Faire se deplacer le joueur J a droite
droite(J):-
    joueur(J,[X,Y],N),
    Z is Y+1,
    (caseAccessible(X,Z), not(bloqueDroite(X,Y)), Zdef is Z; %si case libre et pas de mur : Zdef prend Z
     Z2 is Y+2, caseAccessible(X,Z2), not(bloqueDroite(X,Y)), not(bloqueDroite(X,Z)), Zdef is Z2), %si case libre et pas de mur en Y+1 : Zdef prend Z2
    retract(joueur(J,[X,Y],N)),
    (J==1, bleu(X,Zdef, N);
     J==2,rouge(X,Zdef, N)).

%Faire se deplacer le joueur J a gauche
gauche(J):-
    joueur(J,[X,Y],N),
    Z is Y-1,
    (caseAccessible(X,Z), not(bloqueGauche(X,Y)), Zdef is Z;%si case libre et pas de mur : Zdef prend Z
     Z2 is Y-2, caseAccessible(X,Z2), not(bloqueGauche(X,Y)), not(bloqueGauche(X,Z)),  Zdef is Z2), %si case libre et pas de mur en Y+1 : Zdef prend Z2
    retract(joueur(J,[X,Y],N)),
    (J==1, bleu(X,Zdef, N);
     J==2,rouge(X,Zdef, N)).


%deplacements du pion 1 sur l'interface
bleu(X,Y,N) :-
    assert(joueur(1,[X,Y],N)),
    grilleBlanche,
    X1 is 50+40*(X-1),
    Y1 is 50+40*(Y-1),
        free(@pion1),
        send(@fenetre, display, new(@pion1, circle(30)), point(Y1,X1)),
        send(@pion1,fill_pattern, colour(blue)),
    not(victoire(1, X)),
        joueur(_,[A,O],_),
        afficherCases(A,O),!.

%deplacement du pion 2 sur l'interface
rouge(X,Y, N) :-
    assert(joueur(2,[X,Y],N)), 
    grilleBlanche,
    X1 is 50+40*(X-1),
    Y1 is 50+40*(Y-1),
        free(@pion2),
        send(@fenetre, display, new(@pion2, circle(30)), point(Y1,X1)),
        send(@pion2,fill_pattern, colour(red)),
    not(victoire(2, X)),
        joueur(_,[A,O],_),
        afficherCases(A,O),!.

%mise à jour des routes
majRoute(D, X, Y):-
	(D == v, X1 is X+1, Y1 is Y+1, 
	retract(route((X,Y),(X,Y1),true)), retract(route((X1,Y),(X1,Y1),true)),
	assert(route((X,Y),(X,Y1),false)), assert(route((X1,Y),(X1,Y1),false)));
	(D == h, X1 is X+1, Y1 is Y+1, 
	retract(route((X,Y),(X1,Y),true)), retract(route((X,Y1),(X1,Y1),true)),
	assert(route((X,Y),(X1,Y),false)), assert(route((X,Y1),(X1,Y1),false))).

%vérifier existence d'un chemin avant la pose du mur
cheminExisteraEncore(D, X, Y, J):-
	joueur(J,[Xj,Yj],_),
	(J == 2, O is 9 ; J == 1, O is 1), %on inverse pour avoir l'adversaire
	majRoute(D, X, Y),
	((Xj < O,
	chemin((Xj,Yj),(O,_),Chemin);
	Xj > O,
	chemin((O,_),(Xj,Yj),Chemin));
	%on a verifie qu une route existait bien
	%si la route existe tout va bien et on ne rentre pas ici
	%soit la route existe pas, et donc on doit faire une maj
	((Xj < O,
	not(chemin((Xj,Yj),(O,_),Chemin));
	Xj > O,
	not(chemin((O,_),(Xj,Yj),Chemin))),
	(D == v, X1 is X+1, Y1 is Y+1, 
	retract(route((X,Y),(X,Y1),false)), retract(route((X1,Y),(X1,Y1),false)),
	assert(route((X,Y),(X,Y1),true)), assert(route((X1,Y),(X1,Y1),true)));
	(D == h, X1 is X+1, Y1 is Y+1, 
	retract(route((X,Y),(X1,Y),false)), retract(route((X,Y1),(X1,Y1),false)),
	assert(route((X,Y),(X1,Y),true)), assert(route((X,Y1),(X1,Y1),true))),
	write("Poser ce mur empêchera l adversaire d accéder à la ligne d arrivee."),
	1 =:= 0 %permet de retourner false
	)
	).

	/*not(chemin((Xj,Yj),(O,_),Chemin)),
	(D == v, X1 is X+1, Y1 is Y+1, 
	retract(route((X,Y),(X,Y1),false)), retract(route((X1,Y),(X1,Y1),false)),
	assert(route((X,Y),(X,Y1),true)), assert(route((X1,Y),(X1,Y1),true)));
	(D == h, X1 is X+1, Y1 is Y+1, 
	retract(route((X,Y),(X1,Y),false)), retract(route((X,Y1),(X1,Y1),false)),
	assert(route((X,Y),(X1,Y),true)), assert(route((X,Y1),(X1,Y1),true))),
	write("Poser ce mur empêchera l'adversaire d'accéder à la ligne d'arrivée."),
	1 =:= 0 %permet de retourner false*/


%poser un mur horizontal
mur(h,X,Y):-
    X > 0, Y > 0, %positionne le mur dans le plateau
    X < 9, Y < 9, %ne peut pas positionner un mur depuis la 9ème case d'une ligne / colonne sinon déborde
    not(murhOccupe(X,Y)), %si pas deja un mur en X etou Y
    not(murPerpendiculaire(X,Y)),%si pas un mur perpendiculaire
    grilleBlanche,
    joueur(J,[A,O],N),
	cheminExisteraEncore(h,X,Y,J),
    N > 0, %si le joueur a encore des murs a placer
    retract(joueur(J,[A,O],N)),
    N1 is N-1,
    retract(listeMurs([Mur|Q])),
    murhorizontal(X,Y,Mur),
    asserta(listeMurs(Q)),
    assert(joueur(J,[A,O],N1)), %on update le nb de murs restants du joueur
    assert(murs(h,X,Y)), %update la liste des murs
    (J==1,joueur(2,[Ab,Or],_);J==2,joueur(1,[Ab,Or],_)),
    afficherCases(Ab,Or),!.

%poser un mur vertical
mur(v,X,Y):-
    X > 0, Y > 0, %positionne le mur dans le plateau
    X < 9, Y < 9, %ne peut pas positionner un mur depuis la 9ème case d'une ligne / colonne sinon déborde
    not(murvOccupe(X,Y)), %si pas deja un mur en X et ou Y
    not(murPerpendiculaire(X,Y)),%si pas un mur perpendiculaire
    grilleBlanche,
    joueur(J,[A,O],N),
	cheminExisteraEncore(v,X,Y,J),
    N > 0, %si le joueur a encore des murs a placer
    retract(joueur(J,[A,O],N)),
    N1 is N-1,
    retract(listeMurs([Mur|Q])),
    murvertical(X,Y,Mur),
    asserta(listeMurs(Q)),
    assert(joueur(J,[A,O],N1)), %on update le nb de murs restants du joueur
    assert(murs(v,X,Y)), %update la liste des murs
    (J==1,joueur(2,[Ab,Or],_);J==2,joueur(1,[Ab,Or],_)),
    afficherCases(Ab,Or),!.


%affichage mur horizontal
murhorizontal(X,Y,Mur):-
    X1 is 80+40*(X-1),
    Y1 is 50+40*(Y-1),
    send(@fenetre, display,new(Mur, box(70,10)), point(Y1,X1)),
    send(Mur, fill_pattern, colour(green)).

%affichage mur vertical
murvertical(X,Y,Mur):-
    X1 is 50+40*(X-1),
    Y1 is 80+40*(Y-1),
    send(@fenetre, display, new(Mur, box(10,70)), point(Y1,X1)),
    send(Mur, fill_pattern, colour(green)).


%affichage des cases voisines jouables du point X,Y
afficherCases(X,Y):-
    X1 is X-1, 
    X2 is X+1, 
    Y1 is Y-1, 
    Y2 is Y+1,
    ((caseJouable(X,Y1,g); Y4 is Y-2, caseJouable(X,Y4,g)), %pourquoi marche pas ?
    (caseJouable(X,Y2,d); Y3 is Y+2, caseJouable(X,Y3,d)),
    (caseJouable(X1,Y,h); X3 is X-2, caseJouable(X3,Y,h)), %si la case du haut est pas jouable, est-ce que celle encore au dessus l'est ?
    (caseJouable(X2,Y,b); X4 is X+2, caseJouable(X4,Y,b))),
    joueur(J,[_,_],_),
    (J==1, write('C est au tour du joueur 1 de jouer.'); 
     J==2, write('C est au tour du joueur 2 de jouer.')).

caseJouable(X,Y,g):-
    Y1 is Y+1,
        caseAccessible(X,Y), 
        not(bloqueGauche(X,Y1)),
        atom_concat('carreBlanc',Y,Carre),
        atom_concat(Carre,X,Carrefin),
        colorerCase(Carrefin,yellow).
    %1=:=1.
caseJouable(X,Y,d):-
    Y1 is Y-1,
        caseAccessible(X,Y),
        not(bloqueDroite(X,Y1)),
        atom_concat('carreBlanc',Y,Carre),
        atom_concat(Carre,X,Carrefin),
        colorerCase(Carrefin,yellow).
    %1=:=1.
caseJouable(X,Y,h):-
    X1 is X+1,
        caseAccessible(X,Y),
        not(bloqueHaut(X1,Y)),
        atom_concat('carreBlanc',Y,Carre),
        atom_concat(Carre,X,Carrefin),
        colorerCase(Carrefin,yellow).
    %1=:=1.
caseJouable(X,Y,b):-
    X1 is X-1,
        caseAccessible(X,Y),
        not(bloqueBas(X1,Y)),
        atom_concat('carreBlanc',Y,Carre),
        atom_concat(Carre,X,Carrefin),
        colorerCase(Carrefin,yellow).
    %1=:=1.


colorerCase(Z,C):-
    send(@Z, fill_pattern, colour(C)).

finJeu :-
    write('FIN DE PARTIE \nVoulez-vous recommencer ? -oui - non').

%l'utilisateur choisit de recommencer
oui :- 
    init.

non :-
    write('Merci d avoir joue ! Fin du jeu').

% valable pour 2 joueurs
victoire(1,X) :-
    X =:= 9,
    write('Joueur 1 a gagne ! '),
    finJeu.

victoire(2,X) :-
    X =:= 1,
    write('Joueur 2 a gagne ! '),
    finJeu.

ligneBlanche(X):-
    atom_concat('carreBlanc1',X,Carre),
    colorerCase(Carre,white),
    atom_concat('carreBlanc2',X,Carre2),
    colorerCase(Carre2,white),
    atom_concat('carreBlanc3',X,Carre3),
    colorerCase(Carre3,white),
    atom_concat('carreBlanc4',X,Carre4),
    colorerCase(Carre4,white),
    atom_concat('carreBlanc5',X,Carre5),
    colorerCase(Carre5,white),
    atom_concat('carreBlanc6',X,Carre6),
    colorerCase(Carre6,white),
    atom_concat('carreBlanc7',X,Carre7),
    colorerCase(Carre7,white),
    atom_concat('carreBlanc8',X,Carre8),
    colorerCase(Carre8,white),
    atom_concat('carreBlanc9',X,Carre9),
    colorerCase(Carre9,white).

%grille blanche
grilleBlanche:-
    ligneBlanche(1),
    ligneBlanche(2),
    ligneBlanche(3),
    ligneBlanche(4),
    ligneBlanche(5),
    ligneBlanche(6),
    ligneBlanche(7),
    ligneBlanche(8),
    ligneBlanche(9).



carre(X,Y,Z) :-
    send(@fenetre, display, new(@Z, box(30,30)), point(X,Y)),
    send(@Z, fill_pattern, colour(white)).

affichageLigne(X) :-
    Y is 50+(X-1)*40,
    atom_concat('carreBlanc1',X,FinalString),
    carre(50,Y,FinalString),
    atom_concat('carreBlanc2',X,FinalString2),
    carre(90,Y,FinalString2),
    atom_concat('carreBlanc3',X,FinalString3),
    carre(130,Y,FinalString3),
    atom_concat('carreBlanc4',X,FinalString4),
    carre(170,Y,FinalString4),
    atom_concat('carreBlanc5',X,FinalString5),
    carre(210,Y,FinalString5),
    atom_concat('carreBlanc6',X,FinalString6),
    carre(250,Y,FinalString6),
    atom_concat('carreBlanc7',X,FinalString7),
    carre(290,Y,FinalString7),
    atom_concat('carreBlanc8',X,FinalString8),
    carre(330,Y,FinalString8),
    atom_concat('carreBlanc9',X,FinalString9),
    carre(370,Y,FinalString9).

initfenetre :-
    new(@fenetre, picture('Quorridor')),
    send(@fenetre, open).

init :-
    restart,
    liberer,
    % Création de la grille grise
    send(@fenetre, display, new(@grilleBase, box(500,500))),
    send(@grilleBase, fill_pattern, colour(grey)),

    % création de la première ligne de carrés
    affichageLigne(1),
    affichageLigne(2),
    affichageLigne(3),
    affichageLigne(4),
    affichageLigne(5),
    affichageLigne(6),
    affichageLigne(7),
    affichageLigne(8),
    affichageLigne(9),
    %Création des murs
    assert(listeMurs([@mur1,@mur2,@mur3,@mur4,@mur5,@mur6,@mur7,@mur8,@mur9,@mur10,@mur11,@mur12,@mur13,@mur14,@mur15,@mur16,@mur17,@mur18,@mur19,@mur20])),
    assert(murs()),
    consignes,
        % Création des pions
        %bleu(1,5, 10),
        %rouge(9,5, 10).
        bleu(3,5, 10),
        rouge(3,4, 10).

:- initfenetre.
:- init.
