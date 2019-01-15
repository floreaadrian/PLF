gensub([], []).
gensub([H|T], [H|Rt]):-
    gensub(T, Rt).
gensub([_|T], Rt):-
    gensub(T, Rt).

check([],0).
check([H|T],R):-
    check(T,R1),
    R is R1 + H.

onesol(L,S,Rl):-
    gensub(L,Rl),
    check(Rl,R),
    R =:= S.

allsol(L,S,R):-findall(Rl, onesol(L,S,Rl), R).
