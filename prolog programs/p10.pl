s(1,2).
s(1,3).
s(1,4).
s(2,5).
s(2,6).
s(4,7).
s(4,8).
s(5,9).
s(5,10).
s(7,11).
s(7,12).

goal(10).

solve(Start, Solution) :- breadthfirst([[Start]], Solution).

breadthfirst([[Node|Path]|_], [Node|Path]) :- goal(Node).


breadthfirst([Path|Paths], Solution) :-      
                extend(Path, NewPaths),
                conc(Paths, NewPaths, Paths1),
                breadthfirst(Paths1, Solution).


extend([Node|Path], NewPaths) :- 
	bagof([NewNode, Node|Path],(s(Node, NewNode), not( member(NewNode,[Node|Path]) ) ),NewPaths),!.

extend(Path, []).              

conc([],L,L).
conc([X|L1],L2,[X|L3]) :- conc(L1,L2,L3).