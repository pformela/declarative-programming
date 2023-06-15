member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

member2(X, [X|T]) :- member(X, T).
member2(X, [_|T]) :- member2(X, T).


down(0, [0]).
down(N, [N|T]) :-
  N > 0,
  N1 is N - 1,
  down(N1, T).