bubblesort(list,list).
swap(list,list).
printlist(list).

bubblesort(InputList,SortList) :-
 	swap(InputList,List) , ! ,
	printlist(List),
 	bubblesort(List,SortList),
 	bubblesort(SortList,SortList).
 
swap([X,Y|List],[Y,X|List]) :- X > Y.
swap([Z|List],[Z|List1]) :- swap(List,List1).
 
printlist([]) :- nl.
 	printlist([Head|List]) :-
 	writef('%w', [Head]),
 	printlist(List).