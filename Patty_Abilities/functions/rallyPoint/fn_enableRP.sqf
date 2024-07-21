private _side    = _self get "side";
private _pos     = _self get "position";
private _name    = "Rally point";
private _spawnId = [_side, _pos, _name] call BIS_fnc_addRespawnPosition;

_self set ["enabled",     true];
_self set ["spawnId", _spawnId];


"RP enabled" call p_dbg;