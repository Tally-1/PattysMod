/*
	File: fn_onRespawn.sqf
	Author: Dom
	Description: Handles re-assigning group on player respawn
*/
params [
	["_unit",objNull,[objNull]],
	["_corpse",objNull,[objNull]]
];
private _oldRole = _corpse getVariable ["PTG_role",""];

if(_oldRole isEqualTo "")
exitWith{call PTG_fnc_initGroupMenu;};

[
	_oldRole,
	true
] remoteExecCall ["PTG_fnc_setupPlayer",_unit];