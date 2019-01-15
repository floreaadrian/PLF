%gensub(L - list, R - list)
%flow(i,o)
%             {
%             | [] , L = []
% gensub(L) = | H(L) U gensub(T(L)), L != []
%             | gensub(T(L)), L != []
%             {
gensub([], []).
gensub([H|T], [H|Rt]):-
    gensub(T, Rt).
gensub([_|T], Rt):-
    gensub(T, Rt).

%sum(L - list, R - integer)
%sum(i,o)
%        {
%        | 0, L = []
%sum(L)= | H(L) + sum(T(L))
%        {
sum([],0).
sum([H|T],R):-
    sum(T,Rt),
    R is Rt+H.

%onesol(L - list, N - integer, Rl - list)
%flow(i,i,o)
%              {
% onssol(L,N)= | gensub(L) if sum(L)!=0 and sum(L) mod N = 0
%              {
%
onesol(L,N,Rl):-
    gensub(L,Rl),
    sum(Rl,Ts),
    Ts =\= 0,
    mod(Ts,N) =:= 0.

allsol(L,N,R):-findall(Rl, onesol(L,N,Rl), R).

allsol([1,2,1,3],2,X).