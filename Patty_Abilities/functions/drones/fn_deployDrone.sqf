params[
    ["_owner",player,[objNull]],
    ["_type", nil,        [""]]
];
private _pos            = (_owner getVariable "PSA_objectPosDir")#0;
private _dir            = (_owner getVariable "PSA_objectPosDir")#1;
private _droneModel     = [_type] call PSA_fnc_droneTypeToModel;
private _drone          = createVehicle [_droneModel, _pos, [], 0, "CAN_COLLIDE"];

[_drone, true]          call PSA_fnc_secureObjectOnSpawn;
[_owner, _drone, _type] call PSA_fnc_initSpecialDrone;
[true] remoteExecCall ["showUAVFeed", _owner];

_drone engineOn true;

true;