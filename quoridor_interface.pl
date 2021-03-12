% Appel de la librairie
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

mur(h,X,Y):-murhorizontal(X,Y).
mur(v,X,Y):-murvertical(X,Y).

murhorizontal(X,Y):-
X1 is 80+40*(X-1),
Y1 is 50+40*(Y-1),
send(@fenetre, display,new(@mur1, box(70,10)), point(Y1,X1)),
send(@mur1, fill_pattern, colour(green)).

murvertical(X,Y):-
X1 is 50+40*(X-1),
Y1 is 80+40*(Y-1),
send(@fenetre, display, new(@mur1, box(10,70)), point(Y1,X1)),
send(@mur1, fill_pattern, colour(green)).

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

    % Création des pions
    jouerbleu(1,5),
    jouerrouge(9,5).

:- init.
