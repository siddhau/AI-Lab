max(A,B,B):-B>A.
max(A,B,A).

maxcut(A,B,B):-B>A,!.
maxcut(A,B,A).