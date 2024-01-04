readin:-get0(X),process(X).
process(42).
process(X):-X =\= 42, write(X), nl, readin.
%%contar caracteres
cuenta(Total) :- cuenta_aux(0,Total).
cuenta_aux(Acc,Res):-get0(X), process(X,Acc,Res).
process(42,Acc,Acc).
process(X,Acc,Res):-X=\=42, Acc1 is Acc+1,cuenta_aux(Acc1,Res).
