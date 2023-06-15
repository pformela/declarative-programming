equal(L, L).

shift([H|T], L) :-
    append(T, [H], Res),
    equal(Res, L).

factorial(0, 1).
factorial(N, Res) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, Res1),
    Res is Res1 * N.

sil(N, L) :-
  sil(N, [], L).

sil(-1, Acc, Acc).
sil(N, Acc, L) :-
  N >= 0,
  factorial(N, Fac),
  append(Acc, [Fac], Acc1),
  N1 is N - 1,
  sil(N1, Acc1, L).