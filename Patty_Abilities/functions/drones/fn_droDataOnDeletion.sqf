params[
    ["_drone",nil,[objNull]],
    ["_reason", nil,      [""]]
];
private _selection = {alive _x && {canMove _x}};
private _allDrones = (missionNamespace getVariable "PSA_specialDrones")select _selection;
private _ownDrones = (_self get "active_drones")select _selection;
private _ownIndex  = _ownDrones find _drone;
private _owner     = _self get "owner";
private _type      = _drone getVariable "PSA_droneType";
private _mines     = _drone getVariable ["PSA_mines",[]];
private _cooldown  = missionNamespace getVariable (["PSA_",_type,"DroneCoolDown"]joinString"");
private _timelimit = round (time+_cooldown);

{deleteVehicle _x}forEach _mines;

_ownDrones deleteAt _ownIndex;
_self call ["globalizeData"];

if("fuel" in toLower _reason)exitWith{ 
    _self get "timeLimits" set [_type, _timelimit];
    _self call ["globalizeData"];
    [_type,_reason, _owner] remoteExec ["PSA_fnc_droneOwnerOnNoFuel", _owner];
};

[_type,_reason] remoteExec ["PSA_fnc_droneDeletionNotification", _owner];

true;