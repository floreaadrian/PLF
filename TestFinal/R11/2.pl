minsert([],E,[E]).
minsert([H|T],E,[E,H|T]).
minsert([H|T],E,[H|R]):-
    minsert(T,E,R).

perm([],[]).
perm([H|T],R):-
    perm(T,Rt),
    minsert(Rt,H,R).

valAbs(E1,E2,R):-
    E1 > E2,
    R is E1 - E2.

valAbs(E1,E2,R):-
    E1 < E2,
    R is E2 - E1.

check([_]).
check([H1,H2|T]):-
    valAbs(H1,H2,R),
    R =< 3,
    check([H2|T]).

onesol(L,R):-
    perm(L,R),
    check(R).

allsol(L,R):-
    findall(Rt,onesol(L,Rt),R).
    