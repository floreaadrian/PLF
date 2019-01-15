%insertAt(L - list, Elem - int, N - int, Ind - int, R - int).
%insertAt(i,i,i,i,o).
insertAt([],Elem,1,1,[Elem]).
insertAt([],_,_,_,[]).
insertAt(L,Elem,N,Ind,R):-
    N =:= Ind,
    Ind2 is Ind + 1,
    insertAt(L,Elem,N,Ind2,Rt),
    R = [Elem|Rt].
insertAt([H|T],Elem,N,Ind,R):-
    Ind2 is Ind + 1,
    insertAt(T,Elem,N,Ind2,Rt),
    R = [H|Rt].