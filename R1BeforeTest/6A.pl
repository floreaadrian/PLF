%insertLast(L - list, Elem - int, R - list)
%flow(i,i,o)
insertLast([],Elem,[Elem]).
insertLast([H|T],Elem,R):-
    insertLast(T,Elem,Rt),
    R = [H|Rt].