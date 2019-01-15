%member(L - list, Elem - number,Val - bool)
%flow(i,i)
member([H|_],Elem):-
    H =:= Elem.
member([H|T],Elem):-
    H =\= Elem,
    member(T,Elem).

%union(L1 - list,L2 - list, R - list)
%flow(i,i,o)
union([],[],[]).
union([],[H|T],R):-
    union([],T,Rt),
    R = [H|Rt].
union([H|T],[],R):-
    union(T,[],Rt),
    R = [H|Rt].
union([H1|T1],[H2|T2],R):-
    H1 =:= H2,
	union(T1,T2,Rt),
    R = [H1|Rt].
union([H1|T1],[H2|T2],R):-
    member(T2,H1),
    union(T1,[H2|T2],R).
union([H1|T1],[H2|T2],R):-
    member(T1,H2),
    union([H1|T1],T2,R).
union([H1|T1],[H2|T2],R):-
    union(T1,T2,Rt),
    R = [H1,H2|Rt].