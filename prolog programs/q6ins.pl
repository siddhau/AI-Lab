sorting([A|B], Sorted) :-
sorting(B, SortedTail), insert(A, SortedTail, Sorted).

sorting([], []).

insert(A, [B|C], [B|D]) :-
A > B, !, insert(A, C, D).

insert(A, C, [A|C]).