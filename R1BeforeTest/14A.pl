%last(L - list, R - int)
%flow(i,o)
last([E],E).
last([_|T],R):-
    last(T,Rt),
    R = Rt.