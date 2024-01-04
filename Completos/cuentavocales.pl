cuenta_vocales(Total) :- cuenta_vocales_aux(0,Total).
cuenta_vocales_aux(Acc,Res) :-get0(X), process_vocales(X,Acc,Res).
process_vocales(42,Acc,Acc).
process_vocales(X,Acc,Res):-X=\=42, processChar(X,Acc,N),
cuenta_vocales_aux(N,Res).
processChar(X,Acc,N) :- vocal(X), N is Acc+1.
processChar(_,Acc,Acc).
vocal(65). %% % Mayúsculas
vocal(69). vocal(73).
vocal(79). vocal(85).
vocal(97). %% % Minúsculas
vocal(101). vocal(105).
vocal(111). vocal(117).
