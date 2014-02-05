-module(stuff).
-export([
        len/1, tail_len/1, duplicate/2, tail_duplicate/2, reverse/1, tail_reverse/1, sublist/2, tail_sublist/2
        ]).

% len list
% return the length of a list applying recursion
len([]) -> 0;
len([_|T]) -> 1 + len(T).

% tail_len list
% returns the length of a list applying tail recursion
% {little piggy}
tail_len(L) -> tail_len(L, 0).
tail_len([], Acc) -> Acc;
tail_len([_|T], Acc) -> tail_len(T, Acc+1).

% duplicate times term
% returns a list with N times Term
duplicate(0, _) -> [];
duplicate(N, Term) when N > 0 ->
  [Term|duplicate(N-1,Term)].

% tail_duplicate times term
% returns a list with N times Term applying tail recursion
% {little piggy}
tail_duplicate(N, Term) ->
  tail_duplicate(N, Term, []).

tail_duplicate(0, _, List) -> List;
tail_duplicate(N, Term, List) when N > 0 ->
  tail_duplicate(N-1, Term, [Term|List]).

% reverse list
% returns list but reversed! !t00w
reverse([]) -> [];
reverse([H|T]) -> reverse(T) ++ [H].

% tail_reverse list
% returns list but tail reversed! !t00w yggip
% {little piggy}
tail_reverse(L) -> tail_reverse(L, []).

tail_reverse([], List) -> List;
tail_reverse([H|T], List) ->
  tail_reverse(T, [H|List]).

% sublist list, limit
% returns a list containing limit elements from list
sublist(_, 0) -> [];
sublist([], _) -> [];
sublist([H|T], Limit) -> [H|sublist(T,Limit-1)].

% tail_sublist list, limit
% returns a list containing limit elements from list using tail recursion
% {piggy tail!}
tail_sublist(List, Limit) -> tail_sublist(List, Limit, []).

tail_sublist(_, 0, List) -> List;
tail_sublist([], _, List) -> List;
tail_sublist([H|T], Limit, List) when Limit > 0 ->
  tail_sublist(T, Limit-1, List++[H]).
