child(X, Y) :- parent(Y, X).
mother(X, Y) :- parent(X, Y), female(X).
sister(X, Y) :- female(X), parent(Z, X), parent(Z, Y), X \= Y.
has_a_child(X) :- parent(X, _).
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).
predecessor(X, Y) :- parent(X, Y).
predecessor(X, Y) :- parent(X, Y), predecessor(X, Z).
