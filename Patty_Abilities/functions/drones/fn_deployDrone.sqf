params[ 
    ["_owner", nil, [objNull]],
    ["_type",  nil,      [""]]
];
private _pos         = (_owner getVariable "PSA_objectPosDir")#0;
private _dir         = (_owner getVariable "PSA_objectPosDir")#1;
private _droneModel  = [_type] call PSA_fnc_droneTypeToModel;
private _drone       = createVehicle [_droneModel, _pos, [], 0, "CAN_COLLIDE"];
private _droneClient = groupOwner group _owner;
(side _owner) createVehicleCrew _drone;

[_drone, true]          call PSA_fnc_secureObjectOnSpawn;
[_owner, _drone, _type] remoteExecCall ["PSA_fnc_initSpecialDrone",_droneClient];
[true] remoteExecCall ["showUAVFeed", _owner];

_drone engineOn true;

[["Drone deployed by machine ", clientOwner, " on behalf of machine ",_droneClient]]call p_dbg;

true;