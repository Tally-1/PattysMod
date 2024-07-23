params[
	["_pos",nil,[[]]]
];
private _moduleGroup = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull]));
private _module      =  _moduleGroup createUnit ["ModuleRespawnPositionWest_F", _pos, [], 0, "CAN_COLLIDE"];
{_x addCuratorEditableObjects [[_module], true]} forEach allCurators;
_module setvariable ["BIS_fnc_initModules_disableAutoActivation",false,true];

_module;