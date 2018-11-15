queens(N,Qs) :- range(1,N,Ns), permutation(Ns,Qs), safe(Qs).
safe([Q|Qs]) :- safe(Qs), not attack(Q,Qs).
safe([]).
attack(X,Xs) :- attack(X,1,Xs).
attack(X,N,[Y|Ys]) :- X is Y+N ; X is Y-N.
attack(X,N,[Y|Ys]) :- N1 is N+1, attack(X,N1,Ys).
range(M,N,[M|Ns]) :- M < N, M1 is M+1, range(M1,N,Ns).
range(N,N,[N]).


queens1(N,Qs) :- range(1,N,Ns), queens1(Ns,[],Qs).
queens1(UnplacedQs,SafeQs,Qs) :-
select(Q,UnplacedQs,UnplacedQs1),
not attack(Q,SafeQs),
queens1(UnplacedQs1,[Q|SafeQs],Qs).
queens1([],Qs,Qs).