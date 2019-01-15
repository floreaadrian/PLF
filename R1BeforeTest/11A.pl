%member(L - list, Elem - number)
%flow(i,i)
member([H|_],Elem):-
    H =:= Elem.
member([H|T],Elem):-
    H =\= Elem,
    member(T,Elem).