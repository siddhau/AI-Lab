my_last(X,[X]).
my_last(X,[_|L]) :- my_last(X,L).

/* my_last(X,[a,b,c,d]) */