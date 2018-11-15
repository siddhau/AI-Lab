replace([],A,B,[]).
 replace([H|T],A,B,[B|Result]) :- H=A, replace(T,A,B,Result).
 replace([H|T],A,B,[H|Result]) :- replace(T,A,B,Result).

/* replace([a,b,a,c,a,d],a,w,R). */