%removeElem(L - list, Elem - int, R - list)
%flow(i,i,o)
removeElem([],_,[]).
removeElem([H|T],Elem,R) :-
    H =:= Elem,
    removeElem(T,Elem,Rt),
    R = Rt.
removeElem([H|T],Elem,R) :-
    removeElem(T,Elem,Rt),
    R = [H|Rt].