member(X, [X|Y]).
member(X, [H|L]) :- member(X, L).


/* member(b, [a,b,c]). */