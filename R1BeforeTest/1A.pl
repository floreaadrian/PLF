%member(L - list, Elem - number)
%flow(i,i)
member([H|_],Elem):-
    H =:= Elem.
member([H|T],Elem):-
    H =\= Elem,
    member(T,Elem).

%transform(L - list, S - set)
%flow(i,o)
transform([],[]).
transform([H|T],S):-
    Val is 0,
    member(T,H,Val),
    Val =:= 0,
    transform(T,St),
    S = [H|St].
transform([_|T],S):-
    transform(T,S).

--transform([5,5,2,3,1,2],S).