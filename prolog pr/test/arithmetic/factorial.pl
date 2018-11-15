factorial_1(1,1).
factorial_1(N,F):-
N > 1,
NN is N - 1,
factorial_1(NN,FF),
F is N * FF.

/*  factorial_1(5,X).  */