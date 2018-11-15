super(watson,johnson).
super(watson,john).
super(watson,banker).
super(johnson,smita).
super(john,evens).

emp(X,Y):- 
	super(Y,X).
emp(X,Y):- 
	super(Y,Z),super(Z,X).
whom_super(X,Y):-
	super(X,Y).
whom_super(X,Y):-
	super(Z,Y),super(X,Z).