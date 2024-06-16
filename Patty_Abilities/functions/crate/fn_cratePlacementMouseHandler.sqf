params [
	["_displayOrControl", nil,[displayNull]],
	["_scroll",           nil,          [0]]
];
if(_scroll < 0)exitWith{["subtract"] call PSA_fnc_setLocalCrateDir};

["add"] call PSA_fnc_setLocalCrateDir;

true;