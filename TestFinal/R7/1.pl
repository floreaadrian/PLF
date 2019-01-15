aux(S,S1,E):-
    S1 > 0,
    !,
    S is S1 + E.

aux(S,S1,_):-
    S is S1.

g([],-1).
g([H|T],S):-
    g(T,S1),
    aux(S,S1,H).

f([],-1).
f([H|T],S):-
    f(T,S1),
    S1 > 0,
    !,
    S is S1 + H.
f([_|T],S):-
    f(T,S1),
    S is S1.