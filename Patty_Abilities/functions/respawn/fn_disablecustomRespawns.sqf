private _timeSinceLast = time - PSA_lastRespawnDisable;
if(_timeSinceLast < 0.5)exitWith{false};

private _disabled = PSA_customRespawnsEnabled isEqualTo false;
if(_disabled)exitWith{false};

private _count = 0;
{
	if(typeName _y isEqualTo "HASHMAP")then{
	_y call ["disableRP"];
	_y set  ["status", "deactivated"];

	_count=_count+1;
}} forEach PSA_allRallypoints;

for "_i" from 0 to ((count PSA_respawnModules)-1)do
{
	private _module = PSA_respawnModules#0;

	PSA_respawnPositions pushBackUnique (getPosATLVisual _module);

	deleteVehicle _module;

	PSA_respawnModules deleteAt 0;
	_count=_count+1;
};

[[_count, " Respawn positions disabled"]] call p_dbg;

PSA_customRespawnsEnabled = false;
PSA_lastRespawnDisable    = time;
publicVariable "PSA_allRallypoints";

true;