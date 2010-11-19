%%%-------------------------------------------------------------------
%%% @private
%%% @doc       
%%% @end
%%%-------------------------------------------------------------------
-module(erltmdb_sup).

-behaviour(supervisor).

%%--------------------------------------------------------------------
%% API
%%--------------------------------------------------------------------
-export([start_link/0]).

%%--------------------------------------------------------------------
%% Internal exports
%%--------------------------------------------------------------------
%% supervisor callbacks
-export([init/1]).

%%--------------------------------------------------------------------
%% Include files
%%--------------------------------------------------------------------

%%--------------------------------------------------------------------
%% Definitions
%%--------------------------------------------------------------------


%%--------------------------------------------------------------------
%% Records
%%--------------------------------------------------------------------

%%====================================================================
%% API
%%====================================================================

%%--------------------------------------------------------------------
%% @spec start_link() -> {ok, Pid} | ignore | {error, Reason}
%%         Reason = {already_started, Pid} | term()
%% @doc Start the supervisor.
%% @end
%%--------------------------------------------------------------------
start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

%%====================================================================
%% Behaviour callback functions
%%====================================================================

%%--------------------------------------------------------------------
%% @spec init(StartArgs) -> Return
%%         Return = {ok,  {SupFlags,  [ChildSpec]}} |
%%                  ignore                          |
%%                  {error, Reason}
%% @doc Initialize the supervisor.
%% @end
%%--------------------------------------------------------------------
init([]) ->
    {ok,{{one_for_all,0,1}, []}}.

%%====================================================================
%% Internal functions
%%====================================================================
