mergesort([],[]).
mergesort([X],[X]).
mergesort([X,Y|Xs],Ys) :- split([X,Y|Xs],Xs1,Xs2), mergesort(Xs1,Ys1), mergesort(Xs2,Ys2), merge(Ys1,Ys2,Ys).
split([],[],[]).
split([X|Xs],[X|Ys],Zs) :- split(Xs,Zs,Ys).
merge([],Xs,Xs).
merge(Xs,[],Xs).
merge([X|Xs],[Y|Ys],[Z|Zs]) :- ( X =< Y -> Z = X, merge(Xs,[Y|Ys],Zs) ; Z = Y, merge([X|Xs],Ys,Zs)).
