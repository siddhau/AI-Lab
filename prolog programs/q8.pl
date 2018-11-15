rev([],[]).

rev([H|T],R):-
rev(T,RevT),  append(RevT,[H],R).