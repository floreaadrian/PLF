%max(A - int, B - int, R - int)
max(A,B,R):-
    A > B,
    R is A.
max(_,B,R):-
    R is B.

%maxList(L - list, Nr - int)
%flow(i,o)
maxList([Nr],Nr).
maxList([H|T],Nr):-
    maxList(T,Res),
    max(H,Res,Nr).