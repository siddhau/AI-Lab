in( X, t( _, X, _) ).
in( X, t( Left, Root, Right) ):-
gt( Root, X),
in( X, Left).

in( X, t( Left, Root, Right) ):-
gt( X, Root),
in( X, Right).