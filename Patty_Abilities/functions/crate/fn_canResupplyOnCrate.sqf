params[
	["_crate",nil,[objNull]],
	["_man",nil,[objNull]]
];
private _zone = [getPosATLVisual _crate, PSA_crateProxDestrDist];
private _enemies = count ([_man,_zone] call PSA_fnc_enemiesInZone) > 0;

// If there are any enemies nearby the action is denied.
if(_enemies)exitWith{false};

true;