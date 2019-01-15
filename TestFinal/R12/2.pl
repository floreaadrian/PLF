firstNthDivSum(_,-1,0).
firstNthDivSum(I,K,R):-
    K > -1,
    I1 is I + 3,
    K1 is K - 1,
    firstNthDivSum(I1,K1,Rt),
    R is Rt + I.

sumCol(0, X, X) :- !.
sumCol(N, S, X) :-
    N1 is N - 1,
    S1 is S + N * 3,
    sumCol(N1, S1, X).
