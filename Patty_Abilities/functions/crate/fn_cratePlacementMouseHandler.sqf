params [
	["_displayOrControl", nil,[displayNull]],
	["_scroll",           nil,          [0]]
];

if(PSA_ctrl)exitWith{
	[_scroll*0.1] call PSA_fnc_setLocalCrateZ; 
	PSA_ctrl = false;
};

if(_scroll < 0)
exitWith{["subtract"] call PSA_fnc_setLocalCrateDir};

["add"] call PSA_fnc_setLocalCrateDir;

true;