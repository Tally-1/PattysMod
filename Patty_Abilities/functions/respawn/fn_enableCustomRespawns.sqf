private _timeSinceLast = time - PSA_lastRespawnEnable;
if(_timeSinceLast < 5)exitWith{false};

private _enabled = PSA_customRespawnsEnabled isEqualTo true;
if(_enabled)exitWith{false};

PSA_lastRespawnEnable = time;

{if(typeName _y isEqualTo "HASHMAP")then{

    _y call ["enableRP"];
    _y set  ["status", "activated"];    
	sleep 0.1;
	
}} forEach PSA_allRallypoints;


PSA_customRespawnsEnabled = true;
PSA_lastRespawnEnable    = time;
publicVariable "PSA_allRallypoints";

[] spawn{
	sleep 1;
	PSA_mobileSpawnPoints call ["updateAll"];
};

true;