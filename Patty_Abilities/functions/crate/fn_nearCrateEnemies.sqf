private _zone    = _self get "zone";
private _side    = _self get "side";

private _enemies = [_side, _zone] call PSA_fnc_enemiesInZone;

_enemies;