prime_factors(N,L) :- N > 0,  prime_factors(N,L,2).

prime_factors(1,[],_) :- !.
prime_factors(N,[F|L],F) :-                          
   R is N // F, N =:= R * F, !, prime_factors(R,L,F).
prime_factors(N,L,F) :- 
   next_factor(N,F,NF), prime_factors(N,L,NF).      

next_factor(_,2,3) :- !.
next_factor(N,F,NF) :- F * F < N, !, NF is F + 2.
next_factor(N,_,N).


prime_factors_mult(N,L) :- N > 0, prime_factors_mult(N,L,2).

prime_factors_mult(1,[],_) :- !.
prime_factors_mult(N,[[F,M]|L],F) :- divide(N,F,M,R), !, % F divides N
   next_factor(R,F,NF), prime_factors_mult(R,L,NF).
prime_factors_mult(N,L,F) :- !,                          % F does not divide N
   next_factor(N,F,NF), prime_factors_mult(N,L,NF).

divide(N,F,M,R) :- divi(N,F,M,R,0), M > 0.

divi(N,F,M,R,K) :- S is N // F, N =:= S * F, !,          % F divides N
   K1 is K + 1, divi(S,F,M,R,K1).
divi(N,_,M,N,M).

/* prime_factors_mult(315, L). */
   