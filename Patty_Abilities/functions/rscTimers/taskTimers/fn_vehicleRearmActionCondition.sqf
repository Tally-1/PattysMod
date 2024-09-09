params[
	["_crate", nil,[objNull]],
	["_man",   nil,[objNull]]
];
private _vehicle  = [_crate,PSA_vehicleRearmDist,_man] call PSA_fnc_nearFriendlyVehicle;
private _canRearm = !isNil "_vehicle";

_canRearm;