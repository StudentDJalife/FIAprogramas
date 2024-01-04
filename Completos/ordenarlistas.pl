%%Cláusula que es verdadera si su argumento es una lista ordenada:
ordenada([]).
ordenada([_]).
ordenada([X,Y|Ys]) :- X<Y, ordenada([Y|Ys]).
%%insertar un elemento en una lista ordenada y mantener el orden en ella:
inserta(X,[],[X]).
inserta(X,[Y|Ys],[X,Y|Ys]) :- X < Y.
inserta(X,[Y|Ys],[Y|Zs]) :- X >= Y, inserta(X,Ys,Zs).

