-module(functions).
-export([sum/2, loop_through/1]).

loop_through([Head | Tail]) ->
  io:format('~p~n', [Head]),
  loop_through(Tail);

loop_through([]) ->
  ok.

sum(A, B) when is_integer(A), is_integer(B) ->
  A + B;

sum(A, B) when is_list(A), is_list(B) ->
  A ++ B;

sum(A, B) when is_binary(A), is_binary(B) ->
  <<A/binary,  B/binary>>.

