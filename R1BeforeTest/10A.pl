%fu(L - list, Res - int)
%flow(i,o)
fu([],0).
fu([H|T],R):-
    H mod 2 =:= 0,
    fu(T,Rt),
    R is Rt+H.
fu([H|T],R):-
    H mod 2 =:= 1,
    fu(T,Rt),
    R is Rt-H.