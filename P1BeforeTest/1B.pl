%power(Nr)
%flow(i)
power(1).
power(Nr):-
    Nr mod 2 =:= 0,
    Nr1 is Nr div 2,
    power(Nr1).

%insert(L - list, Val - int, Ind - int, R - list)
%flow(i,i,i,o)
insert([],_,_,[]).
insert([H|T],Val,Ind,R):-
    power(Ind),
    Ind2 is Ind + 1,
    insert(T,Val,Ind2,Rt),
    R = [H,Val|Rt].
insert([H|T],Val,Ind,R):-
    Ind2 is Ind + 1,
    insert(T,Val,Ind2,Rt),
    R = [H|Rt].