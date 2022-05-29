% CS152 Spring 2022
% Lifan Zeng
% #014172171
% Homework assignment 2
% Exercise 5
father_of(jose, david).
father_of(nicolas, david).
father_of(laura, david).
father_of(tina, david).
father_of(ricky, nicolas).
father_of(mateo, nicolas).
father_of(moira, greg).
father_of(trevor, bruce).
father_of(lisa, bruce).
father_of(mary, jose).
father_of(john, jose).
mother_of(ricky, lena).
mother_of(jose, lupe).
mother_of(nicolas, lupe).
mother_of(laura, lupe).
mother_of(tina, lupe).
mother_of(mateo, lena).
mother_of(moira, laura).
mother_of(trevor, tina).
mother_of(lisa, tina).
mother_of(mary, cassandra).
mother_of(john, cassandra).
parent_of(X, P) :- father_of(X, P);
    mother_of(X, P).
sibling(X, Y) :- father_of(X, F),
    mother_of(X, M),
    father_of(Y, F),
    mother_of(Y, M),
    X\==Y.
first_cousin(A, B) :-
    parent_of(A, P1),
    parent_of(B, P2),
    sibling(P1, P2).
