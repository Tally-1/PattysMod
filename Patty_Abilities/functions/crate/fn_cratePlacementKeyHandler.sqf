params [
	["_displayOrControl", nil, [displayNull]],
	["_key",              nil,           [0]],
	["_shift",            nil,        [true]],
	["_ctrl",             nil,        [true]],
	["_alt",              nil,        [true]]
];
private _allowedKeys = [1,17,30,31,32,57];
if!(_key in _allowedKeys) exitWith{true};
if(_key isEqualTo 1)      exitWith{[false] call PSA_fnc_endCratePlacement; true};
if(_key isEqualTo 57)     exitWith{[true]  call PSA_fnc_endCratePlacement; true};

false;