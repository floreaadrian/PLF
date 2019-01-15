gensub([],[]).
gensub([H|T],[H|Rt]):-
    gensub(T,Rt).
gensub([_|T],Rt):-
    gensub(T,Rt).

check([],0).
check([H|T],R):-
    check(T,Rt),
    R is Rt + H.

onesol(L,S,R):-
    gensub(L,R),
    check(R,Rs),
    Rs =:= S.

allsol(L,S,R):-
    findall(Rt,onesol(L,S,Rt),R).