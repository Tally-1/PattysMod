private _crate     = player getVariable ["PSA_myCrate", objNull];
private _canPickup = [player, _crate] call PSA_fnc_canPickupCrate;

_canPickup;