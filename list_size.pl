size([],0).
size([H|T],N):-
			size(T,N1), N is N1+1.
solve([H|T]):- write('Enter list'),nl,read([H|T]),size([H|T],N),nl,write("length is = "),write(N).