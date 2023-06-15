member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

split(_, [], [], []).

split(X, [Y|T], L1, L2) :-
    X =:= Y,
    split(X, T, L1, L2).

split(X, [Y|Tail], [Y|L1], L2) :-
    Y < X,
    split(X, Tail, L1, L2).
split(X, [Y|Tail], L1, [Y|L2]) :-
    Y > X,
    split(X, Tail, L1, L2).