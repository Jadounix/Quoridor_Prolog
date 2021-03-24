% On suppose qu'on a que 2 joueurs possibles
% sert à rien de faire une grille 9x9, va pas etre opti pour rechercher
% grille = liste d'entiers (=81 cases), peut obtenir par déduction les coordonnées x et y (/3 et modulo)


%commencer par définir espace de jeu : 
% grille : liste de 81 cases.
% ligne 1 : case de 1 à 9, etc


% ================================= On definit l'etat
:- dynamic(etat/3).
:- asserta(
    etat([1,5,10],[2,77,10],[])
).


% on met dans la pile un état avec 3 valeurs : J1,J2,ListeMursRestants
%Joueur : [numero, position, nbMursRestants]
%donc ici 2 joueurs : [J1, sur la case 5, 10murs restants] et [J2, sur la case 77, 10 murs restants]






% ================================= Fonctions pour le déplacement

%Verifier si Y adjacent à X
caseAdjacente(X,Y):-
    %soit elle est à droite : 
    Mod is X mod 9, Mod =\=0, D is X+1, D =:= Y; %Verifier qu'on dépasse pas de la ligne à droite : mod9 != 0.
    Mod2 is X mod 9, Mod2 =\=1,G is X-1, G =:= Y; %vérifier qu'on dépasse pas la ligne à gauche : mod9 != 1.
    Y>=10, H is X-9, H =:= Y;
    Y=<72, B is X+9, B =:= Y.

caseAdjacente(X,Y) :- caseAdjacente(Y,X),!.

%on met dans une liste L les cases adjacentes à X.
/*casesAdjacentes(X,L,L):- %X la case, L la liste de depart, N new list
    Y1 is X+1, caseAdjacente(X,Y1),
    append(L,[Y1],L);
    Y2 is X-1, caseAdjacente(X,Y2),
    append(L,[Y2],L);
    Y3 is X+9, caseAdjacente(X,Y3),
    append(L,[Y3],L);
    Y4 is X-9, caseAdjacente(X,Y4),
    append(L,[Y4],L).*/

% CasesAdjacentes ne marche pour le moment.


% Verifier si la case est libre
caseLibre(X) :-
    %recuperer les joueurs depuis etat
    etat([_,P1,_],[_,P2,_],_), %on assigne à P1 la position du joueur 1, et P2 celle du joueur 2
    X =\= P1, X =\=P2,!. %Si X != P1 et X != P2 
%Ici, le ,! demande de ne pas regarder au delà de l'état dans la pile dynamic



deplacer(Dir, ) :-
    X==Bas Y is X+1, caseAdjacente(X,Y) ; X6







