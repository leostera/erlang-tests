-module(recursion).
-export([len/1]).

% so functions can be defined by cases
% which is pretty awesome
len([]) -> 0;
len([_|T]) -> 1 + len(T).

