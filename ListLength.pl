
countL([],0).
countL([H|T],N) :- countL(T,N1) , N is N1+1.

