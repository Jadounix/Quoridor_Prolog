%# Définition d'une matrice
matrix(Matrix, I, J, Value) :-
    nth0(I, Matrix, Row),
    nth0(J, Row, Value).



    print_table(H, W, L):-
      succ(W, W1),
      print_table(4, 1, H, W1, L).

    print_table(1, W, _, W, _):- !.
    print_table(Y, W, H, W, L):-
      succ(NY, Y),
      nl,
      !,
      print_table(NY, 1, H, W, L).
    print_table(Y, X, H, W, L):-
      (member(k(X, Y), L)->C='* ';C='+ '),
      write(C),
      succ(X, NX),
      !,
      print_table(Y, NX, H, W, L).

%# Grille correspondant au plateau de jeu
%# Grid = [[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]].

%# matrix(Grid, 1, 1, Value).
%# Valeur de base des cases du plateau = case vide

%# Affichage de la matrice avec les valeur sur chaque case
%# display_matrix(Matrix) :-
  %#  matrix(Matrix, I, J, Value),
  %# write('I am on square ('),
  %#  write(I), write(','), write(J),
  %#  write(') and the value is '), write(Value), nl,
  %#  fail.
%# display_matrix(_).

%# mon_premier_program :-
%#     % on crée la fenêtre
%#     new(D, window('Ma première fenêtre')),
%#     % on lui donne la bonne taille
%#     send(D, size, size(250, 100)),
%#     % on crée un composant texte
%#     new(T, text('Hello World !')),
%#     % on demande à la fenêtre de l'afficher à peu près au milieu
%#     send(D, display, T, point(80, 40)),
%#     % on envoie à la fenêtre le message d'affichage.
%#     send(D, open).
