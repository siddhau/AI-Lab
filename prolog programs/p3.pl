parent(akhtar,jawaid).
parent(akhtar,shahid).
parent(jawaid,ashhar).
parent(jawaid,sunny).
parent(shahid,taha).
parent(shabana,sana).
male(akhtar).
male(jawaid).
male(ashhar).
male(sunny).
male(shahid).
male(taha).
female(sana).
female(shabana).
female(nishat).
marry(jawaid,nishat).
marry(shahid,shabana).

father(X,Y):-
	parent(X,Y), male(X).
father(X,Y):-
	parent(Z,Y),female(Z),marry(Z,X).
father(X,Y):-
	parent(Z,Y),female(Z),marry(X,Z).

mother(X,Y):-
	parent(X,Y), female(X).
mother(X,Y):-
	parent(Z,Y),male(Z),marry(Z,X).
mother(X,Y):-
	parent(Z,Y),male(Z),marry(X,Z).

grandf(X,Y):-
	parent(Z,Y), parent(X,Z).
grandf(X,Y):-
	parent(Z,Y),female(Z),marry(W,Z),parent(X,W).

grandf(X,Y):-
	parent(Z,Y),female(Z),marry(Z,W),parent(X,W).

grands(X,Y):-
	grandf(Y,X), male(X).

grandd(X,Y):-
	grandf(Y,X), female(X).

brother(X,Y):-
	father(Z,X),father(Z,Y),male(X),male(Y),X\=Y.

uncle(X,Y):-
	father(Z,Y),brother(X,Z).
