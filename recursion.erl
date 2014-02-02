-module(recursion).
-export([len/1, tail_len/1]).

% so functions can be defined by cases
% which is pretty awesome
len([]) -> 0;
len([_|T]) -> 1 + len(T).

% tail_recursion!
% {little piggy}
tail_len(L) -> tail_len(L, 0).
tail_len([], Acc) -> Acc;
tail_len([_|T], Acc) -> tail_len(T, Acc+1).
