% Appel de la librairie
:- use_module(library(pce)).

% libération des ressources

liberer :-
	free(@grilleBase),
	free(@carreBlanc1),
free(@carreBlanc2),
free(@carreBlanc3),
free(@carreBlanc4),
free(@carreBlanc5),
free(@carreBlanc6),
free(@carreBlanc7),
free(@carreBlanc8),
free(@carreBlanc9),
free(@carreBlanc21),
free(@carreBlanc22),
free(@carreBlanc23),
free(@carreBlanc24),
free(@carreBlanc25),
free(@carreBlanc26),
free(@carreBlanc27),
free(@carreBlanc28),
free(@carreBlanc29),
free(@mur1),
	free(@pion1),
	free(@pion2).


%deplacements du pion 1
jouerbleu(a,1) :-
free(@pion1),
send(@fenetre, display, new(@pion1, circle(30)), point(10,10)),
send(@pion1,fill_pattern, colour(blue)).
jouerbleu(b,1) :-
free(@pion1),
send(@fenetre, display, new(@pion1, circle(30)), point(50,10)),
send(@pion1,fill_pattern, colour(blue)).
jouerbleu(c,1) :-
free(@pion1),
send(@fenetre, display, new(@pion1, circle(30)), point(90,10)),
send(@pion1,fill_pattern, colour(blue)).
jouerbleu(d,1) :-
free(@pion1),
send(@fenetre, display, new(@pion1, circle(30)), point(130,10)),
send(@pion1,fill_pattern, colour(blue)).
jouerbleu(e,1) :-
free(@pion1),
send(@fenetre, display, new(@pion1, circle(30)), point(170,10)),
send(@pion1,fill_pattern, colour(blue)).
jouerbleu(f,1) :-
free(@pion1),
send(@fenetre, display, new(@pion1, circle(30)), point(210,10)),
send(@pion1,fill_pattern, colour(blue)).
jouerbleu(g,1) :-
free(@pion1),
send(@fenetre, display, new(@pion1, circle(30)), point(250,10)),
send(@pion1,fill_pattern, colour(blue)).
jouerbleu(h,1) :-
free(@pion1),
send(@fenetre, display, new(@pion1, circle(30)), point(290,10)),
send(@pion1,fill_pattern, colour(blue)).
jouerbleu(a,2) :-
free(@pion1),
send(@fenetre, display, new(@pion1, circle(30)), point(10,50)),
send(@pion1,fill_pattern, colour(blue)).
jouerbleu(b,2) :-
free(@pion1),
send(@fenetre, display, new(@pion1, circle(30)), point(50,50)),
send(@pion1,fill_pattern, colour(blue)).
jouerbleu(c,2) :-
free(@pion1),
send(@fenetre, display, new(@pion1, circle(30)), point(90,50)),
send(@pion1,fill_pattern, colour(blue)).
jouerbleu(d,2) :-
free(@pion1),
send(@fenetre, display, new(@pion1, circle(30)), point(130,50)),
send(@pion1,fill_pattern, colour(blue)).
jouerbleu(e,2) :-
free(@pion1),
send(@fenetre, display, new(@pion1, circle(30)), point(170,50)),
send(@pion1,fill_pattern, colour(blue)).
jouerbleu(f,2) :-
free(@pion1),
send(@fenetre, display, new(@pion1, circle(30)), point(210,50)),
send(@pion1,fill_pattern, colour(blue)).
jouerbleu(g,2) :-
free(@pion1),
send(@fenetre, display, new(@pion1, circle(30)), point(250,50)),
send(@pion1,fill_pattern, colour(blue)).
jouerbleu(h,2) :-
free(@pion1),
send(@fenetre, display, new(@pion1, circle(30)), point(290,50)),
send(@pion1,fill_pattern, colour(blue)).

