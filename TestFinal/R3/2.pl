%adaug(L - list, E - int, I - int, R - list)
%f(i,i,i,i,o)
adaug([],_,_,[]).
adaug([H|T],E,I,R):-
    I =:= 0,
    I1 is 6,
    adaug(T,E,I1,Rt),
    R = [H,E|Rt].
adaug([H|T],E,I,R):-
    I1 is I - 1,
    adaug(T,E,I1,Rt),
    R = [H|Rt].

adauga(L,E,R):-
    adaug(L,E,1,R).