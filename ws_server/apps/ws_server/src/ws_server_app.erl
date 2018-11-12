%%%-------------------------------------------------------------------
%% @doc ws_server public API
%% @end
%%%-------------------------------------------------------------------

-module(ws_server_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    logger:error("start log here", []),
    Dispatch = cowboy_router:compile([
		{'_', [
				{"/websocket", cowboy_ws, []}
			]}
	]),
	{ok, _} = cowboy:start_clear(http, [{port, 9980}], #{
		env => #{dispatch => Dispatch}
	}),
    ws_server_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
