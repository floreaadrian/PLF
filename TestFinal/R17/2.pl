toDelete([],_,_,[]).
toDelete([_|T],I,N,R):-
    I =:= N,
    I1 is 1,
    toDelete(T,I1,N,Rt),
    R = Rt.
toDelete([H|T],I,N,R):-
    I1 is I + 1,
    toDelete(T,I1,N,Rt),
    R = [H|Rt].

toDeleteWrap(L,R):-
    toDelete(L,3,4,R).