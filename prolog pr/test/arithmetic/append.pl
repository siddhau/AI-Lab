append([],Y,Y).
append([X|T],Y,[X|R]) :- append(T,Y,R).

/* append([a],[b,c],R). */