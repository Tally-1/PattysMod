/*
	File: fn_handleDisconnect.sqf
	Author: Dom
	Description: Handles a players disconnection
*/
params ["_unit"];

private _oldSelectionPath = [_unit] call PTG_fnc_removeFromGroup;

[PTG_dynamicGroups,_oldSelectionPath] remoteExecCall ["PTG_fnc_updateGroups",-2,"PTG_DG_JIP"];