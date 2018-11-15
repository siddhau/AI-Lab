s( Stacks, [Stack1, [Top1 | Stack2] | OtherStacks]) :- 
del( [Top1 | Stack1], Stacks,Stacks1), 
del( Stack2, Stacks1, OtherStacks). 
del( X, [X | L], L).
del( X, [Y | L], [Y | L1] ) :-
del( X, L, L1).

goal( Situation) :-
member( [a,b,c], Situation).

solve( Start, Solution).