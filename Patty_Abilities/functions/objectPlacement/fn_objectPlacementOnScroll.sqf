params [
	["_displayOrControl", nil,[displayNull]],
	["_scroll",           nil,          [0]]
];

if(PSA_ctrl)exitWith{
	[_scroll*0.1] call PSA_fnc_setPlObjectZ; 
	PSA_ctrl = false;
};

if(_scroll < 0)
exitWith{["subtract"] call PSA_fnc_setPlObjectDir};

["add"] call PSA_fnc_setPlObjectDir;

true;