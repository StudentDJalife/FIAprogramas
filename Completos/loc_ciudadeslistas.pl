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
%% % miembro (X, Ys)
%% % El elemento X es miembro de la lista Ys
miembro(X,[X|_]).
miembro(X,[_|Ys]) :- miembro(X,Ys).
%% % long(Xs,L)
%% % L es la longitud de la lista Xs
long([],0).
long([_|Xs],L) :- long(Xs,L1), L is L1+1.
