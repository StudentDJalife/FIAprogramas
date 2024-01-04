par(X):- 0 is X mod 2.
impar(X):- 1 is X mod 2.
%%% impar con negación
nimpar(X) :- \+ par(X).


readin:-get0(X),process(X).
process(42).
process(X):-X =\= 42, write(X), nl, readin.

%%% cuenta los caracteres capturados
cuenta(Total):-cuenta_aux(0,Total).
cuenta_aux(Acc,Res):-get0(X),process(X,Acc,Res).
process(42,Acc,Acc).
process(X,Acc,Res):-X=\=42,Acc1 is Acc+1,cuenta_aux(Acc1,Res).

%%% cuenta las vocales en la entrada
cuenta_vocales(Total) :- cuenta_vocales_aux(0,Total).
cuenta_vocales_aux(Acc,Res) :-get0(X), process_vocales(X,Acc,Res).
process_vocales(42,Acc,Acc).
process_vocales(X,Acc,Res):-X=\=42, processChar(X,Acc,N),cuenta_vocales_aux(N,Res).
processChar(X,Acc,N) :- vocal(X), N is Acc+1.
processChar(_,Acc,Acc).
%%% mayusculas
vocal(65). vocal(69). vocal(73). vocal(79). vocal(85). 
%%% minusculas
vocal(97). vocal(101). vocal(105). vocal(111). vocal(117).


