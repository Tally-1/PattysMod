params[
    ["_pos",nil,[[]]],
    ["_activate",true,[true]]
];
private _moduleGroup = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull]));
private _module      =  _moduleGroup createUnit ["ModuleRespawnPositionWest_F", _pos, [], 0, "CAN_COLLIDE"];

_module setVariable ["shownotification",false,true];

{_x addCuratorEditableObjects [[_module], true]} forEach allCurators;

if(_activate)then{
    _module setvariable ["BIS_fnc_initModules_disableAutoActivation",false,true];
    [_module] call BIS_fnc_initModules;
};

_module;