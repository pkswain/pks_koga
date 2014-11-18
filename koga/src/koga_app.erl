-module(koga_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
    
    Dispatch = cowboy_router:compile([
        {'_', [{"/", koga_handler, []}]}
				     ]),
        cowboy:start_http(my_http_listener, 100, [{port, 808}],
        [{env, [{dispatch, Dispatch}]}]
			 ),
        hello_erlang_sup:start_link().


stop(_State) ->
	ok.
