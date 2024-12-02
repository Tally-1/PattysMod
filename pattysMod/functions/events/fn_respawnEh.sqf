addMissionEventHandler ["EntityRespawned", {
	params ["_man", "_corpse"];
	if!(_man in allPlayers)exitWith{};
	[true] remoteExecCall ["PTTY_fnc_livesLeftNotification", _man];
	[]     remoteExec     ["PTTY_fnc_remoteLifeMenuUpdate"];
	
	call PTTY_fnc_updateLifeMap;
}];