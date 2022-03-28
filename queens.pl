% Referencias:  
%    - https://www.swi-prolog.org/pldoc/man?section=clpfd-n-queens
%    - https://www.youtube.com/watch?v=l_tbL9RjFdo
% 
% cria um tabuleiro de xadrez com representacao de cada inteiro a linha que a rainha se encontra
:- use_module(library(clpfd)).

constraintBelow([], _).

constraintBelow([X|Xs], Y) :- 
  X #=< Y,
  constraintBelow(Xs, Y).

constraintUpper([], _).

constraintUpper([X|Xs], Y) :- 
  X #>= Y,
  constraintUpper(Xs, Y).

queens(Xs) :-
  constraintBelow(Xs, 8),
  constraintUpper(Xs, 1),
  length(Xs, 8),
  queens_in_chessboard(Xs).

queens_in_chessboard([]).

queens_in_chessboard([X|Xs]) :- 
  dont_attack(X, Xs, 1),
  queens_in_chessboard(Xs).

dont_attack(_, [], _).

dont_attack(X, [Y|Ys], D) :-
  rowAttack(X, Y),
  diagonalAttack(X, Y, D),
  D1 is D + 1, %por que nao funciona com D = D + 1?
  dont_attack(X, Ys, D1).

rowAttack(X, Y) :- X #\= Y.

diagonalAttack(X, Y, D) :- 
  X - Y #\= D;
  X - Y #\= -D.

% Todo: Gerar uma lista para testes automaticos




