% CS152 Spring 2022
% Lifan Zeng
% #014172171
% Homework assignment 2
% Exercise 1
get_i([X|_], 1, X).
get_i([_|L], K, E) :- K<1,
    write(false);
    K>1,
    K2 is K-1,
    get_i(L, K2, E).
