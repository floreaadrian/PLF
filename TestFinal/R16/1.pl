implU(0,0).
implU(N,R):-
    N1 is N - 1,
    implU(N1,Rt),
    R is Rt + N.

implD(0,X,X).
implD(N,X,R):-
    X1 is X + N,
    N1 is N - 1,
    implD(N1,X1,R).