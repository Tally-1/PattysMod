params [
	["_unit",           objNull, [objNull]],
	["_selectionPath",  [],           [[]]],
	["_desiredRole",    "",           ["",0]],
	["_isRespawn",      false,      [true]]
];

[
	_desiredRole,
	_isRespawn

] remoteExecCall ["PTG_fnc_setupPlayer",_unit];
[
	PTG_dynamicGroups,
	_oldSelectionPath,
	[],
	_unit

] remoteExecCall ["PTG_fnc_updateGroups",-2,"PTG_DG_JIP"];
