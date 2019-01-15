%subst(L - list, E - int, E1 - int, R - list)
%flow(i,i,i,o)
subst([],_,_,[]).
subst([H|T],E,E1,R):-
    H =:= E,
    subst(T,E,E1,Rt),
    R = [E1|Rt].
subst([H|T],E,E1,R):-
    subst(T,E,E1,Rt),
    R = [H|Rt].