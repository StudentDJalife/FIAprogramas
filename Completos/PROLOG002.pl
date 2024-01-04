horizontal(seg(punto(X,Y), punto(X1,Y))).
vertical(seg(punto(X,Y), punto(X,Y1))).
fact(0,1).
fact(N,F) :- N>0, N1 is N-1, fact(N1,F1), F is N * F1.
par(X):- 0 is X mod 2.
impar(X):- 1 is X mod 2.
%% % impar con negación
nimpar(X) :- \+ par(X).