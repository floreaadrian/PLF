%gcd(A - int, B - int, Res - int)
%gcd(i,i,o)
gcd(A,0,Res) :-
    Res = A.
gcd(A,B,Res) :-
    BP is A mod B,
    gcd(B,BP,Res).

%lcm(A - int, B - int, Res - int)
%flow(i,i,o)
lcm(0,0,0).
lcm(A,B,Res):-
    gcd(A,B,R1),
    Res is A*B/R1.

%lcmList(L - list, Res - int)
%flow(i,o)
lcmList([],1).
lcmList([H|T],Res):-
    lcmList(T,Res1),
    lcm(H,Res1,Res).