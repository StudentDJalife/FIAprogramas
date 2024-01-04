ancestro(maria,juan). ancestro(pedro, eva). 
ancestro(pedro,luis). ancestro(luis,sergio). 
ancestro(juan,carlos). ancestro(juan,ema).
ancestro(eva,ana). 
mujer(maria). mujer(eva). mujer(ema).
hombre(juan). hombre(luis). hombre(carlos).

%%% una regla
descendiente(X,Y):-ancestro(Y,X).