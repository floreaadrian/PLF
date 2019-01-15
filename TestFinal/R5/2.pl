divisible(X,Y):-mod(X,Y)=:=0,!.
divisible(X,Y):-
    Y1 is Y+1,
    X>Y1,
    divisible(X,Y1).

isPrime(2) :- true,!.
isPrime(X) :- X < 2,!,false.
isPrime(X) :- not(divisible(X, 2)).

remove([],_,_,[]).
remove([H|T],I,N,R):-
    I < N,
    isPrime(H),
    I1 is I + 1,
    remove(T,I1,N,Rt),
    R = Rt.
remove([H|T],I,N,R):-
    remove(T,I,N,Rt),
    R = [H|Rt].