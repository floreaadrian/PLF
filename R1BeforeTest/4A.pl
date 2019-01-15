%isEven(L - list)
%flow(i)
isEven([]).
isEven([_,_|T]):-
    isEven(T).

