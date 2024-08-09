params [
    ["_pos",      nil,     [[]]],
    ["_activate", true,  [true]],
    ["_3DenType", false, [true]]
];

private _moduleGroup = (group (missionNamespace getVariable ["BIS_functions_mainscope", objNull]));

// Choose module class based on _3DenType parameter
private _moduleClass = if(_3DenType)
then{"ModuleRespawnPosition_F"}
else {"ModuleRespawnPositionWest_F"};

private _module = _moduleGroup createUnit [_moduleClass, _pos, [], 0, "CAN_COLLIDE"];

// Set variables for ModuleRespawnPosition_F if _3DenType is true
if (_3DenType) 
then{_module call PSA_fnc_init3DenSpawnModuleVars}
else{
	_module setVariable ["shownotification", false, true];
	{_x addCuratorEditableObjects [[_module], true]} forEach allCurators;
};

if(_activate)then{
    _module setVariable ["BIS_fnc_initModules_disableAutoActivation", false, true];
    [_module] call BIS_fnc_initModules;
};

_module;