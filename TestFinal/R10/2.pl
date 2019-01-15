minsert([],E,[E]).
minsert([H|T],E,[E,H|T]).
minsert([H|T],E,[H|Tr]):-
    minsert(T,E,Tr).

perm([],[]).
perm([H|T],R):-
    perm(T,Rt),
    minsert(Rt,H,R).

comb(_,0,[]).
comb([H|T],K,[H|Tr]):-
    K > 0,
    K1 is K - 1,
    comb(T,K1,Tr).
comb([_|T],K,R):-
    K > 0,
    comb(T,K,R).

arr(L,K,R):-
    comb(L,K,Rt),
    perm(Rt,R).

sum([],0).
sum([H|T],R):-
    sum(T,Rt),
    R is Rt + H.

onesol(L,K,S,R):-
    arr(L,K,R),
    sum(R,Rt),
    Rt =:= S.

allsol(L,K,S,R):-
    findall(Rt,onesol(L,K,S,Rt),R).