parent(anthony,harry).
parent(mary,hazel).
male(anthony).
male(harry).
male(tom).
female(hazel).
female(mary).
marry(anthony,mary).
marry(tom,hazel).

father(X,Y):-parent(X,Y), male(X).
father(X,Y):-parent(Z,Y),female(Z),marry(Z,X).
father(X,Y):-parent(Z,Y),female(Z),marry(X,Z).
	
sister(X,Y):-parent(A,X),parent(B,Y),marry(A,B),female(X).
sister(X,Y):-parent(A,X),parent(B,Y),marry(B,A),female(X).