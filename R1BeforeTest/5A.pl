%gcd(A - int, B - int, Res - int)
%gcd(i,i,o)
gcd(A,0,Res) :-
    Res = A.
gcd(A,B,Res) :-
    BP is A mod B,
    gcd(B,BP,Res).

%listGCD(L - list, Res - int)
%flow(i,o)
listGCD([E],E).
listGCD([H|T],R):-
    listGCD(T,R1),
    gcd(H,R1,R).