progr([_]).
progr([_ , _]).
progr([H1, H2, H3 | T]) :-
    S is H1 + H3,
    AVG is S / 2,
    H2 =:= AVG,
    progr([H2, H3 | T]).

gensub([],[]).
gensub([H|T],[H|Rt]):-
    gensub(T,Rt).
gensub([_|T],Rt):-
    gensub(T,Rt).
