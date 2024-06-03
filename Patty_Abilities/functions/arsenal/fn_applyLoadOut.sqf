params[
	["_man",nil,[objNull]]
];
private _loadOut = _man getVariable ["PSA_loadOut", getUnitLoadout _man];
_man setUnitLoadout _loadOut;

true;