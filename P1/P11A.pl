%replace(L-initial list,Fnd-integer,Rpl-integer, R-resulted list)
%flow model: (i,i,i,i), (i,i,i,o)
%					  {
%					  | 0, L=0
%replace(L,Fnd,Rpl) = | Rpl U replace(tail(L),Fnd,Rpl), head(L) = Fnd,
%				      | head(L) U replace(tail(L),Fnd,Rpl), head(L) != Fnd
%					  {
replace([],_,_,[]).
replace([H|T],Fnd,Rpl,R):- H =:= Fnd, 
    replace(T,Fnd,Rpl,RT),
    R = [Rpl|RT].
replace([H|T],Fnd,Rpl,R):- H =\= Fnd, 
    replace(T,Fnd,Rpl,RT),
    R = [H|RT].