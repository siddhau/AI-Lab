add( X, L, L ) : :- member( X, L ), !.
add( X, L, [X | L] ).

/* Adding an element into a list without
duplication  */