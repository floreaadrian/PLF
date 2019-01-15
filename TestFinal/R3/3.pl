minsert([],E,[E]).
minsert([H|T],E,[E,H|T]).
minsert([H|T],E,[H|Tr]):-
    minsert(T,E,Tr).

perm([],[]).
perm([H|T],R):-
    perm(T,Rt),
    minsert(Rt,H,R).

gen(N, Pos, []) :-
    Pos is N * 2,
    !.
gen(N, Pos, [Pos | Tr]) :-
    Pos1 is Pos + 1,
    gen(N, Pos1, Tr).

valAbs(X,X1,X2):-
    X1>X2,
    !,
    X is X1 - X2.

valAbs(X,X1,X2):-
    X is X2 - X1.

check([_]).
check([H1,H2|T]):-
    valAbs(Diff,H1,H2),
    Diff =< 2,
    check([H2|T]).

solveone(L,R):-
    perm(L,R),
    check(R).

main(N, X) :-
    gen(N, N, L),
    findall(R, solveone(L, R), X).