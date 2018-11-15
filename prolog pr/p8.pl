myreverse(List, Reversed) :-
          myreverse(List, [], Reversed).

myreverse([], Reversed, Reversed).
myreverse([Head|Tail], SoFar, Reversed) :-
          myreverse(Tail, [Head|SoFar], Reversed).