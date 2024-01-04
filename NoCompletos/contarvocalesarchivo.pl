vocs_file(Arch,Total):-see(Arch),cuenta_vocales_file(0,Total),seen.
cuenta_vocales_file(Acc,Res):-get0(X), process_vocales_file(X,Acc,Res).
process_vocales_file(-1,Acc,Acc).
process_vocales_file(X,Acc,Res):- X =\= -1, processChar(X,Acc,N),
                  cuenta_vocales_file(N,Res).
copiaCars(Salida):-telling(Actual), tell(Salida),
               copiaCars_aux, told, tell(Actual).
copiaCars_aux :- get0(C), copia(C).
copia(33).
copia(C) :-C =\= 33, put(C), copiaCars_aux.

