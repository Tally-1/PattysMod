private _timeSinceLast = time - PSA_lastRespawnEnable;
if(_timeSinceLast < 0.5)exitWith{false};

private _enabled = PSA_customRespawnsEnabled isEqualTo true;
if(_enabled)exitWith{false};

private _count = 0;
{
    if(typeName _y isEqualTo "HASHMAP")then{
    _y call ["enableRP"];
    _y set  ["status", "activated"];
    _count=_count+1;
    
}} forEach PSA_allRallypoints;

for "_i" from 0 to ((count PSA_respawnPositions)-1)do
{
    private _pos    = PSA_respawnPositions#0;
    private _module = [_pos] call PSA_fnc_spawnRespawnModule;
    [_module] call BIS_fnc_initModules;
    PSA_respawnPositions deleteAt 0;
};

PSA_customRespawnsEnabled = true;
PSA_lastRespawnEnable    = time;
publicVariable "PSA_allRallypoints";

true;