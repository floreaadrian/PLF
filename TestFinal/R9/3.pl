gensub([],[]).
gensub([H|T],[H|Tr]):-
    gensub(T,Tr).
gensub([_|T],Tr):-
    gensub(T,Tr).

check([],0).
check([_|T],R):-
    check(T,Rt),
    R is Rt + 1.

onesol(L,N,R):-
    gensub(L,R),
    check(R,Rt),
    Rt =:= N.

allsol(L,N,R):-
    findall(Rt,onesol(L,N,Rt),R).
    