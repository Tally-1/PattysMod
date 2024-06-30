params [
	["_man",nil,[objNull]]
];
private _posDir = _man getVariable "PSA_cratePosDir";
[_man, _posDir#0, _posDir#1] remoteExecCall ["PSA_fnc_initSpecialCrate",2];

playSound "hintCollapse";

true;