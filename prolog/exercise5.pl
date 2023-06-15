plus(0, X, X).

plus(N, X, Acc) :-
  N > 0,
  N1 is N - 1,
  Acc1 is Acc + N,
  plus(N1, X, Acc1).

sum-up(N, X) :-
  plus(N, X, 0).

times(1, X, X).

times(N, X, Acc) :-
  N > 1,
  N1 is N - 1,
  Acc1 is Acc * N,
  times(N1, X, Acc1).

factorial(N, X) :-
  times(N, X, 1).

fib(1, 1).
fib(2, 1).

fib(N, X) :-
  N > 2,
  N1 is N - 1,
  N2 is N - 2,
  fib(N1, X1),
  fib(N2, X2),
  X is X1 + X2.

