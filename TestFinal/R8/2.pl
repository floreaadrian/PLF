elim([],_,_,[]).
elim([_|T],I,N,R):-
    I =:= N,
    I1 is I+1,
    N1 is N*2,
    elim(T,I1,N1,Rt),
    R = Rt.
elim([H|T],I,N,R):-
    I1 is I + 1,
    elim(T,I1,N,Rt),
    R = [H|Rt].