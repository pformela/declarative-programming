length2(0, []).
length2(N,[_|L]) :- length(M,L), N is M + 1.

member(X, [H|_]).
member(X, [_|T]) :- member(X, T).

fac(0, 1).
fac(N, Result) :- 
    N > 0, 
    N1 is N - 1, 
    fac(N1, R1), 
    Result is N * R1.


fib(0, 0).
fib(1, 1).
fib(N, Result) :-
    N > 1,
    N1 is N - 1, N2 is N - 2,
    fib(N1, R1), fib(N2, R2),
    Result is R1 + R2.

gcd(0, Y, Y) :- Y > 0.
gcd(X, Y, Result) :-
    X > 0,
    Z is Y mod X,
    gcd(Z, X, Result).
gcd(X, Y, Result) :-
    Y > 0,
    Z is X mod Y,
    gcd(Z, Y, Result).


