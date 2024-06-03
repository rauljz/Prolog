/* 

elimina_n(+Lista,+N,-R)
	es cierto si R unifica con una lista que contiene los elementos 
	de Lista eliminando los que ocupan posiciones multilples de N
	
	
	?elimina_n([1,2,3,4,5,6,7,8,9],3,R)
	R=[1,2,4,5,7,8]
	
*/

elimina_n(Lista,N, Lista):-
	length(Lista,L),L<N.
	
elimina_n(Lista,N, R2):- N2 is N-1, length(L1,N2),
	append(L1,[__|L2],Lista),
	elimina_n(L2,N,R),
	append(L1,R,R2).