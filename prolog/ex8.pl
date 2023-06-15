last(X, [X]).

last(X, [_|Tail]) :-
  last(X, Tail).

delete(_, [], []).
delete(X, [X|Tail], Result) :-
  delete(X, Tail, Result).
delete(X, [Y|Tail], [Y|Result]) :-
  X \= Y,
  delete(X, Tail, Result).

delete([], [_,_,_]).
delete([H|T1], [H|T2]) :-
  delete(T1, T2).

reverse(L1, L2) :-
  reverseHelp(L1, [], L2).

reverseHelp([], Acc, Acc).
reverseHelp([X|Xs], Acc, R) :-
  reverseHelp(Xs, [X|Acc], R).

evenLength(L) :-
  length(L, N),
  0 is N mod 2.

oddLength(L) :-
  length(L, N),
  1 is N mod 2.

shift(L1, [H2|T2]) :-
  append(T2, [H2], L1).


quadrat(L1, L2) :-
  quadratHelper(L1, [], L2).

quadratHelper([], L, L).
quadratHelper([H|T], L, R) :-
  H1 is H * H,
  append(L, [H1], L1),
  quadratHelper(T, L1, R).

combine(L1, L2, L3) :-
  combineHelper(L1, L2, L3, []).

combineHelper([], [], L, L).

combineHelper([H1|T1], [H2|T2], L3, Acc) :-
  append(Acc, [[H1, H2]], Acc1),
  combineHelper(T1, T2, L3, Acc1).

palindrom(L) :-
  palindromHelper(L, L, []).

palindromHelper([], L, L).

palindromHelper([H|T], L, Acc) :-
  append([H], Acc, Acc1),
  palindromHelper(T, L, Acc1).

p(X, L, Y, Z) :-
  append(Preceeding, [Y, X, Z|_], L).