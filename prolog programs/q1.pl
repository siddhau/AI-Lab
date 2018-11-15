male('Anthony').
male('Tom').
female('Mary').
female('Hazel').

m('Anthony','Mary').
c('Harry','Anthony').
c('Hazel','Mary').
m('Tom','Hazel').

p(X,Y):-
c(Y,X);(c(Y,Z),(m(Z,X);m(X,Z))).

father(X,Y):-
p(X,Y),male(X).


sister(X,Y):-
p(Z,X),p(Z,Y),female(X).