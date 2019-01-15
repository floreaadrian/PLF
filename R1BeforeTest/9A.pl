%inv(L - list, Res - list)
%inv(i,o)
inv([],R,R).
inv([H|T],R,Acc):-inv(T,R,[H|Acc]).

