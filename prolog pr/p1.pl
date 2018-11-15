parent(anthony,harry).
parent(anthony,hazel).
parent(mary,harry).
parent(mary,hazel).

female(mary).
female(hazel).
male(anthony).
male(harry).
male(tom).


offspring(Y,X):-parent(X,Y).
mother(X,Y):-parent(X,Y),female(X).
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X).

father(X,Y):-parent(X,Y),male(X).

