
go(Start, Goal) :-
empty_set(Closed_set),
empty_pq(Open),
heuristic(Start, Goal, H),
insert_pq([Start, nil, 0, H, H], Open, Open_pq),
path(Open_pq, Closed_set, Goal).

path(Open_pq, _, _) :-
empty_pq(Open_pq),
write('Graph searched; no solution found.').

path(Open_pq, Closed_set, Goal) :-
dequeue_pq([State, Parent, _, _, _], Open_pq, _),
my_equal(State,Goal),
write('The solution path is'), nl,
printsolution([State, Parent, _, _, _], Closed_set).

path(Open_pq, Closed_set, Goal) :-
dequeue_pq([State, Parent, D, H, S], Open_pq, Rest_open_pq),
get_children([State, Parent, D, H, S], Rest_open_pq, Closed_set, Children, Goal),
insert_list_pq(Children, Rest_open_pq, New_open_pq),
my_union([[State, Parent, D, H, S]], Closed_set, New_closed_set),
path(New_open_pq, New_closed_set, Goal),!.

get_children([State, _, D, _, _], Rest_open_pq, Closed_set, Children, Goal) :-
(bagof(Child,
moves([State, _, D, _, _], Rest_open_pq,Closed_set, Child, Goal),
Children);
Children = []).

moves([State, _, Depth, _, _], Rest_open_pq, Closed_set,
[Next, State, New_D, H, S], Goal) :-
move(State, Next),
not(member_pq([Next, _, _, _, _], Rest_open_pq)),
not(member_set2([Next, _, _, _, _], Closed_set, _)),
New_D is Depth + 1,
heuristic(Next, Goal, H),
S is New_D + H.

printsolution([[X, Y, _, _], nil, _, _, _], _) :-
write([X, Y]), nl.

printsolution([State, Parent, _, _, _], Closed_set) :-
member_set2([Parent, _, _, _, _], Closed_set, Grandparent),
printsolution([Parent, Grandparent, _, _, _], Closed_set),
my_write(State).

my_write([X, Y, _, _]) :-
write([X, Y]),nl.

my_equal([X, Y, _, _], [Z, W]) :-
X = Z,
Y = W.
