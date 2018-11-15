deleteall([],A,[]).
deleteall([H|T],A,Result) :- H=A, deleteall(T,A,Result).
deleteall([H|T],A,[H|Result]) :- deleteall(T,A,Result).