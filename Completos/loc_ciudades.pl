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
