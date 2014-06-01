-module(geometry).
-export([area/1, test/0]).

test() ->
  12 = area({rect, 3, 4}),
  144 = area({square, 12}),
  9.424769999999999 = area({circle, 3}),
  tests_green.

area({rect, Width, Height}) -> Width * Height;
area({square, Side}) -> Side * Side;
area({circle, Radius}) -> 3.14159 * Radius.

