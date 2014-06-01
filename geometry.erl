-module(geometry).
-export([area/1]).

area({rect, Width, Height}) -> Width * Height;
area({square, Side}) -> Side * Side.

