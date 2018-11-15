tuple('Ram',15,'Football','Dog').
tuple('Mohan',11,'Volleyball','Cat').
tuple('Sohan',25,'Card','Cow').
tuple('Mahesh',30,'Swimming','Dog').
tuple('Ravindra',11,'Football','Goat').
tuple('Rakesh',25,'Volleyball','Cat').
tuple('Rajeev',15,'Swimming','Dog').
tuple('Raju',30,'Swimming','Dog').
tuple('Jaichand',40,'Football','Cow').
tuple('Vijay',30,'Volleyball','Cat').

disp_name_age(N,A):-tuple(N,A,H,P).

disp_name_age(N,H):-tuple(N,A,H,P).

child(N):-tuple(N,A,H,P),A<16.

like(N1,N2):-
tuple(N1,A1,H1,P1),tuple(N2,A2,H2,P2),A1<16,A2<16,A1=\=A2,H1=H2.


countchild(X):-findall(N,child(X),Ns),length(Ns,X).