male('Jim').
male('Bill').
male('Bob').
female('Pam').
female('Mary').
female('Sue').

parent('Jim','Pam').
parent('Pam','Mary').
parent('Pam','Bill').
parent('Mary','Sue').
parent('Bill','Bob').

father(X,Y):-
parent(X,Y),male(X).

mother(X,Y):-
parent(X,Y),female(X).

sister(X,Y):-
parent(Z,X),parent(Z,Y),female(X).

brother(X,Y):-
parent(Z,X),parent(Z,Y),male(X).

uncle(X,Y):-
parent(Z,Y),brother(X,Z).

grandpa(X,Y):-
father(X,Z),parent(Z,Y).

grandma(X,Y):-
mother(X,Z),parent(Z,Y).

grandson(X,Y):-
male(X),(grandpa(Y,X);grandma(Y,X)).