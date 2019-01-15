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
    comb(L,K,R1),
    perm(R1,R).

produs([],1).
produs([H|T],R):-
    produs(T,Rt),
    R is Rt * H.

onesol(L,K,P,R):-
    arr(L,K,R),
    produs(R,Rl),
    Rl =:= P.

allsol(L,K,P,R):-
    findall(Rl,onesol(L,K,P,Rl),R).