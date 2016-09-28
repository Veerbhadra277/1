%%%-------------------------------------------------------------------
%%% @author veerbhadras
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 27. Sep 2016 7:07 PM
%%%-------------------------------------------------------------------
-module(factorial_client).
-author("veerbhadras").

%% API
-export([start/0, stop/0, factorial/1]).

start( )->
  io:format("starting server...."),
  factorial_server:start_link().

stop() ->
  factorial_server:stop().

factorial(Val) ->
  factorial_server:factorial(Val).