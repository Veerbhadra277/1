%%%-------------------------------------------------------------------
%%% @author veerbhadras
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 27. Sep 2016 7:06 PM
%%%-------------------------------------------------------------------
-module(factorial_logic).
-author("veerbhadras").

%% API
-export([factorial/1, factorial/2]).

factorial(N) when N > 0 ->
  N * factorial(N-1);
factorial(0) -> 1.

factorial(N, Total) when N > 0 ->
  factorial((N-1), N * Total);
factorial(0, Total) ->
  Total.