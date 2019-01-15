%member(L - list, Elem - number)
%flow(i,i)
member([H|_],Elem):-
    H =:= Elem.
member([H|T],Elem):-
    H =\= Elem,
    member(T,Elem).

%difference(L1 - list)
%flow(i)
check([]).
check([H|T]):-
    not(member(T,H)),
    check(T).