latin([], 0).
latin([i], 1).
latin([v], 5).
latin([x], 10).
latin([l], 50).
latin([c], 100).
latin([d], 500).
latin([m], 1000).
latin([i,i|T], N) :-
    latin(T, X),
    N is X + 2.
latin([i,v|T], N) :-
    latin(T, X),
    N is X + 4.
latin([i,x|T], N) :-
    latin(T, X),
    N is X + 9.
latin([x,l|T], N) :-
    latin(T, X),
    N is X + 40.
latin([x,c|T], N) :-
    latin(T, X),
    N is X + 90.
latin([c,d|T], N) :-
    latin(T, X),
    N is X + 400.
latin([c,m|T], N) :-
    latin(T, X),
    N is X + 900.

