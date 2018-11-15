in(monkey).
in(banana).
in(chair).

hardworking(monkey).
intelligent(monkey).
climbs(monkey,chair).
moves(monkey,chair).
tall(chair).
is_target_of(banana,monkey).


moved_by(X,Y):-
in(X),in(Y),hardworking(Y),intelligent(Y),moves(Y,X),write('\n'),write(X),write(' is moved by the '),write(Y).

is_below(X,Y):-
is_target_of(Y,Z),moved_by(X,Z),write('\n'),write(X),write(' is below the '),write(Y).

can_reach(X,Y):-
climbs(X,Z),is_below(Z,Y),tall(Z),write('\n'),write(X),write(' can reach the '),write(Y).