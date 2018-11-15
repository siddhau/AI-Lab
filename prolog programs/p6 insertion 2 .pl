insertionsort([], []).

insertionsort([ Item | RestUnsorted ], Sorted) :-
	insertionsort(RestUnsorted, TempResult),
	insertnumber(Item, TempResult, Sorted).

insertnumber(Number, [], [Number]).

insertnumber(Number, List, Result) :-
	List = [ ListItem | _ ],
	ListItem > Number,
	append([ Number ], List, Result).

insertnumber(Number, List, Result) :-
	List = [ ListItem | RestList ],
	ListItem=<Number,
	insertnumber(Number, RestList, RestResult),
	append([ ListItem ], RestResult, Result).

append([], L, L).

append([X | L1], L2, [X | L3]) :- append(L1, L2, L3).