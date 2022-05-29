% CS152 Spring 2022
% Lifan Zeng
% #014172171
% Homework assignment 2
% Exercise 2
find([X|_], X, 1).
find([_|Tail], E, K):-
    find(Tail, E, K2),
    K is K2+1.
