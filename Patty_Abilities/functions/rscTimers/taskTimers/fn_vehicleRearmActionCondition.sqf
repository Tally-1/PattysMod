params[
	["_crate", nil,[objNull]],
	["_man",   nil,[objNull]]
];
private _vehicle  = [_crate,PSA_vehicleRearmDist,_man] call PSA_fnc_nearFriendlyVehicle;
if(isNil "_vehicle")exitWith{false};

private _zone     = [getPosATLVisual _crate, PSA_crateProxDestrDist];
private _enemies  = count ([_man,_zone] call PSA_fnc_enemiesInZone) > 0;
if(_enemies)exitWith{false};

true;