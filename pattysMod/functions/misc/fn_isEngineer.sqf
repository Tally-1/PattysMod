params[
	["_man",nil,[objNull]]
];
private _aceVar = _man getVariable ["ACE_isEngineer",0];
if(_aceVar>0)exitWith{true};

private _isEngineer = _man getUnitTrait "engineer";

_isEngineer;