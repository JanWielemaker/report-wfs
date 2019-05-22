p :- write('Hello '), shift(get(Y)), writeln(Y).

go :-
    reset(p, get(X), Continuation),
    (   Continuation == 0
    ->  true
    ;	X = world,
        writeln(Continuation),
        call(Continuation)
    ).
