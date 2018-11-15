







    hanoi(P):-


        hanoi1(P,"A","B","C").


    hanoi1(0,R,S,T).


    hanoi1(P,R,S,T):-


        U=P-1,


        hanoi1(U,R,T,S),


        write("move disk no ",P," from ",R," to ",T),nl,


        readchar(A),


       hanoi1(U,S,R,T).