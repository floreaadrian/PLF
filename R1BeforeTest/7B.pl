%member(L - list, Elem - number)
%flow(i,i)
member([H|_],Elem):-
    H =:= Elem.
member([H|T],Elem):-
    H =\= Elem,
    member(T,Elem).

%inter(L1 - list, L2 - list, R - list)
%flow(i,i,o)
inter([],[],[]).
inter([],[_|_],[]).
inter([_|_],[],[]).
inter([H1|T1],[H2|T2],R):-
    H1 =:= H2,
    inter(T1,T2,Rt),
    R = [H1|Rt].
inter([H1|T1],[H2|T2],R):-
    member(T2,H1),
    member(T1,H2),
    inter(T1,T2,Rt),
    R = [H1,H2|Rt].
inter([_|T1],[H2|T2],R):-
    member(T1,H2),
    inter(T1,T2,Rt),
    R = [H2|Rt].
inter([H1|T1],[_|T2],R):-
    member(T2,H1),
    inter(T1,T2,Rt),
    R = [H1|Rt].
inter([_|T1],[_|T2],R):-
    inter(T1,T2,Rt),
    R = Rt.