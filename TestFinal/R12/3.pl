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
comb([_|T],K,Tr):-
    K > 0,
    comb(T,K,Tr).

arr(L,K,R):-
    comb(L,K,Rt),
    perm(Rt,R).

sum([],X,X).
sum([H|T],X,R):-
    X1 is X + H,
    sum(T,X1,R).

check(L,S):-
    sum(L,0,R),
    S is R.

onesol(L,K,S,R):-
    arr(L,K,R),
    check(R,S).

allsol(L,K,S,R):-
    findall(Rt,onesol(L,K,S,Rt),R).