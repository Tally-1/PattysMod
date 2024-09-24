params[
    ["_owner", nil,[objNull]],
    ["_drone", nil,[objNull]],
	["_type", nil,     [""]]
];

private _ownerData = _owner getVariable "PSA_droneOwnerData";
private _side      = side _owner;

[_drone] call PSA_fnc_specialDroneEvents;

_side createVehicleCrew     _drone;
_owner connectTerminalToUAV _drone;
_drone setVariable["PSA_droneType",  _type, true];
_drone setVariable["PSA_droneOwner", _owner, true]; // Remember to transfer this variable on respawn.

if(isNil "_ownerData")
then{_ownerData = [_owner] call PSA_fnc_initDroneOwnerData};

_ownerData call ["addDrone",[_drone, _type]];