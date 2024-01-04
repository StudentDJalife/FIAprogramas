perro(lucas). perro(pelos). perro(rufo).
cuidaterreno(pelos). cuidaterreno(rufo).
ladra(lucas). ladra(pelos).
comecarne(lucas).
se_enferma(pelos).
revisar_terreno(X):-perro(X),ladra(X).
es_perro(X):-ladra(X),comecarne(X),cuidaterreno(X).
no_come(X):-perro(X),se_enferma(X).
