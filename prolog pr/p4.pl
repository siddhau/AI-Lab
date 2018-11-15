data(ram,15,football,dog).
data(mohan,11,volleyball,cat).
data(sohan,25,card,cow).
data(mahesh,30,swimming,dog).
data(ravinder,11,football,goat).
data(rakesh,25,volleyball,cat).
data(rajeev,15,swimming,dog).
data(raju,30,swimming,dog).
data(jaichand,40,football,cow).
data(vijay,30,volleyball,cat).

child(X):-data(X,Y,_,_), Y<16.


like(X,Y):-data(X,A,C,_) , data(Y,B,D,_), A \=B, child(X), child(Y), C=D.

