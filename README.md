# This is a cowboy and gun websocket example

## The ws_server is copied from cowboy websocket example
The cowboy_ws.erl is copied from ws_h.erl

## usage example
In the ws_server dir

``` shell
$ rebar3 shell
1>
```
Then in the ws_client dir:

``` shell
$ rebar3 shell
1> {ok, Pid} = gun_client_ws:start_link().
2> Pid ! {send, "test string"}.
3> Pid ! {send, <<"test binary">>}.
```
