-module(cowboy_ws).

-export([
    init/2,
    websocket_init/1,
    websocket_handle/2,
    websocket_info/2
]).

init(Req, Opts) ->
    {cowboy_websocket, Req, Opts}.

websocket_init(State) ->
    {ok, State}.

websocket_handle({text, Msg}, State) ->
    {reply, {text, <<"That's what she said! ", Msg/binary>>}, State};
websocket_handle(_Data, State) ->
    {ok, State}.

websocket_info({timeout, _Ref, Msg}, State) ->
    {reply, {text, Msg}, State};
websocket_info(_Info, State) ->
    {ok, State}.
