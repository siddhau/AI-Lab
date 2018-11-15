postfix(Exp, Tree) :- postfix_stack(Exp, [], [Tree]).

postfix_stack([], Tree, Tree).
postfix_stack([Operator | Rest_exp],
[Top, Next_top | Rest_stack], Tree) :-
operator(Operator),
postfix_stack(Rest_exp,
[tree(Operator, Next_top, Top) | Rest_stack],
Tree).
postfix_stack([Operand | Rest_exp], Stack, Tree) :-
postfix_stack(Rest_exp, [Operand | Stack], Tree).
operator(+).
operator(-).
operator(*).
operator(/).

/* postfix([a,b,c,*,+],Tree).