split(L,0,[],L).
split([X|Xs],N,[X|Ys],Zs) :- N > 0, N1 is N - 1, split(Xs,N1,Ys,Zs).

/* split([a,b,c,d,e,f,g,h,i,k],3,L1,L2). */