params[
    ["_drone",nil,[objNull]]
];
private _drones    = _self get "active_drones";
private _index     = _drones find _drone;
private _type      = _drone getVariable "PSA_droneType";
private _owner     = _self get "owner";
private _cooldown  = missionNamespace getVariable (["PSA_",_type,"DroneCoolDown"]joinString"");// PSA_reconDroneCoolDown;
private _timelimit = round (time+_cooldown);

_self get "timeLimits" set [_type, _timelimit];
_drones deleteAt _index;
_self call ["globalizeData"];

[_drone,_owner] remoteExec ["PSA_fnc_droneOwnerOnDestruction", _owner];

if(_type isEqualTo "bomb")
then{[_drone] call PSA_fnc_bombDroneDestroyed};

true;