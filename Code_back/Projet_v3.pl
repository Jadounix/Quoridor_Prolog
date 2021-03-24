%restart le programme
restart :- retractall(joueur(_,_,_)), ['Projet_v3.pl'].




%Joueur(Id,[X,Y], nbMursRestants)
:- dynamic (joueur/3).
joueur(1,[1,4],10).
joueur(2,[9,4],10).

%on va dire qu'il y a un mur pour nos tests
mur(1,4,hor).
mur(1,4,ver).



%verifier que aucun joueur n'est sur la case X,Y
caseOccupee(X,Y) :-
    joueur(_,[X,Y],_).


% ======== verifier si y'a un mur sur le passage selon si la direction souhaitee du joueur
peutPasPasser(X,Y,bas) :-
    %si mur sous la position du joueur X,Y, horizontal :
    mur(X,Y,hor) ; Z is X-1, mur(X,Z,hor).
peutPasPasser(X,Y,haut) :-
    %si mur au dessus de la position du joueur X,Y, horizontal :
    Z is X-1, mur(Z,Y,hor) ; Z is X-1, W is Y-1, mur(Z,W,hor).
peutPasPasser(X,Y,gauche) :-
    %si mur sous la position du joueur X,Y, horizontal :
    W is Y-1, mur(X,W,ver) ; Z is X-1, W is Y-1, mur(Z,W,vert).
peutPasPasser(X,Y,droite) :-
    %si mur sous la position du joueur X,Y, horizontal :
    mur(X,Y,ver) ; Z is X-1, mur(Z,Y,ver).



caseAccessible(X,Y) :-
    X =< 9, X > 0, Y =< 9, Y > 0, %on ne sort pas du plateau
    not(caseOccupee(X,Y)). % pas de gens dans la case

%prend en paramètre l'id du joueur et la direction de deplacement, verifie si la case est accessible, si oui, deplace le joueur
deplacement(J, bas) :-
    joueur(J,[X,Y],N),
    Z is X+1,
    caseAccessible(Z,Y),
    not(peutPasPasser(X,Y,bas)),
    retract(joueur(J,[X,Y],N)),
    asserta(joueur(J,[Z,Y],N)),!,
    not(victoire(J,Z)).

deplacement(J, haut) :-
    joueur(J,[X,Y],N),
    Z is X-1,
    caseAccessible(Z,Y),
    not(peutPasPasser(X,Y,haut)),
    retract(joueur(J,[X,Y],N)),
    asserta(joueur(J,[Z,Y],N)),!,
    not(victoire(J,Z)).


deplacement(J, gauche) :-
    joueur(J,[X,Y],N),
    Z is Y-1,
    caseAccessible(Z,Y),
    not(peutPasPasser(X,Y,gauche)),
    retract(joueur(J,[X,Y],N)),
    asserta(joueur(J,[X,Z],N)),!,
    not(victoire(J,X)).


deplacement(J, droite) :-
    joueur(J,[X,Y],N),
    Z is Y+1,
    caseAccessible(Z,Y),
    not(peutPasPasser(X,Y,droite)),
    retract(joueur(J,[X,Y],N)),
    asserta(joueur(J,[X,Z],N)),!,
    not(victoire(J,X)).




%verifie si le joueur est arrive sur la ligne d'arrivee
% valable pour 2 joueurs
victoire(1,X) :-
    X == 9,
    write('Joueur 1 a gagne, champagne').

victoire(2,X) :-
    X == 1,
    write('Joueur 2 a gagne, champagne').







% Murs : 
% X,Y,direction (en partant du point le plus en haut à gauche).








