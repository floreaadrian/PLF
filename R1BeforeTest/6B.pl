%concat(L1 - list, L2 - list, R - list)
%flow(i,i,o)
concat([],[],[]).
concat([H|T],[],R):-
    concat(T,[],Rt),
    R = [H|Rt].
concat([],[H|T],R):-
    concat([],T,Rt),
    R = [H|Rt].
concat([H1|T1],[H2|T2],R):-
    concat(T1,T2,Rt),
    R = [H1,H2|Rt].