params[
	["_man", nil, [objNull]]
];
private _isMan = [_man]call PTTY_fnc_isRealMan;
if(!_isMan)exitwith{false};

if(PTTY_Debug)exitWith{true};

private _isPlayer = _man in (call BIS_fnc_listPlayers);

_isPlayer;