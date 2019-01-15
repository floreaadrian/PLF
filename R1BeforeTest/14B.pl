%deleteBetween(L - list, N - int, M - int, Ind - int, R)
%flow(i,i,i,i,o)
deleteBetween([],_,_,_,[]).
deleteBetween([_|T],N,M,Ind,R):-
    Ind >= N,
    Ind =< M,
    Ind2 is Ind + 1,
    deleteBetween(T,N,M,Ind2,Rt),
    R = Rt.
deleteBetween([H|T],N,M,Ind,R):-
    Ind2 is Ind + 1,
    deleteBetween(T,N,M,Ind2,Rt),
    R = [H|Rt].
