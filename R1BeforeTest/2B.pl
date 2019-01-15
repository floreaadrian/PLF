%member(L - list, Elem - number)
%flow(i,i)
member([H|_],Elem):-
    H =:= Elem.
member([H|T],Elem):-
    H =\= Elem,
    member(T,Elem).

%difference(L1 - list, L2 - list, R - list)
%flow(i,i,o)
difference([],[],[]).
difference([],[_|T],R):-
    difference([],T,R).
difference([H|T],L2,R):-
    member(L2,H),
    difference(T,L2,R).
difference([H|T],L2,R):-
    difference(T,L2,Rt),
    R = [H|Rt].