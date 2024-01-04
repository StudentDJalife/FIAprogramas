ancestro(maria, juan).  ancestro(pedro, eva).
ancestro(pedro,luis).    ancestro(luis, sergio).
ancestro(diana,maricela).  ancestro(peter, luisa).
ancestro(cesar,alex). ancestro(cesar, omar).
mujer(maria). mujer(eva). mujer(diana). mujer(maricela).
hombre(pedro). hombre(juan). hombre(luis). hombre(sergio).
hombre(peter).
%% padre y madre
madre(X,Y):-ancestro(X,Y),mujer(X).  
padre(X,Y):-ancestro(X,Y),hombre(X).
%% descendiente
descendiente(X,Y):-ancestro(Y,X).
%% parientes
pariente(X,Z):-ancestro(X,Z).
pariente(X,Z):-ancestro(X,Z).