%deplacement du pion 2
jouerrouge(a,1) :-
free(@pion2),
send(@fenetre, display, new(@pion2, circle(30)), point(10,10)),
send(@pion2,fill_pattern, colour(red)).
jouerrouge(b,1) :-
free(@pion2),
send(@fenetre, display, new(@pion2, circle(30)), point(50,10)),
send(@pion2,fill_pattern, colour(red)).
jouerrouge(c,1) :-
free(@pion2),
send(@fenetre, display, new(@pion2, circle(30)), point(90,10)),
send(@pion2,fill_pattern, colour(red)).
jouerrouge(d,1) :-
free(@pion2),
send(@fenetre, display, new(@pion2, circle(30)), point(130,10)),
send(@pion2,fill_pattern, colour(red)).
jouerrouge(e,1) :-
free(@pion2),
send(@fenetre, display, new(@pion2, circle(30)), point(170,10)),
send(@pion2,fill_pattern, colour(red)).
jouerrouge(f,1) :-
free(@pion2),
send(@fenetre, display, new(@pion2, circle(30)), point(210,10)),
send(@pion2,fill_pattern, colour(red)).
jouerrouge(g,1) :-
free(@pion2),
send(@fenetre, display, new(@pion2, circle(30)), point(250,10)),
send(@pion2,fill_pattern, colour(red)).
jouerrouge(h,1) :-
free(@pion2),
send(@fenetre, display, new(@pion2, circle(30)), point(290,10)),
send(@pion2,fill_pattern, colour(red)).
jouerrouge(a,2) :-
free(@pion2),
send(@fenetre, display, new(@pion2, circle(30)), point(10,50)),
send(@pion2,fill_pattern, colour(red)).
jouerrouge(b,2) :-
free(@pion2),
send(@fenetre, display, new(@pion2, circle(30)), point(50,50)),
send(@pion2,fill_pattern, colour(red)).
jouerrouge(c,2) :-
free(@pion2),
send(@fenetre, display, new(@pion2, circle(30)), point(90,50)),
send(@pion2,fill_pattern, colour(red)).
jouerrouge(d,2) :-
free(@pion2),
send(@fenetre, display, new(@pion2, circle(30)), point(130,50)),
send(@pion2,fill_pattern, colour(red)).
jouerrouge(e,2) :-
free(@pion2),
send(@fenetre, display, new(@pion2, circle(30)), point(170,50)),
send(@pion2,fill_pattern, colour(red)).
jouerrouge(f,2) :-
free(@pion2),
send(@fenetre, display, new(@pion2, circle(30)), point(210,50)),
send(@pion2,fill_pattern, colour(red)).
jouerrouge(g,2) :-
free(@pion2),
send(@fenetre, display, new(@pion2, circle(30)), point(250,50)),
send(@pion2,fill_pattern, colour(red)).
jouerrouge(h,2) :-
free(@pion2),
send(@fenetre, display, new(@pion2, circle(30)), point(290,50)),
send(@pion2,fill_pattern, colour(red)).

mur :-
send(@fenetre, display, new(@mur1, box(70,10)), point(50,40)),
send(@mur1, fill_pattern, colour(green)).


init :-
% Ouverture de la fenetre
	new(@fenetre, picture('Corridor')),
	send(@fenetre, open),
	liberer,
	% Création de la grille grise
	send(@fenetre, display, new(@grilleBase, box(500,500))),
	send(@grilleBase, fill_pattern, colour(grey)),

	% création de la première ligne de carrés
    send(@fenetre, display, new(@carreBlanc1, box(30,30)), point(10,10)),
    send(@carreBlanc1, fill_pattern, colour(white)),
    send(@fenetre, display, new(@carreBlanc2, box(30,30)), point(50,10)),
    send(@carreBlanc2, fill_pattern, colour(white)),
send(@fenetre, display, new(@carreBlanc3, box(30,30)), point(90,10)),
send(@carreBlanc3, fill_pattern, colour(white)),
send(@fenetre, display, new(@carreBlanc4, box(30,30)), point(130,10)),
send(@carreBlanc4, fill_pattern, colour(white)),
send(@fenetre, display, new(@carreBlanc5, box(30,30)), point(170,10)),
send(@carreBlanc5, fill_pattern, colour(white)),
send(@fenetre, display, new(@carreBlanc6, box(30,30)), point(210,10)),
send(@carreBlanc6, fill_pattern, colour(white)),
send(@fenetre, display, new(@carreBlanc7, box(30,30)), point(250,10)),
send(@carreBlanc7, fill_pattern, colour(white)),
send(@fenetre, display, new(@carreBlanc8, box(30,30)), point(290,10)),
send(@carreBlanc8, fill_pattern, colour(white)),


% création de la deuxième ligne de carrés
send(@fenetre, display, new(@carreBlanc21, box(30,30)), point(10,50)),
send(@carreBlanc21, fill_pattern, colour(white)),
send(@fenetre, display, new(@carreBlanc22, box(30,30)), point(50,50)),
send(@carreBlanc22, fill_pattern, colour(white)),
send(@fenetre, display, new(@carreBlanc23, box(30,30)), point(90,50)),
send(@carreBlanc23, fill_pattern, colour(white)),
send(@fenetre, display, new(@carreBlanc24, box(30,30)), point(130,50)),
send(@carreBlanc24, fill_pattern, colour(white)),
send(@fenetre, display, new(@carreBlanc25, box(30,30)), point(170,50)),
send(@carreBlanc25, fill_pattern, colour(white)),
send(@fenetre, display, new(@carreBlanc26, box(30,30)), point(210,50)),
send(@carreBlanc26, fill_pattern, colour(white)),
send(@fenetre, display, new(@carreBlanc27, box(30,30)), point(250,50)),
send(@carreBlanc27, fill_pattern, colour(white)),
send(@fenetre, display, new(@carreBlanc28, box(30,30)), point(290,50)),
send(@carreBlanc28, fill_pattern, colour(white)),




	% Création des pions
	send(@fenetre, display, new(@pion1, circle(30)), point(10,10)),
	send(@pion1,fill_pattern, colour(blue)),
	send(@fenetre, display, new(@pion2, circle(30)), point(210,50)),
	send(@pion2,fill_pattern, colour(red)).

%% il faut mettre un :- pour éxecuter (vrai si..)
:- init.



% TODO :
% Essayer de faire un for sur les cases blanches, essayer "repeat"
% Voir pouur la taille et position des cases pour que ce soit réparti
% Fin de fichier
