member(X, [X|_]) :- !.
member(X, [_|Tr]) :-
    member(X, Tr).

toSet([],[]).
toSet([H|T],R):-
    toSet(T,R),
    member(H,R).
toSet([H|T],[H|R]):-
    toSet(T,R),
    not(member(T,R)).

toSetCol([], X, X).
toSetCol([H | T], Y, X) :-
    member(H, Y),
    toSetCol(T, Y, X).

toSetCol([H | T], Y, X) :-
    not(member(H, Y)),
    toSetCol(T, [H | Y], X).

toSetWrapper(X, Y) :-
    toSetCol(X, [], Y).