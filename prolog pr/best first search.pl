best(State, Goal, Path) :-
    best_help([0:[State]], Goal, RevPath), reverse(RevPath, Path).

best_help([_:[Goal|Path]|_], Goal, [Goal|Path]).
best_help([_:Path|RestPaths], Goal, SolnPath) :-
    extend(Path, Goal, NewPaths),
    append(RestPaths, NewPaths, TotalPaths), 
    sort(TotalPaths, SortedPaths), reverse(SortedPaths,RevPaths),
    best_help(RevPaths, Goal, SolnPath).

extend([State|Path], Goal, NewPaths) :-
    bagof(H:[NextState,State|Path],
          (move(State, NextState), 
           not(member(NextState, [State|Path])), 
           heuristic(NextState,Goal,H)),
          NewPaths), !.
extend(_, _, []).

heuristic(loc(omaha),       loc(los_angeles), -1700).
heuristic(loc(chicago),     loc(los_angeles), -2200).
heuristic(loc(denver),      loc(los_angeles), -1400).
heuristic(loc(los_angeles), loc(los_angeles),     0). 

/* best(loc(omaha), loc(los_angeles), Path). */