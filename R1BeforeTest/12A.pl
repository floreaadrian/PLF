%member(L - list, Elem - number)
%flow(i,i)
member([H|_],Elem):-
    H =:= Elem.
member([H|T],Elem):-
    H =\= Elem,
    member(T,Elem).

%incL(L1 - list, L2 - list)
%flow(i,i)
incL([],_).
incL([H|T],L):-
    member(L,H),
    incL(T,L).