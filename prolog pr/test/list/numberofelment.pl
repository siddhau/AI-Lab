my_length([],0).
my_length([_|L],N) :- my_length(L,N1), N is N1 + 1.

/* my_length([a,d,b,s],P).*/