edge(1,2).  
edge(2,3). 
edge(2,5). 
edge(3,4). 
edge(2,1). 
edge(3,2). 
edge(5,2). 
edge(4,3). 
edge(5,8).
edge(8,5).
edge(5,9).
edge(9,5).
connected(X,Y) :- edge(X,Y). 
connected(X,Y) :- edge(Y,X).
path(A,B,Path) :- travel(A,B,[A],Q), reverse(Q,Path).
travel(A,B,P,[B|P]) :-connected(A,B).
travel(A,B,Visited,Path) :- connected(A,C),C \== B, not(member(C,Visited)),  travel(C,B,[C|Visited],Path).