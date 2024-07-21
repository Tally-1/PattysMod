params[
	["_entity",nil,[objNull]]
];
private _type          = typeOf _entity;
private _respawnModule = _type isEqualTo "ModuleRespawnPositionWest_F";
if(_respawnModule)
exitWith{
	PSA_respawnModules pushBackUnique _entity;
	"respawn module spawned in" call p_dbg;
};

true;