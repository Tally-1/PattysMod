PTDBG = PTTY_fnc_debugMessage;

[] call PTTY_fnc_initClient;
if(!isServer)exitWith{};
// if(PTTY_Debug)then{[] call PTTY_fnc_addBotLives;};

addMissionEventHandler ["EntityRespawned", {
	params ["_man", "_corpse"];
	if!(_man in allPlayers)exitWith{};
	[true] remoteExecCall ["PTTY_fnc_livesLeftNotification", _man];
}];

true;