addMissionEventHandler ["EntityRespawned", {
	params ["_man", "_corpse"];
	if!(_man in allPlayers)exitWith{};
	[true] remoteExecCall ["PTTY_fnc_livesLeftNotification", _man];
	
	call PTTY_fnc_updateLifeMap;
}];