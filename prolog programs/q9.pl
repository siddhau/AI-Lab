edge(a,b).
edge(b,c).
edge(c,a).
edge(a,d).
edge(b,d).
edge(c,d).

tedge(X,Y):-edge(Y,X).



color(a,red,f3).
color(b,blue,f3).
color(c,green,f3).
color(d,red,f3).

color(a,blue,s3).
color(b,red,s3).
color(c,green,s3).
color(d,red,s3).

color(a,red,f4).
color(b,blue,f4).
color(c,green,f4).
color(d,yellow,f4).

color(a,blue,s4).
color(b,yellow,s4).
color(c,green,s4).
color(d,red,s4).

conflict(Coloring) :- 
   (edge(X,Y);tedge(X,Y)), 
   color(X,Color,Coloring), 
   color(Y,Color,Coloring). 