.PHONY: all compile dialyzer ci

REBAR3 ?= rebar3

all: compile

compile:
	$(REBAR3) compile

xref:
	$(REBAR3) xref

dialyzer: compile
	$(REBAR3) dialyzer
