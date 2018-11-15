subset([],[]).
subset(S, [|T]) :- subset(S,T).
subset([H|S],[H|T]) :- subset(S,T).
powerset(Set,PowerSet) :- bagof(S,subset(S,Set),Powerset).
num(X,[X|T],T).
num(X,[H|T],[H|B]) :- num(X,T,B).
subset([],_).
subset([H|T],A) :- num(H,A,B), subset(T,B).
powerset(Set,Powerset) :- setoff(S, subset(S,Set), Powerset).