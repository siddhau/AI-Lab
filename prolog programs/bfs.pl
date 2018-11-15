adj(1,[2,3]).
adj(2,[4]).
adj(3,[5]).
adj(4,[5]).
adj(5,[]).
 
 
 
search(X,[H,T]):- X=H,write(X).
 
search(X,[H,T]):- X\=H,adj(H,C),append(T,C,R),print(R),nl,search(X,R).
 
 
bfs(X):-   append([1],[],L),print(L),nl,search(X,L).
 