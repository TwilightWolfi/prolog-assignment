% Program: ROYAL
parent(queenmother,elisabeth). parent(elisabeth,charles).
parent(elisabeth,andrew). parent(elisabeth,anne).
parent(elisabeth,edward). parent(diana,william).
parent(diana,harry). parent(sarah,beatrice).
parent(anne,peter). parent(anne,zara).
parent(george,elisabeth). parent(philip,charles).
parent(philip,andrew). parent(philip,edward).
parent(charles,william). parent(charles,harry).
parent(andrew,beatrice). parent(andrew,eugenie).
parent(mark,peter). parent(mark,zara).
parent(william,georgejun). parent(kate,georgejun).
parent(kate,charlotte).

the_royal_females([diana,elisabeth,kate,charlotte,anne,zara,sarah,beatrice,queenmother]).
the_royal_males([charles,andrew,edward,william,harry,peter,philip,georgejun,eugenie,mark,george]).
mother(X,Y) :- the_royal_females(L), member(X,L), parent(X,Y).
has_child(X) :- parent(X,Y).
grandparent(X,Y) :- parent(X,V), parent(V,Y).
ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,V), ancestor(V,Y).
% mother(X,beatrice).
% X = sarah

% 
sibling(X,Y) :- parent(V,X), parent(V,Y).
aunt(X,Y) :- the_royal_females(L), member(X,L), parent(V,Y), sibling(X,V).