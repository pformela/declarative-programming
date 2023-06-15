twice(L1, L2) :-
  twiceHelper(L1, L2, []).

twiceHelper([], L, L).
twiceHelper([H|T], L, Acc) :-
  append(Acc, [H, H], Acc2),
  twiceHelper(T, L, Acc2).

drzewo(X, L, R).

postorder(nil, []).
postorder(node(X, L, R), Result) :-
    postorder(L, Left),
    postorder(R, Right),
    append(Left, Right, SubResult),
    append(SubResult, [X], Result).




  