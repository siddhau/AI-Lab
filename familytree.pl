father(reshab,sid).
father(reshab,neeraj).
father(neeraj,abhi).
father(neeraj,rajat).
father(neeraj,seema).
marry(neeraj,lasya).
marry(lasya,neeraj).
male(abhi).
male(rajat).
male(neeraj).
male(reshab).
female(lasya).
female(seema).
brother(X,Y):-father(Z,X),father(Z,Y).
grandfather(X,Y):- father(X,Z),father(Z,Y).
uncle(X,Y):-brother(X,Z),father(Z,Y).
mother(X,Y):-father(Z,Y),marry(Z,X).
grandson(X,Y):-father(Y,Z),father(Z,X).