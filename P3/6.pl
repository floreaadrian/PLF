%insert(L: list, E: integer, R: list)
%flow(i,i,o)
insert([],E,[E]).
insert([H|T],E,[E,H|T]).
insert([H|T],E,[H|TR]):- insert(T,E,TR).

allinsert(L,E,R):-findall(Rp,insert(L,E,Rp),R).

permut([],[]).
permut([H|T],R):-permut(T,Rt),insert(Rt,H,R).

comb(_,0,[]).
comb([H|T],K,R):- K > 0,
    Kt is K-1,
    comb(T,Kt,Rt),
    R=[H|Rt].
comb([_|T],K,R):- K>0,
    comb(T,K,R).

arr([],0,R):- R = [].
arr(L,K,R):- comb(L,K,Rt),
    permut(Rt,R).


allsol(L,K,R):-findall(Rl, arr(L,K,Rl), R).