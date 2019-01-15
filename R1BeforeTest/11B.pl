%len(L - list, Nr - int)
%flow(i,o)
len([],0).
len([_|T],R):-
    len(T,Rt),
    R is Rt + 1.