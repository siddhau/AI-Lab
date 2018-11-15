move(1,2).
move(2,3).
move(3,4).
move(4,5).
move(5,3).
move(4,2).
 
dfs(Goal,Checked,Goal).
 
 
dfs(State,Checked,Goal):-
move(State,Nextstate),
\+member(Nextstate,Checked),
write(Nextstate),
write(' '),
dfs(Nextstate,[Nextstate|Checked],Goal).