-module(gen_server).

% vim: tabstop=4:shiftwidth=4:noexpandtab:filetype=erlang

-behaviour(gen_server).

% gen_server exports
-export([start_link/0, stop/0]).
-export([init/1, code_change/3, terminate/2, handle_call/3, handle_cast/2, handle_info/2]).

% other exports
-export([send/1]).

-record(state, {
	limit = 0 :: non_neg_integer()
}).

% gen_server helpers
start_link() ->
	gen_server:start_link(?MODULE, ["arg"], []).

stop() ->
	ok.

% gen_server callbacks
init([_Arg]) ->
	{ok, #state{}}.

code_change(_OldVsn, State, _Extra) ->
	{ok, State}.

terminate(shutdown, _) ->
	ok.

handle_call(_Message, _From, State) ->
	{reply, ok, State}.

handle_cast(_Msg, State) ->
	{noreply, State}.

handle_info(_Message, _Server) ->
    {noreply, _Server}.


% exported module methods
send(Command) ->
	gen_server:call({command, Command}).


% other internal methods