params[
	["_man",    nil,[objNull]],
	["_corpse", nil,[objNull]]
];
private _notAplayer = (_man in allPlayers isEqualTo false && {_corpse in allPlayers isEqualTo false});
if(_notAplayer)exitWith{};

private _uid         = getPlayerUID _man;
private _ownRp       = PSA_allRallypoints get _uid;
private _pos         = getPosATLVisual _man;
private _nearRP      = PSA_allRallypoints call ["getNearest",[_pos]];
private _spawnedOnRp = (!isNil "_nearRP")&&{(_nearRP get "position")distance _man < 5};

if(_spawnedOnRp)   then{_nearRP call ["onRespawn", [_man]]};
if(isNil "_ownRp") exitWith{};

_ownRp set ["owner", _man];
publicVariable "PSA_allRallypoints";

true;