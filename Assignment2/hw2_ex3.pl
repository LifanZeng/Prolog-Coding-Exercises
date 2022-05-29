% CS152 Spring 2022
% Lifan Zeng
% #014172171
% Homework assignment 2
% Exercise 3
get_last([X], X).
get_last([_|Tail], E) :- get_last(Tail, E).
