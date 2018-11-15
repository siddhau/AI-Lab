reverse(List, RevList) :-
    reverselist(List, [], RevList).
reverselist([], RevList, RevList).
reverselist([E|Elements], Accu, RevList) :-
    reverselist(Elements, [E|Accu], RevList).