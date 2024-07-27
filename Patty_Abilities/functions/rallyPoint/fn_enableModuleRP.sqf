private ["_module"];
private _side        = _self get "side";
private _pos         = _self get "position";
private _uid         = _self get "ownerId";
private _nearModules = _pos nearEntities ["ModuleRespawnPositionWest_F", 10];

{deleteVehicle _x} forEach _nearModules;

// Forced unscheduled execution in order to set variables before the "initRespawnModuleRP" function handles
// the module.
isNil{
private _moduleGroup = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull]));
_module = _moduleGroup createUnit ["ModuleRespawnPositionWest_F", _pos, [], 0, "CAN_COLLIDE"];
_module setVariable ["shownotification",false,true];
_module setVariable ["PSA_RPId",_uid,true];
};

_module setvariable ["BIS_fnc_initModules_disableAutoActivation",false,true];
[_module] spawn BIS_fnc_initModules;

{_x addCuratorEditableObjects [[_module], true]} forEach allCurators;

_self set ["enabled",     true];

"RP Module enabled" call p_dbg;