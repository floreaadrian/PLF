%sublist(L-initial list,M-integer,N-integer,Index-integer, R-resulted list)
%flow model: (i,i,i,i,i), (i,i,i,i,o)
%					    {
%					    | 0, L=0,
%replace(L,M,N,index) = | Rpl U replace(tail(L),M,N,index+1), index<= m & index>=n,
%				        | replace(tail(L),M,N,index+1) otherwise 
%					    {
sublist([],_,_,_,[]).
sublist([H|T],M,N,Index,R):- Index >= M, Index =< N,
    Index1 is Index+1,
    sublist(T,M,N,Index1,RT),
    R = [H|RT].
sublist([_|T],M,N,Index,R):-
    Index1 is Index+1,
    sublist(T,M,N,Index1,RT),
    R = RT.