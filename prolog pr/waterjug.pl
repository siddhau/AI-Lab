state(2,_).
     state(X,Y):-
    
        X = 0,Y=0,
       
        write(X),write(' '),write(Y),nl,
        state(4,Y).
        
    state(X,Y):-
    
        Y = 0, X=4,
         write(X),write(' '),write(Y),nl,
        Z is X-3,
        write(Z),write(' '),write(3),nl,
        state(Z,3).
    
    state(X,Y):-
    
        X>0, X<4,X\=2,Y=3,
        
         Z is Y-3,
        write(X),write(' '),write(Z),nl,
        state(X,Z).
    
    state(X,Y):-
    
        Y=0,X < 4,
       
         Z is Y+X,
           A is X-X,
        
        write(A),write(' '),write(Z),nl,
        state(A,Z).
    
    state(X,Y):-
    
        X=0,Y < 3,
        Y > 0,
        A is X+4,
        
        write(A),write(' '),write(Y),nl,
        state(A,Y).
    
state(X,Y):-
        X=4,Y<3,Y\=0,
        X>0,
        A is 3-Y,
        Z is X-A,
        
        
        write(Z),write(' '),write(3),nl,
        state(Z,3).
    
    

    solve(X,Y):-state(0,0).