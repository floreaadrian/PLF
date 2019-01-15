%member(L - list, Elem - number)
%flow(i,i)
member([H|_],Elem):-
    H =:= Elem.
member([H|T],Elem):-
    H =\= Elem,
    member(T,Elem).

%removeElem(L - list, Elem - number, R - list)
%flow(i,i,o)
removeElem([],_,[]).
removeElem([H|T],Elem,R):-
    H =:= Elem,
    removeElem(T,Elem,Rt),
    R = Rt.
removeElem([H|T],Elem,R):-
    removeElem(T,Elem,Rt),
    R = [H|Rt].

%unic(L1 - list,Nr - int)
%flow(i,o)
unic([],0).
unic([H|T],Nr):-
    member(T,H),
    removeElem(T,H,T1),
    unic(T1,Nr).
unic([_|T],Nr):-
    unic(T,Nr1),
    Nr is Nr1+1.

