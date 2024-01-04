%%Ordenamiento Insercion
ordenaIns([],[]).
ordenaIns([X|Xs],Ys) :- ordenaIns(Xs,Xs0), inserta(X,Xs0,Ys).
