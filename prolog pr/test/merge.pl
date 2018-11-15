merge([],List,List):- !.

merge(List,[],List).

merge([X|Rest1],[Y|Rest2],[X|Rest3]):-
X<Y,!,
merge(Rest1,[Y|Rest2],Rest3).

merge(List1,[Y|Rest2],[Y|Rest3]):-
merge(List1,Rest2,Rest3).

/* merge([2,4,7],[1,3,4,8],P). */