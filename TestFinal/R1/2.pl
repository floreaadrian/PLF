verlungime([],0).
verlungime([_|T],R):-
    verlungime(T, R1),
    R is R1 + 1.

elim([],_,_,[]).
elim([H|T],I,N,R):-
    is_list(H),
    verlungime(H,Lun),
    mod(Lun,2) =:= 0,
    I < N,
    I1 is I + 1,
    elim(T,I1,N,R1),
    R = R1.
elim([H|T],I,N,R):-
    elim(T,I,N,R1),
    R = [H|R1].