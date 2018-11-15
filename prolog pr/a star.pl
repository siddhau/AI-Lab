solve(Start,Soln) :- f_function(Start,0,F),
                     search([Start#0#F#[]],S),
                     reverse(S,Soln).

f_function(State,D,F) :- h_function(State,H),
                         F is D + H.

search([State#_#_#Soln | _], Soln) :- goal(State).
search([B|R],S) :- expand(B, Children),
                   insert_all(Children, R, NewOpen),
                   search(NewOpen,S).

expand(State#D#_#A, All_My_Children) :-
         bagof(Child#D1#F#[Move|A],
               ( D1 is D + 1,
                 move(State,Child,Move),
                 f_function(Child,D1,F) ) ,
               All_My_Children).  

insert_all([F|R],Open1,Open3) :- insert(F,Open1,Open2),
                                 insert_all(R,Open2,Open3).
insert_all([],Open,Open).

insert(B,Open,Open) :- repeat_node(B,Open), ! .
insert(B,[C|R],[B,C|R]) :- cheaper(B,C), ! .
insert(B,[B1|R],[B1|S]) :- insert(B,R,S), !.
insert(B,[],[B]).

repeat_node(P#_#_#_, [P#_#_#_|_]).

cheaper( _#_#H1#_ , _#_#H2#_ ) :- H1 <  H2.