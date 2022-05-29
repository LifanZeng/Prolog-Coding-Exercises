% CS152 Spring 2022
% Lifan Zeng
% #014172171
% Homework assignment 2
% Exercise 4
is_member(H,[H|_]).
is_member(X,[H|T]) :-
    is_member(X,T);
    is_member(X,H).
members([], _L).
members([_01|T1], L) :-
    is_member(_01, L),
    members(T1, L).
