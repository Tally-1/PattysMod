private _spawnId = _self get "spawnId";

_spawnId call BIS_fnc_removeRespawnPosition; 
_spawnId =  [sideUnknown, -1];

_self set ["enabled",    false];
_self set ["spawnId", _spawnId];


"RP disabled" call p_dbg;