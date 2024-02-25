params[
	["_player", nil, [objNull]]
];
private _uid = [_player] call PTTY_fnc_getPlayerUID;

if(_uid in PTTY_adminUIDs)exitWith{true;};

false;