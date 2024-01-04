%% % La ciudad X está localizada en el país Y
loc_en(X,usa) :- loc_en(X,georgia).
loc_en(X,usa) :- loc_en(X,texas).
loc_en(X,usa) :- loc_en(X,massachussets).
loc_en(X,mexico) :- loc_en(X,veracruz).
%% % loc_en(X,Y)/2
%% % La ciudad X está en norteamérica
loc_en(X,norteamerica) :- loc_en(X,usa).
loc_en(X,norteamerica) :- loc_en(X,usa).
loc_en(X,norteamerica) :- loc_en(X,mexico).
%%listas
gringas([X]) :- loc_en(X,usa).
gringas([X|Xs]) :- loc_en(X,usa), gringas(Xs).
%%La siguiente cláusula permite unir dos listas en una tercera:
append([],Ys,Ys).
append([X|Xs], Ys, [X|Zs]) :- append(Xs,Ys,Zs).
%%si una lista es sufijo, prefijo o sublista de otra:
prefijo(Xs,Ys) :- append(Xs,_,Ys).
sufijo(Xs,Ys) :- append(_,Xs,Ys).
sublista(Xs,Ys):- prefijo(Aux,Ys), sufijo(Xs,Aux).
%%reverso de una lista 
reverso([],[]).
reverso([X|Xs],Res):-reverso(Xs,XsReverso),
append(XsReverso,[X],Res).
