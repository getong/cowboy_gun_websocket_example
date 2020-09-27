# This is a cowboy and gun websocket example

[![Build Status](https://travis-ci.org/getong/cowboy_gun_websocket_example.svg?branch=master)](https://travis-ci.org/getong/cowboy_gun_websocket_example)
[![CircleCI](https://circleci.com/gh/getong/cowboy_gun_websocket_example.svg?style=svg)](https://circleci.com/gh/getong/cowboy_gun_websocket_example)
[![Github CI](https://github.com/getong/cowboy_gun_websocket_example/workflows/ci/badge.svg)](https://github.com/getong/cowboy_gun_websocket_example/workflows/ci/badge.svg)
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

## format erlang files:

``` shell
cd ws_client
rebar3 fmt
cd ../ws_server
rebar3 fmt
```
