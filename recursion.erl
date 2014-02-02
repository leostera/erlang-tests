-module(recursion).
-export([len/1, tail_len/1]).

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
