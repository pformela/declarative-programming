sil(X, N) :- sil(X, N, 1).

sil(0, A, A).
sil(X, N, A) :-
  X > 0,
  A1 is A * X,
  X1 is X - 1,
  sil(X1, N, A1).