%nth(L - list, N - int, Ind - int, Res - int)
%nth(i,i,i,o)
nth([],_,_,_).
nth([H|T],N,Ind,R):-
    N =:= Ind,
    Ind2 is Ind+1,
    nth(T,N,Ind2,H),
    R = H.
nth([_|T],N,Ind,R):-
    Ind2 is Ind+1,
    nth(T,N,Ind2,Rt),
    R = Rt.