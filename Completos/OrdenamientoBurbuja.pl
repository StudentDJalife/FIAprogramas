%%Ordenamiento Burbuja
bubbleSort(L,S):- swap(L,L1),!,
 % write(L1),nl,
 bubbleSort(L1,S).
 bubbleSort(S,S).
 swap([X,Y|Ys],[Y,X|Ys]):- X>Y.
 swap([Z|Zs],[Z|Zs1]):- swap(Zs,Zs1).
