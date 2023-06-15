tree(X).

tree(X, L, R) :- tree(L), tree(R).

