%nextItem returns the next number in a sequence
%the next number is derived from a polinomial

nextItem([J], J).
nextItem(K, L) :-
	myLast(K, X),
	rowBelow(K, Below),
	nextItem(Below, Last),
	
	L is X + Last.

% A is a list of numbers and B is the row below it in that chart
rowBelow([X,Y], [Return]) :-
	Return is Y - X.
rowBelow( [X, Y|Rest], [B|Bla]) :- 
	B is Y - X,
	rowBelow([Y|Rest], Bla).
	%Diff is Y - X,
	%B is Diff.
		

% X is the last item in the list A
myLast([Last],Last).
myLast([_|Rest],What) :- myLast(Rest,What). 




% NOTES:
% [first, second, third] = [A|B]
% where A = first and B=[second,third]

%fact
%loves(romeo, juliet). = romeo loves juliet
%rule
%loves(juliet, romeo) :- loves(romeo, juliet). = juliet loves romeo if romeo loves juliet

%fact 
%male(bob).
%female(jill)


% [first, second|rest]

% , = and. ; = or 

%http://stackoverflow.com/questions/21694499/prolog-checking-if-something-is-the-last-item-in-the-list
%append([Head|Tail],List2,[Head|Result]):-
% ^ =    append(Tail,List2,Result).