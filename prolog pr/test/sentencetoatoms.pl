getsentence(Wordlist):-
get0(Char),
getrest(Char,Wordlist).

getrest(46,[]):- !.

getrest(32,Wordlist):- !,
getsentence(Wordlist).

getrest(Letter,[Word|Wordlist]):-
getletters(Letter,Letters,Nextchar),
name(Word,Letters),
getrest(Nextchar,Wordlist).

getletters(46,[],46):- !.

getletters(32,[],32):- !.

getletters(Let,[Let|Letters],Nextchar):-
get0(Char),
getletters(Char,Letters,Nextchar).
