init(positions(0,0,0,0)).
final(positions(1,1,1,1)).
applicable(carryNothing,positions(U,L,P,C)):-L =/= P,P =/= C.
applicable(carryWolf,positions(UeL,UeL,P,C)):-P =/= C.
applicable(carrySheep,positions(UeP,L,UeP,C)).
applicable(carryCabbage,positions(UeC,L,P,UeC)):-L =/= P.
apply(carryNothing,positions(U,L,P,C),positions(NewU,L,P,C)):-
NewU is 1-U.
apply(carryWolf,positions(U,L,P,C),positions(NewU,NewL,P,C)):-
NewU is 1-U, NewL is 1-L.
apply(carrySheep,positions(U,L,P,C),positions(NewU,L,NewP,C)):-
NewU is 1-U, NewP is 1-P.
apply(carryCabbage,positions(U,L,P,C),positions(NewU,L,P,NewC)):-
NewU is 1-U, NewC is 1-C.