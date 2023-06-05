latin([], 0).
latin([i | Rest], Arabic) :-
    latin(Rest, Subtotal),
    Arabic is Subtotal + 1.
latin([v | Rest], Arabic) :-
    latin(Rest, Subtotal),
    Arabic is Subtotal + 5.
latin([x | Rest], Arabic) :-
    latin(Rest, Subtotal),
    Arabic is Subtotal + 10.
latin([l | Rest], Arabic) :-
    latin(Rest, Subtotal),
    Arabic is Subtotal + 50.
latin([c | Rest], Arabic) :-
    latin(Rest, Subtotal),
    Arabic is Subtotal + 100.
latin([d | Rest], Arabic) :-
    latin(Rest, Subtotal),
    Arabic is Subtotal + 500.
latin([m | Rest], Arabic) :-
    latin(Rest, Subtotal),
    Arabic is Subtotal + 1000.
latin([i, x | Rest], Arabic) :-
    latin(Rest, Subtotal),
    Arabic is Subtotal + 9.
latin([i, v | Rest], Arabic) :-
    latin(Rest, Subtotal),
    Arabic is Subtotal + 4.
latin([x, l | Rest], Arabic) :-
    latin(Rest, Subtotal),
    Arabic is Subtotal + 40.
latin([x, c | Rest], Arabic) :-
    latin(Rest, Subtotal),
    Arabic is Subtotal + 90.
latin([c, d | Rest], Arabic) :-
    latin(Rest, Subtotal),
    Arabic is Subtotal + 400.
latin([c, m | Rest], Arabic) :-
    latin(Rest, Subtotal),
    Arabic is Subtotal + 900.

