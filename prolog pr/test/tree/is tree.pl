istree(nil).
istree(t(_,L,R)) :- istree(L), istree(R).

tree(1,t(a,t(b,t(d,nil,nil),t(e,nil,nil)),t(c,nil,t(f,t(g,nil,nil),nil)))).
tree(2,t(a,nil,nil)).
tree(3,nil).

/*  istree(t(a,t(b,nil,nil),nil)). */