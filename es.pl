% es: 1.1
% test: search_2(a, [b, c, a, a, d, el). YES
% test: search_2(a, [a, b, a, d, el). No 
search_2(H, [H, H | T]) :- !.
search_2(H, [A| T]) :- search_2(H, T).

% es: 1.2
% test: search_two (a, [a, b, a, d, el). YES 
% test: search two (a, [b, c, a, a, d, el). NO
search_two(H, [H, A, H | T]) :- !.
search_two(H, [A| T]) :- search_two (H, T).

% es: 1.3
% test: size ((a, b, c, d, el, X) . YES
% test: size (X, 5) . YES
size([], 0).
size([H | T], N) :- size (T, N1), N is N1 + 1.

% es: 1.4
% test: sum ( [1, 2, 3, 4, 51, X). YES
% test: sum (X, 10). NO 
sum([], 0).
sum([H | T], S) :- sum(T, S1), S is S1 + H.

% es: 1.5
% test: max ([1, 2, 3, 4, 5, 6], X, Y). YES 
% test: max (X, 6, 1). NO 
max([H], H, H).
max([H | T], Max, Min) :- max(T, Max1, Min1), (H < Max1 -> Max=Max1; Max=H), (H > Min1 -> Min=Min1; Min=H).

% es: 1.6
% test: split([10, 20, 30 , 40 , 50] , 2 , L1 , L2).
split (T, 0, L1, T).
split ([H| T], N, LT1, LT2) :- split(T, N1, T1, T2), N1 is N - 1, 
																											(N > 0 -> LT1=[H|T1], LT2=T2; LT2=[H, T2], LT1=T1).





																											