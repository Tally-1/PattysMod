PTDBG = PTTY_fnc_debugMessage;
[] call PTTY_fnc_initClient;

if(!isServer)exitWith{};
if(PTTY_Debug)
then{[] call PTTY_fnc_setBotLives};

PTTY_disconnects = createHashmapObject [[]];

addMissionEventHandler ["HandleDisconnect", {_this call PTTY_fnc_onDisconnect}];

call PTTY_fnc_respawnEh;
call PTTY_fnc_killedEh;
call PTTY_fnc_lifeManagerEvents;
call PTTY_fnc_initLifeMap;
call PTTY_fnc_roleChangeEvent;

true;