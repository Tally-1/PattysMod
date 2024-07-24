private _timeSinceLast = time - PSA_lastRespawnDisable;
if(_timeSinceLast < 5)
exitWith{
    "multi respawn-disable blocked" call p_dbg;
    false;
};

private _disabled = PSA_customRespawnsEnabled isEqualTo false;
if(_disabled)
exitWith{
    "Respawn already disabled" call p_dbg;
    false;
};

private _count = 0;
{
    if(typeName _y isEqualTo "HASHMAP")then{
    _y call ["disableRP"];
    _y set  ["status", "deactivated"];

    _count=_count+1;
}} forEach PSA_allRallypoints;

[[_count, " Respawn positions disabled"]] call p_dbg;

PSA_customRespawnsEnabled = false;
PSA_lastRespawnDisable    = time;
publicVariable "PSA_allRallypoints";

true;