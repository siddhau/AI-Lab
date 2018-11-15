delN([],A,X,N,[]).
delN([H|T],A,X,N,Result) :- H=A, N=1, delN(T,A,X,X,Result).
delN([H|T],A,X,N,[H|Result]) :- H=A, N>1, N1 is N-1, delN(T,A,X,N1,Result).
delN([H|T],A,X,N,[H|Result]) :- delN(T,A,X,N,Result).