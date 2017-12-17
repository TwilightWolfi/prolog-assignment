
listSum(L,X) :- listSum(L,V,X).
listSum([],X,X).
listSum([H|T],V,X) :- Y is V + H, listSum(T,Y,X).

factorial(X,Y) :- factorial(X,V,Y).
factorial(0,Y,Y).
factorial(X,V,Y) :- W is V*X, Z is X-1, factorial(Z,W,Y).

listFactorials(L,X) :- listFactorials(L,V,X).
listFactorials([],X,X).
listFactorials([H|T],V,X) :- factorial(H,Y), W is V+Y, listFactorials(T,W,X).

multinomial(L,X) :- listSum(L,Y), factorial(Y,Z), listFactorials(L,V), X is Z/V.