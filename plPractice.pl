%pl practice. this programs counts to the number specified starting from zero

%calls count with two variables so we can call initially call with 1
count(A) :- count(A, 0).

% A is A so cut. cut means stop trying to get answers
count(A, A) :- !. 

count(A, B) :-
	B >= 0, 
	B1 is B+1,
	write(B), 
	count(A, B1).


%count the number of elements in a list

countL([],0).
countL([_|T],N) :- 
	countL(T,N1),
	N is N1+1.

