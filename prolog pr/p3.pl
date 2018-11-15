male(tom).
male(bob).
male(peter).
male(bill).
male(jim).
female(marry).
female(ann).
female(pat).
parent(tom,bob).
parent(tom,peter).
parent(bob,jim).
sibling(bob,peter).
grandson(jim,tom).
parent(marry,ann).
uncle(peter,jim).
father( X, Y) :-
parent( X, Y),
male( X).

mother( X, Y) :-
parent( X, Y),
female( X).

predecessor(X,Z ) :-
parent( X, Z).

sister( X, Y) :-
parent( Z, X),
parent( Z, Y),
female( X),
X \=Y.

brother( X, Y) :-
parent( Z, X),
parent( Z, Y),
female( X),
X \=Y.


uncle(X,Y):-male(X),parent(X,Z),parent(Z,T),parent(Y,T),
Z \=Y.


