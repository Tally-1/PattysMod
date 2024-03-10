addMissionEventHandler ["EntityKilled", {
	params ["_man", "_killer", "_instigator", "_useEffects"];
	if!(_man isKindOf "caManBase") exitWith{};
	if!(_man in allPlayers)        exitWith{};

	private _lives = [_man] call PTTY_fnc_getLives;
	if(_lives > 0)exitWith{};
	// private _excluded = 0-(owner _man);
	private _title    = "ALERT:";
	private _text     = [name _man, " Has been eliminated"] joinString "";
	private _icon     = "pattysMod\images\Dead4.paa";
	[
		true,
		_title,
		_text,
		_icon

	] remoteExecCall ["PTTY_fnc_livesLeftNotification", 0];

}];