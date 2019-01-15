gensub([],[]).
gensub([H|T],[H|Rt]):-
    gensub(T,Rt).
gensub([_|T],Rt):-
    gensub(T,Rt).

check([]).
check([_,_|T]):-
    check(T).

onesol(L,R):-
    gensub(L,R),
    check(R).

allsol(L,R):-
    findall(Rt,onesol(L,Rt),R).