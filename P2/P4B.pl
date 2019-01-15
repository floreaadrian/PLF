%sum(L1 - list, L2 - list, C - int, R - list)
%flow(i,i,i,o)
%			  {
%			  | [], A = [], B = []
%sum(A,B,C) = | (H(A)+C)%10 U sum(T(A),B,(H(A)+C))/10), B = []
%			  | (H(B)+C)%10 U sum(A,T(B),(H(B)+C))/10), A = []
%			  | (H(B)+H(A)+C)%10 U sum(T(A),T(B),(H(B)+H(A)+C)/10) otherwise
%			  {
sum([],[],0,[]).
sum([],[],1,[1]).
sum([H|T],[],C,R):-
    Val is (H+C) mod 10,
    Carry is (H+C) div 10,
    sum(T,[],Carry,Rt),
    R = [Val|Rt].
sum([],[H|T],C,R):-
    Val is (H+C) mod 10,
    Carry is (H+C) div 10,
    sum([],T,Carry,Rt),
    R = [Val|Rt].
sum([H1|T1],[H2|T2],C,R):-
    Val is (H1+H2+C) mod 10,
    Carry is (H1+H2+C) div 10,
    sum(T1,T2,Carry,Rt),
    R = [Val|Rt].

reverse([],Z,Z).
reverse([H|T],Z,Acc) :- reverse(T,Z,[H|Acc]).


%add(Fir - list, Second - list, R - list)
%flow(i,i,o)
%			 {
%add(A,B) = | sum(reverse(A),reverse(B)
%			 {
add(Fir,Second,R) :-
    reverse(Fir,A,[]),
    reverse(Second,B,[]),
    sum(A,B,0,Res),
    reverse(Res,R,[]).

%           {
%           | [],L = []
% main(L) = | add(H(L),main(L)) , H(L) is list
%           | main(L), otherwise
%           {

main([],[]).
main([H|T],R):-
    is_list(H),
    main(T,Rt),
    add(H,Rt,R).
main([_|T],R):-
    main(T,R).

--main([1, [2, 3], 4, 5, [6, 7, 9], 10, 11, [1, 2, 0], 6],R).