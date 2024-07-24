params[
	["_entity",nil,[objNull]]
];
private _type          = typeOf _entity;
private _respawnModule = _type isEqualTo "ModuleRespawnPositionWest_F";

if(_respawnModule)
exitWith{
	_entity setVariable ["shownotification",false,true];
	[_entity] spawn PSA_fnc_initRespawnModuleRP;
};

true;