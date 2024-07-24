private _side    = _self get "side";
private _pos     = _self get "position";
private _name    = _self get "name";
private _spawnId = [_side, _pos] call BIS_fnc_addRespawnPosition;

_self set ["enabled",     true];
_self set ["spawnId", _spawnId];


"RP enabled" call p_dbg;