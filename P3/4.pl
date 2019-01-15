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

check([_]).
check([H1,H2|T]):-
    H2 > H1,
    check([H2|T]).
%onesol(L - list, N - integer, Rl - list)
%flow(i,i,o)
%              {
% onssol(L,N)= | gensub(L) if sum(L)!=0 and sum(L) mod N = 0
%              {
%
onesol(L,Rl):-
    gensub(L,Rl),
    check(Rl).

allsol(L,R):-findall(Rl, onesol(L,Rl), R).
