%equalList(L1 - list, L2 - list)
%flow(i,i)
equalList([],[]).
equalList([H1|T1],[H2|T2]):-
    H1 =:= H2,
    equalList(T1,T2).