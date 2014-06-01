-module(shop).
-export([cost/1, total/1]).
-import(lists, [map/2, sum/1]).

cost(oranges)   -> 5;
cost(newspaper) -> 8;
cost(apples)    -> 2;
cost(pears)     -> 4;
cost(milk)      -> 7.

total(L) -> 
  sum([ shop:cost(Name)*Number || {Name, Number} <- L ]).
