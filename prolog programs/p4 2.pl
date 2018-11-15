data(ram,15,football,dog).
data(mohan,11,volleyball,cat).
data(sohan,25,card,cow).
data(mahesh,30,swimming,dog).
data(ravindra,11,football,goat).
data(rakesh,25,volleyball,cat).
data(rajeev,15,swimming,dog).
data(raju,30,swimming,dog).
data(jaichand,40,football,cow).
data(vijay,30,volleyball,cat).
pname_age(X,Y):-data(X,Y,_, _).
pname_hobby(X,Y):-data(X,_,Y,_).
child(X):-data(X,Y,_,_),(Y<16).
likes(X,Y):-data(X,Z,A,B),data(Y,C,D,E),Z<16,C<16,Z\=C,A=D;B=E,X\=Y.


     