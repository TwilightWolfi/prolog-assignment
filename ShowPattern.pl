outputStar(1) :- write(*).
outputStar(X) :- write(*), Y is X-1, outputStar(Y).

outputSpace(0).
outputSpace(1) :- write(" ").
outputSpace(X) :- write(" "), Y is X-1, outputSpace(Y).

patternDescending(1,Y) :- outputStar(1),outputSpace(Y),outputStar(1).
patternDescending(X,Y) :- X > 0, outputStar(X), outputSpace(Y), outputStar(X), nl, V is X-1, W is Y+2, patternDescending(V,W).

patternAscending(1,Y) :- outputStar(1), outputSpace(Y),outputStar(1).
patternAscending(X,Y) :- X > 0, V is X-1, W is Y+2, patternAscending(V,W), nl, outputStar(X), outputSpace(Y), outputStar(X).

showPattern(N) :- patternDescending(N,0), nl, patternAscending(N,0).