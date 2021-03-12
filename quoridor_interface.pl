% Appel de la librairie
:- dynamic(listeMurs/1).
:- dynamic(casesJouables/1).
:- use_module(library(pce)).


% libération des ressources

liberer :-
    free(@grilleBase),
    libererLigne(1),
    libererLigne(2),
    libererLigne(3),
    libererLigne(4),
    libererLigne(5),
    libererLigne(6),
    libererLigne(7),
    libererLigne(8),
    libererLigne(9),
    free(@mur1),
    free(@mur2),
    free(@mur3),
    free(@mur4),
    free(@mur5),
    free(@mur6),
    free(@mur7),
    free(@mur8),
    free(@mur9),
    free(@mur10),
    free(@mur11),
    free(@mur12),
    free(@mur13),
    free(@mur14),
    free(@mur15),
    free(@mur16),
    free(@mur17),
    free(@mur18),
    free(@mur19),
    free(@mur20),
    free(@pion1),
    free(@pion2).

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


%deplacements du pion 1
jouerbleu(X,Y) :-
X1 is 50+40*(X-1),
Y1 is 50+40*(Y-1),
    free(@pion1),
    send(@fenetre, display, new(@pion1, circle(30)), point(Y1,X1)),
    send(@pion1,fill_pattern, colour(blue)).

%deplacement du pion 2
jouerrouge(X,Y) :-
X1 is 50+40*(X-1),
Y1 is 50+40*(Y-1),
    free(@pion2),
    send(@fenetre, display, new(@pion2, circle(30)), point(Y1,X1)),
    send(@pion2,fill_pattern, colour(red)).

mur(h,X,Y):-
retract(listeMurs([Mur|Q])),
murhorizontal(X,Y,Mur),
assert(listeMurs(Q)).

mur(v,X,Y):-
retract(listeMurs([Mur|Q])),
murvertical(X,Y,Mur),
assert(listeMurs(Q)).

murhorizontal(X,Y,Mur):-
X1 is 80+40*(X-1),
Y1 is 50+40*(Y-1),
send(@fenetre, display,new(Mur, box(70,10)), point(Y1,X1)),
send(Mur, fill_pattern, colour(green)).

murvertical(X,Y,Mur):-
X1 is 50+40*(X-1),
Y1 is 80+40*(Y-1),
send(@fenetre, display, new(Mur, box(10,70)), point(Y1,X1)),
send(Mur, fill_pattern, colour(green)).

afficherCasesJouables(ListeCases):-
assert(casesJouables(ListeCases)),
retract(casesJouables([Abs|Q])),
atom_concat('carreBlanc',Abs,Carre),
assert(casesJouables(Q)),
retract(casesJouables([Ord|R])),
atom_concat(Case,Ord,Carrefin).

%atom_concat(Case,Mur[1],Carrefin),
%libererCarre(Carrefin),
%send(@Carrefin, fill_pattern, colour(blue)).


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


init :-
% Ouverture de la fenetre
    new(@fenetre, picture('Quorridor')),
    send(@fenetre, open),
    liberer,
    % Création de la grille grise
    send(@fenetre, display, new(@grilleBase, box(500,500))),
    send(@grilleBase, fill_pattern, colour(grey)),

    % création de la première ligne de carrés
    %send(@fenetre, display, new(@text, label('TEST'))),
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
assert(casesJouables([])),
    % Création des pions
    jouerbleu(1,5),
    jouerrouge(9,5).

:- init.

