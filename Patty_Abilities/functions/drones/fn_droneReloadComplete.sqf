params[
    ["_drone",nil,[objNull]]
];
private _soundObject = _drone getVariable "PSA_soundObject";
private _type        = _drone getVariable "PSA_droneType";
private _owner       = name (_drone getVariable ["PSA_droneOwner",objNull]);
[
    _drone, 
    PSA_combatDroneGun,
    PSA_combatDroneMagazine

] call PSA_fnc_setDroneWeapon;

[[_owner,"'s drone was reloaded"]] call p_dbg;

detach        _soundObject;
deleteVehicle _soundObject;

_drone setVariable ["PSA_soundObject",nil,true];
_drone engineOn true;

true;