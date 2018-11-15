printsum(L):-
sum(L,X),write('Sum of all elements is '),write(X).

sum([],0).

sum([X|Tail],Sum):-
sum(Tail,Tmpsum),Sum is Tmpsum+X.