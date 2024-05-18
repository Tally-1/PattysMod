/*
	File: initServer.sqf
	Author: Dom
	Requires: Start the server up
*/
PTG_dynamicGroups = getArray(missionConfigFile >> "Dynamic_Groups" >> "group_setup");
{
	_x params ["","_roles"];
	_x pushBack grpNull;

	private _roleCount = count _roles;
	private _playerArray = [];
	for "_i" from 1 to _roleCount do {
		_playerArray pushBack objNull;
	};
	_x pushBack _playerArray;
} forEach PTG_dynamicGroups;

[PTG_dynamicGroups] remoteExecCall ["PTG_fnc_updateGroups",-2,"PTG_DG_JIP"];

systemChat "Role Manager 0.52";

addMissionEventHandler ["HandleDisconnect",PTG_fnc_handleDisconnect];