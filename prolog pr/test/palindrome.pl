concate([],L,L).
concate([X|L1],L2,[X|L3]):-concate(L1,L2,L3).
reverse([],[]).
reverse([H|T],X):-reverse(T,Y),concate(Y,[H],X).
pal(X):-reverse(X,X).

/* pal([c,b,a,b,c]). */