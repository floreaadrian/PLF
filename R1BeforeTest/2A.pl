%substitute(L - list, Elem - int, Ind- int, ActInd - int, R - list)
%flow(i,i,i,i,o)
substitute([],_,_,_,[]).
substitute([_|T],Elem,Ind,ActInd,R):-
    ActInd =:= Ind,
    Ind2 is ActInd + 1,
    substitute(T,Elem,Ind,Ind2,Rt),
    R=[Elem|Rt].
substitute([H|T],Elem,Ind,ActInd,R):-
    Ind2 is ActInd + 1,
	substitute(T,Elem,Ind,Ind2,Rt),
	R=[H|Rt].